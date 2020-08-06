
Given(/^I get to the registration form$/) do
  @screens.home_screen.click_dot_menu
  @screens.home_screen.click_login
  @screens.login_screen.click_register_now
end

When(/^I input random user credentials in registration form$/) do
  first_name = "name#{rand(1..99999)}"
  last_name = "lastname#{rand(1..99999)}"
  full_name = first_name + " " + last_name
  @email = "hurre#{rand(1..99999)}@email.com"
  @password = "Parole123"

  @screens.register_screen.set_full_name(full_name)
  @screens.register_screen.set_email(@email)
  @screens.register_screen.set_password(@password)
  @screens.register_screen.set_confirm_password(@password)
end

And(/^I submit the registration details$/) do
  @screens.register_screen.click_sign_up
end

And(/^The login screen is displayed$/) do
  @screens.login_screen.is_login_screen_displayed
end

And(/^I input the created account credentials$/) do
  @screens.login_screen.set_email(@email)
  @screens.login_screen.set_password(@password)
end

And(/^I input and existing account credentials$/) do
  @screens.login_screen.set_email("test1111@gmail.com")
  @screens.login_screen.set_password("testPassword1")
end

And(/^I submit the login details$/) do
  @screens.login_screen.click_login
end

Then(/^The home screen is displayed$/) do
  @screens.home_screen.is_main_logo_displayed
end

Given(/^I get to the login screen$/) do
  @screens.home_screen.click_dot_menu
  @screens.home_screen.click_login
end
