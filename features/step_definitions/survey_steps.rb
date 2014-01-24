When(/^a user creates a new survey$/) do
  visit("/surveys/new")
  fill_in("Name", with: "Bob")
  click_button("Create Survey")

end

Then(/^they see the survey they created$/) do
  visit("/surveys/1")
  page.should have_content("Bob")
end

Then(/^the survey is listed on the survey index$/) do
  visit("/surveys")
  page.should have_content("Bob")
end

Given(/^a user has created a survey$/) do
  @survey = FactoryGirl.create(:survey)
end

When(/^a user edits the survey$/) do
  visit("/surveys/1/edit")

  fill_in("Name", with: "Bob")
  click_button("Update Survey")
end

Then (/^they see their changes$/) do
  visit("/surveys/1")
  page.should have_content("Bob")
end