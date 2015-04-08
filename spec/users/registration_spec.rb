require 'spec_helper'

feature "Registration", js: true do
  scenario "with valid inputs" do
    visit "api/auth/sign_up"

    email, password = "test@test.com", "password"
    fill_in "Email", with: email
    fill_in "Password", with: password
    fill_in "Password confirmation", with: password
    click_on "Register"

    login_page = LoginPage.new
    login_page.visit
    login_page.sign_in(email, password)
    expect(page).to have_content('Sign out')
  end
end
