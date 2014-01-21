require 'spec_helper'

describe SurveysController do

  let(:valid_attributes) { FactoryGirl.attributes_for(:survey)}

  describe "GET new" do
    it "assigns a new survey as @survey" do
      get :new
      assigns(:survey).should be_a_new(survey)
    end
  end

end
