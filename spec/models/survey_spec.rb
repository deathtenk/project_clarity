require 'spec_helper'

describe Survey do
  it "has a valid factory" do
    @survey = FactoryGirl.build(:survey)
    
    @survey.should be_valid
  end
  
  it "is not valid without a name" do
    @survey = FactoryGirl.build(:survey, name: nil)
    
    @survey.should_not be_valid
  end
end
