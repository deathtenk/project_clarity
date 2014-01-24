require "spec_helper"

describe "surveys/edit.html.erb" do
  it "displays a form for a new survey" do
    assign(:survey, FactoryGirl.build(:survey))

    render

    rendered.should have_selector("form.new_survey")
  end

  it "has a field for the survey name" do
    assign(:survey, FactoryGirl.build(:survey))


    render

    rendered.should have_content "Name"
    rendered.should have_selector("form input#survey_name")

  end

  it "has a update survey button" do
    assign(:survey, FactoryGirl.build(:survey))

    render

    rendered.should have_selector("input.btn[value=\"Update\ Survey\"]", text: "")
  end

end