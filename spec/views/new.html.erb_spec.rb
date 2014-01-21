require "spec_helper"

describe "surveys/new.html.erb" do
  it "displays a form for a new survey" do
    
    render

    rendered.should have_content("New Survey")
    rendered.should have_selector("form.new-survey")
  end
  
  it "has a field for the survey name" do
    
    render
    
    rendered.should have_selector("form input.name")
    
  end
  
  it "has a save button" do
    render
    
    rendered.should have_content("Save")
  end

end