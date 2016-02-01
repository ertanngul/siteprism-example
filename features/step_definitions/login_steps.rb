
Given(/^I am on login page$/) do
   @app.login_in.load
end

When(/^I enter "([^"]*)" and "([^"]*)" as user, password$/) do |user, password|
  @app.login_in.login user, password
end

Then(/^I am successfully login as "([^"]*)"$/) do |name|
  expect(@app.home).to be_displayed
  sleep 3
  expect(@app.home).to have_customer_name :text => name
end

When(/^I try to login with empty email and password$/) do
  @app.login_in.login_btn.click
end

Then(/^site gives warning message for empty email and password$/) do
  expect(@app.login_in).to have_user_textfield_error_message :text => "Lütfen E-posta adresini boş bırakmayın"
  expect(@app.login_in).to have_password_textfield_error_message :text => "Lütfen Parolayı boş bırakmayın"
end

And(/^I can't login to site$/) do
  expect(@app.login_in).to be_displayed
end
