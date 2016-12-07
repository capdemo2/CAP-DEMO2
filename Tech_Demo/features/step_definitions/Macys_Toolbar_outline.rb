Then(/^User Hover Over (.*)$/) do |toolbar|
#  on(MacysHomePage).(toolbar).when_present.hover

 # @browser.link(text:toolbar).when_present.click
  @browser.link(text:toolbar).when_present.hover
  sleep 3
end

Then(/^User select (.*) form the menu$/) do |items|

  #on(MacysHomePage).(items).when_present.click

  @browser.li(text:items).when_present(60).click
  sleep 5
end

