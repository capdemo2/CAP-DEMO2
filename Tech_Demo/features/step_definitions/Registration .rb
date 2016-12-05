Given(/^User navigate to the Macys Home Page$/) do
  visit MacysHomePage
end

Then(/^User click on the My Account link$/) do
  on(MacysHomePage).click_on_my_account_link
end

And(/^user clicks on Create account button$/) do
  on(MacysHomePage).click_create_btn
end

Then(/^user fills out all the information to create account$/) do
  on(MacysHomePage).enter_profile_info
  on(MacysHomePage).enter_random_email


end

And(/^user completes registration$/) do
  on(MacysHomePage).click_create_profile_btn
end

Then(/^user verifies that Registration is completed$/) do
  on(MacysHomePage).click_create_btn
end