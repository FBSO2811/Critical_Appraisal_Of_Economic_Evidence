class QuestionsController < ApplicationController
  before_action :set_question, only: [:show, :edit, :update, :destroy]

  def flag
  end


  def replies
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])

    # INCOME
    @replies_paper_income_low = Question.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "-1").length
    @replies_paper_income_middle = Question.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_income_high = Question.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_income_total = @replies_paper_income_low + @replies_paper_income_middle + @replies_paper_income_high

    @replies_paper_income_low_p = ((@replies_paper_income_low.to_f/@replies_paper_income_total.to_f)*100)
    @replies_paper_income_middle_p = ((@replies_paper_income_middle.to_f/@replies_paper_income_total.to_f)*100)
    @replies_paper_income_high_p =(@replies_paper_income_high.to_f/@replies_paper_income_total.to_f)*100


    # TYPE
    @replies_paper_type_cua = Question.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_type_cea = Question.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_type_cba = Question.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_type_cca = Question.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_type_cma = Question.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_type_total = @replies_paper_type_cua + @replies_paper_type_cea + @replies_paper_type_cba + @replies_paper_type_cca + @replies_paper_type_cma

    @replies_paper_type_cua_p = (@replies_paper_type_cua.to_f/@replies_paper_type_total.to_f)*100
    @replies_paper_type_cea_p = (@replies_paper_type_cea.to_f/@replies_paper_type_total.to_f)*100
    @replies_paper_type_cba_p = (@replies_paper_type_cba.to_f/@replies_paper_type_total.to_f)*100
    @replies_paper_type_cca_p = (@replies_paper_type_cca.to_f/@replies_paper_type_total.to_f)*100
    @replies_paper_type_cma_p = (@replies_paper_type_cma.to_f/@replies_paper_type_total.to_f)*100



    # STUDY
    @replies_paper_study_rct = Question.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_study_quasi = Question.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_study_modelling = Question.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_study_observational = Question.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_study_mixed = Question.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_study_total = @replies_paper_study_rct+@replies_paper_study_quasi+@replies_paper_study_modelling+@replies_paper_study_observational+@replies_paper_study_mixed

    @replies_paper_study_rct_p = (@replies_paper_study_rct.to_f/@replies_paper_study_total.to_f)*100
    @replies_paper_study_quasi_p = (@replies_paper_study_quasi.to_f/@replies_paper_study_total.to_f)*100
    @replies_paper_study_modelling_p = (@replies_paper_study_modelling.to_f/@replies_paper_study_total.to_f)*100
    @replies_paper_study_observational_p = (@replies_paper_study_observational.to_f/@replies_paper_study_total.to_f)*100
    @replies_paper_study_mixed_p = (@replies_paper_study_mixed.to_f/@replies_paper_study_total.to_f)*100


    # MODELLING
    @replies_paper_modelling_tree = Question.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_modelling_markov = Question.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_modelling_patient = Question.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_modelling_dynamic = Question.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_modelling_other = Question.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_modelling_total = @replies_paper_modelling_tree+@replies_paper_modelling_markov+@replies_paper_modelling_patient+@replies_paper_modelling_dynamic+@replies_paper_modelling_other

    @replies_paper_modelling_tree_p = (@replies_paper_modelling_tree.to_f/@replies_paper_modelling_total.to_f)*100
    @replies_paper_modelling_markov_p = (@replies_paper_modelling_markov.to_f/@replies_paper_modelling_total.to_f)*100
    @replies_paper_modelling_patient_p = (@replies_paper_modelling_patient.to_f/@replies_paper_modelling_total.to_f)*100
    @replies_paper_modelling_dynamic_p = (@replies_paper_modelling_dynamic.to_f/@replies_paper_modelling_total.to_f)*100
    @replies_paper_modelling_other_p = (@replies_paper_modelling_other.to_f/@replies_paper_modelling_total.to_f)*100

    # PERSPECTIVE A
    @replies_paper_perspective_a_social = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_perspective_a_provider = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_perspective_a_program = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_perspective_a_patient = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_perspective_a_payer = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_perspective_a_mixed = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "5").length
    @replies_paper_perspective_a_total = @replies_paper_perspective_a_social+@replies_paper_perspective_a_provider+@replies_paper_perspective_a_program+@replies_paper_perspective_a_patient+@replies_paper_perspective_a_payer+@replies_paper_perspective_a_mixed

    @replies_paper_perspective_a_social_p = (@replies_paper_perspective_a_social.to_f/@replies_paper_perspective_a_total.to_f)*100
    @replies_paper_perspective_a_provider= (@replies_paper_perspective_a_provider.to_f/@replies_paper_perspective_a_total.to_f)*100
    @replies_paper_perspective_a_provider = (@replies_paper_perspective_a_provider.to_f/@replies_paper_perspective_a_total.to_f)*100
    @replies_paper_perspective_a_patient= (@replies_paper_perspective_a_patient.to_f/@replies_paper_perspective_a_total.to_f)*100
    @replies_paper_perspective_a_payer= (@replies_paper_perspective_a_payer.to_f/@replies_paper_perspective_a_total.to_f)*100
    @replies_paper_perspective_a_mixed= (@replies_paper_perspective_a_mixed.to_f/@replies_paper_perspective_a_total.to_f)*100


    # PERSPECTIVE B
    @replies_paper_perspective_r_social = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_perspective_r_provider = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_perspective_r_program = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_perspective_r_patient = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_perspective_r_payer = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_perspective_r_mixed = Question.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "5").length
    @replies_paper_perspective_r_total = @replies_paper_perspective_r_social+@replies_paper_perspective_r_provider+@replies_paper_perspective_r_program+@replies_paper_perspective_r_patient+@replies_paper_perspective_r_payer+@replies_paper_perspective_r_mixed

    @replies_paper_perspective_r_social_p = (@replies_paper_perspective_r_social.to_f/@replies_paper_perspective_r_total.to_f)*100
    @replies_paper_perspective_r_provider= (@replies_paper_perspective_r_provider.to_f/@replies_paper_perspective_r_total.to_f)*100
    @replies_paper_perspective_r_provider = (@replies_paper_perspective_r_provider.to_f/@replies_paper_perspective_r_total.to_f)*100
    @replies_paper_perspective_r_patient= (@replies_paper_perspective_r_patient.to_f/@replies_paper_perspective_r_total.to_f)*100
    @replies_paper_perspective_r_payer= (@replies_paper_perspective_r_payer.to_f/@replies_paper_perspective_r_total.to_f)*100
    @replies_paper_perspective_r_mixed= (@replies_paper_perspective_r_mixed.to_f/@replies_paper_perspective_r_total.to_f)*100

    # SENSITIVITY
    @replies_paper_sensitibity_one = Question.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_sensitibity_multi = Question.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_sensitibity_probabilistic = Question.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_sensitibity_not = Question.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_sensitibity_cma = Question.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_sensitibity_total = @replies_paper_sensitibity_one+@replies_paper_sensitibity_multi+@replies_paper_sensitibity_probabilistic+@replies_paper_sensitibity_not+@replies_paper_sensitibity_cma

    @replies_paper_sensitibity_one_p = (@replies_paper_sensitibity_one.to_f/@replies_paper_sensitibity_total.to_f)*100
    @replies_paper_sensitibity_multi_p = (@replies_paper_sensitibity_multi.to_f/@replies_paper_sensitibity_total.to_f)*100
    @replies_paper_sensitibity_probabilistic_p = (@replies_paper_sensitibity_probabilistic.to_f/@replies_paper_sensitibity_total.to_f)*100
    @replies_paper_sensitibity_not_p = (@replies_paper_sensitibity_not.to_f/@replies_paper_sensitibity_total.to_f)*100
    @replies_paper_sensitibity_cma_p  = (@replies_paper_sensitibity_cma.to_f/@replies_paper_sensitibity_total.to_f)*100

    # DATE/TIME
    @replies_paper_date_one = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_date_ten = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_date_above = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_date_not = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_date_total = @replies_paper_date_one+@replies_paper_date_ten+@replies_paper_date_above+@replies_paper_date_not

    @replies_paper_date_one_p = (@replies_paper_date_one.to_f/@replies_paper_date_total.to_f)*100
    @replies_paper_date_ten_p = (@replies_paper_date_ten.to_f/@replies_paper_date_total.to_f)*100
    @replies_paper_date_above_p = (@replies_paper_date_above.to_f/@replies_paper_date_total.to_f)*100
    @replies_paper_date_not_p = (@replies_paper_date_not.to_f/@replies_paper_date_total.to_f)*100

    # OUTCOME
    @replies_paper_outcome_qaly = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_outcome_natural = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_outcome_process = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_outcome_monetary = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_outcome_total = @replies_paper_outcome_qaly +@replies_paper_outcome_natural+@replies_paper_outcome_process+@replies_paper_outcome_monetary

    @replies_paper_outcome_qaly_p = (@replies_paper_outcome_qaly.to_f/@replies_paper_outcome_total.to_f)*100
    @replies_paper_outcome_natural_p = (@replies_paper_outcome_natural.to_f/@replies_paper_outcome_total.to_f)*100
    @replies_paper_outcome_process_p = (@replies_paper_outcome_process.to_f/@replies_paper_outcome_total.to_f)*100
    @replies_paper_outcome_monetary_p = (@replies_paper_outcome_monetary.to_f/@replies_paper_outcome_total.to_f)*100


    # COST
    @replies_paper_cost_medical = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_cost_non = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_cost_indirect = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_cost_intangible = Question.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_cost_total = @replies_paper_cost_medical + @replies_paper_cost_non + @replies_paper_cost_indirect + @replies_paper_cost_intangible

    @replies_paper_cost_medical_p = (@replies_paper_cost_medical.to_f/@replies_paper_cost_total.to_f)*100
    @replies_paper_cost_non_p = (@replies_paper_cost_non.to_f/@replies_paper_cost_total.to_f)*100
    @replies_paper_cost_indirect_p = (@replies_paper_cost_indirect.to_f/@replies_paper_cost_total.to_f)*100
    @replies_paper_cost_intangible_p = (@replies_paper_cost_intangible.to_f/@replies_paper_cost_total.to_f)*100

    #DATA
    @replies_paper_data_primary = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_data_secondary = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_data_mixed = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_data_monetary = Question.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_data_total = @replies_paper_data_primary +@replies_paper_data_secondary+@replies_paper_data_mixed+@replies_paper_data_monetary

    @replies_paper_data_primary_p = (@replies_paper_data_primary.to_f/@replies_paper_data_total.to_f) *100
    @replies_paper_data_secondary_p = (@replies_paper_data_secondary.to_f/@replies_paper_data_total.to_f) *100
    @replies_paper_data_mixed_p = (@replies_paper_data_mixed.to_f/@replies_paper_data_total.to_f) *100
    @replies_paper_data_monetary_p = (@replies_paper_data_monetary.to_f/@replies_paper_data_total.to_f) *100


    @flag = @replies_paper_income_total+@replies_paper_type_total+@replies_paper_study_total+@replies_paper_modelling_total+@replies_paper_perspective_a_total+@replies_paper_perspective_r_total+@replies_paper_sensitibity_total+@replies_paper_date_total+@replies_paper_outcome_total+@replies_paper_cost_total+@replies_paper_data_total
  end

  def paper_download
    @replies_paper = Question.where("project_id = ? AND paper_id = ?", params[:project_id], params[:paper_id])
    respond_to do |format|
       format.xlsx {render xlsx: 'paper_download', filename: "paper_excel.xlsx"}
    end
  end


  def index
    @questions = Question.all
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])
    @question = Question.new
  end


  def edit
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])
    @question = Question.find(params[:id])

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
    if @question.update(question_params)
      redirect_to projects_path
    else
      flash[:alert] = "You have to update all questions / No question has to be blank"
      render :new
    end

    # respond_to do |format|
    #   if @question.update(question_params)
    #     format.html { redirect_to @question, notice: 'Question was successfully updated.' }
    #     format.json { render :show, status: :ok, location: @question }
    #   else
    #     format.html { render :edit }
    #     format.json { render json: @question.errors, status: :unprocessable_entity }
    #   end
    # end
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
