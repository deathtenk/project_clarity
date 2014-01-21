require "spec_helper"

describe "surveys/new.html.erb" do
  it "displays a form for a new survey" do
    assign(:survey, Survey.new)
    
    render

    rendered.should have_selector("form.new_survey")
  end
  
  it "has a field for the survey name" do
    assign(:survey, Survey.new)
    
    
    render
    
    rendered.should have_content "Name"
    rendered.should have_selector("form input#survey_name")
    
  end
  
  it "has a save button" do
    assign(:survey, Survey.new)
    
    render
    
    rendered.should have_button("Save")
  end

end