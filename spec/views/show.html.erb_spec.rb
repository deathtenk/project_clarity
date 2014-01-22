require "spec_helper"

describe "surveys/show.html.erb" do
  it "displays the survey name" do
    assign(:survey, Survey.new(name: "How do you like me now?"))

    render

    rendered.should have_content("How do you like me now?")
  end

end