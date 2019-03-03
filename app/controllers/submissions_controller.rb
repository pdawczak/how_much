class SubmissionsController < ApplicationController
  before_action :set_submission, only: [:show, :calculate, :was_correct]

  # GET /submissions
  # GET /submissions.json
  def index
    @submissions = Submission.all
  end

  # GET /submissions/1
  # GET /submissions/1.json
  def show
  end

  # GET /submissions/new
  def new
    @submission = Submission.new
  end

  # GET /submissions/1/edit
  def edit
  end

  # POST /submissions
  # POST /submissions.json
  def create
    @submission = Submission.new(submission_params)

    if @submission.valid?
      Ml.classify(@submission)
      @submission.save
      redirect_to calculate_submission_path(@submission) 
    else
      render :new
    end
  end

  def was_correct
    was_correct = params[:submission][:was_correct] == "true"
    @submission.update_attribute(:was_correct, was_correct)
    redirect_to @submission
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_submission
      @submission = Submission.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def submission_params
      params.require(:submission).permit(:education, :hours_per_week, :capital_gain, :male)
    end
end
