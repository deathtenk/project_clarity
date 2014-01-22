class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end

  def show
    @survey = Survey.find(params[:id])
  end

  def new
    @survey = Survey.new
  end

  def create
    @survey = Survey.new(survey_params)
    if @survey.save
      redirect_to @survey, :notice => "Your survey was saved"
    else
      render "new"
    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  def update
    @survey = Survey.find(params[:id])

    if @survey.update_attributes(survey_params)
      redirect_to @survey, :notice => "your post has been updated"
    else
      render "edit", :notice => "there was a problem"
    end
  end

  def destroy
  end

  private
    def survey_params
      params.require(:survey).permit(:name)
    end
end
