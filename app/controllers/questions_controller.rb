class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy, :new_condesend]

  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    # @paper = Paper.find(params[:paper_id])
    @question = Question.new
  end


  def edit
  end


  def create
    @question = Question.new(question_params)
    @question.project = Project.find(params[:project_id])
    @question.paper = Paper.find(params[:paper_id])
    if @question.save
      redirect_to projects_path
    else
      flash[:alert] = "You have to answer all questions"
      render :new
    end
  end

  def update
    respond_to do |format|
      if @question.update(question_params)
        format.html { redirect_to @question, notice: 'Question was successfully updated.' }
        format.json { render :show, status: :ok, location: @question }
      else
        format.html { render :edit }
        format.json { render json: @question.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @question.destroy
    respond_to do |format|
      format.html { redirect_to questions_url, notice: 'Question was successfully destroyed.' }
      format.json { head :no_content }
    end
  end


  private
    # Use callbacks to share common setup or constraints between actions.
    def set_question
      @question = Question.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def question_params
      params.require(:question).permit(:user_id, :paper_id, :project_id, :type, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, :question_8, :question_9, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_18, :question_19, :question_20, :question_21, :question_22, :question_23, :question_24, :question_25, :question_26, :question_27, :question_28,
        :question_content_year, :question_content_income,
        :question_content_study, :question_content_modelling, :question_content_perspective_a, :question_content_perspective_r, :question_content_sensitivity, :question_content_type, :question_content_outcome, :question_content_intervention,
        :question_content_data, :question_content_sample, :question_content_description, :question_content_nation, :question_content_cost)
    end
end
