When(/^I navigate to the home page$/) do
  @app.home.load
end

Then(/^I can find all components$/) do
  expect(@app.home).to have_registration_page_link
  expect(@app.home).to have_login_page_link
end
