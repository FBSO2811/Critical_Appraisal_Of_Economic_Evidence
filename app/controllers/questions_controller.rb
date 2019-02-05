class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy, :statistics]


  def replies
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])
    # @replies = Question.where("project_id = ? AND paper_id = ?", params[:project_id], params[:paper_id])

    # all_question_1 = []

    # @replies.map do |reply|
    #   all_question_1 << reply.question_1.to_i
    # end

    # na_question_1 = all_question_1.count(-1)
    # no_question_1 = all_question_1.count(0)
    # maybe_question_1 = all_question_1.count(0.5)
    # yes_question_1 = all_question_1.count(1)

    # len_question_1 = all_question_1.length

    # stat_na_question_1 = na_question_1 / len_question_1
    @replies_project = Question.where("project_id = ?", params[:project_id])

    @replies_project_total = Question.where("project_id = ?", params[:project_id]).length

    @replies_project_NA_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:project_id], "1").length

    @replies_project_NA_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:project_id], "1").length

    @replies_project_NA_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:project_id], "1").length

    @replies_project_NA_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:project_id], "1").length

    @replies_project_NA_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:project_id], "1").length

    @replies_project_NA_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:project_id], "1").length

    @replies_project_NA_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:project_id], "1").length

    @replies_project_NA_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:project_id], "1").length

    @replies_project_NA_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:project_id], "1").length

    @replies_project_NA_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:project_id], "1").length

    @replies_project_NA_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:project_id], "1").length

    @replies_project_NA_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:project_id], "1").length

    @replies_project_NA_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:project_id], "1").length

    @replies_project_NA_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:project_id], "1").length

    @replies_project_NA_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:project_id], "1").length

    @replies_project_NA_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:project_id], "1").length

    @replies_project_NA_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:project_id], "1").length

    @replies_project_NA_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:project_id], "1").length

    @replies_project_NA_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:project_id], "1").length

    @replies_project_NA_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:project_id], "1").length

    @replies_project_NA_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:project_id], "1").length

    @replies_project_NA_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:project_id], "1").length

    @replies_project_NA_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:project_id], "1").length

    @replies_project_NA_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:project_id], "1").length

    @replies_project_NA_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:project_id], "1").length

    @replies_project_NA_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:project_id], "1").length

    @replies_project_NA_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:project_id], "-1").length
    @replies_project_NO_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:project_id], "0").length
    @replies_project_MAYBE_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:project_id], "0.5").length
    @replies_project_YES_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:project_id], "1").length


  end

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
      flash[:alert] = "Complete all the fields !"
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
      params.require(:question).permit(:user_id, :paper_id, :project_id, :type, :question_1, :question_2, :question_3, :question_4, :question_5, :question_6, :question_7, :question_8, :question_9, :question_10, :question_11, :question_12, :question_13, :question_14, :question_15, :question_16, :question_17, :question_18, :question_19, :question_20, :question_21, :question_22, :question_23, :question_24, :question_25, :question_26, :question_27, :question_28)
    end
end
