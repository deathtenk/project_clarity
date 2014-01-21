class SurveysController < ApplicationController
  def index
    @surveys = Survey.all
  end

  def show
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to surveys_path, :notice => "Your survey was saved"
    else
      render "new"
    end
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end

  def edit
  end

  def update
  end

  def destroy
  end
end
