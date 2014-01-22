require 'spec_helper'

describe SurveysController do

  let(:valid_attributes) { FactoryGirl.attributes_for(:survey)}

  describe "GET new" do
    it "assigns a new survey as @survey" do
      get :new
      assigns(:survey).should be_a_new(Survey)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new survey" do
        #create_association
        expect {
          post :create, { survey: valid_attributes }
        }.to change(Survey, :count).by(1)
      end

      it "assigns a newly created survey as @survey" do
        post :create, { survey: valid_attributes }
        assigns(:survey).should be_a(Survey)
        assigns(:survey).should be_persisted
      end

      it "redirects to the created survey" do
        post :create, { survey: valid_attributes }
        response.should redirect_to(Survey.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved survey as @survey" do
        Survey.any_instance.stub(:save).and_return(false)
        post :create, {:survey => valid_attributes}
        assigns(:survey).should be_a_new(Survey)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        Survey.any_instance.stub(:save).and_return(false)
        post :create, {:survey => valid_attributes }
        response.should render_template("new")
      end
    end
  end

  describe "GET show" do
    it "assigns the requested survey as @survey" do
      survey = FactoryGirl.create(:survey)
      get :show, {:id => survey.to_param}
      assigns(:survey).should eq(survey)
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested survey" do
        survey = Survey.create! valid_attributes
        # Assuming there are no other surveys in the database, this
        # specifies that the Survey created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        Survey.any_instance.should_receive(:update_attributes).with(valid_attributes)
        put :update, {:id => survey.to_param, :survey => valid_attributes}
      end

      it "assigns the requested survey as @survey" do
        survey = Survey.create! valid_attributes
        put :update, {:id => survey.to_param, :survey => valid_attributes}
        assigns(:survey).should eq(survey)
      end

      it "redirects to the survey" do
        survey = Survey.create! valid_attributes
        put :update, {:id => survey.to_param, :survey => valid_attributes}
        response.should redirect_to(survey)
      end
    end

    describe "with invalid params" do
      it "assigns the survey as @survey" do
        survey = Survey.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Survey.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey.to_param, :survey => valid_attributes}
        assigns(:survey).should eq(survey)
      end

      it "redirects to the edit action" do
        survey = Survey.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        Survey.any_instance.stub(:save).and_return(false)
        put :update, {:id => survey.to_param, :survey => valid_attributes}
        response.should redirect_to(edit_survey_path(survey))
      end
    end
  end

end
