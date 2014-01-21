When(/^a user creates a new survey$/) do
  visit("/surveys/new")
  fill_in("Name", with: "Bob")
  click_button("Save")
  
end

Then(/^they see the survey they created$/) do
  visit("/surveys/1")
  page.should have_content("Bob")
end

Then(/^the survey is listed on the survey index$/) do
  visit("/surveys")
  page.should have_content("Bob")
end
