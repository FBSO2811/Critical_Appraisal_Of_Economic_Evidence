class ContentquestionsController < ApplicationController
  before_action :set_contentquestion, only: [:show, :edit, :update, :destroy]

  def replies
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])

    # INCOME
    @replies_paper_income_low = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "-1").length
    @replies_paper_income_middle = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_income_high = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_income = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_income_total = @replies_paper_income_low + @replies_paper_income_middle + @replies_paper_income_high

    @replies_paper_income_low_p = ((@replies_paper_income_low.to_f/@replies_paper_income_total.to_f)*100).round(2)
    @replies_paper_income_middle_p = ((@replies_paper_income_middle.to_f/@replies_paper_income_total.to_f)*100).round(2)
    @replies_paper_income_high_p = ((@replies_paper_income_high.to_f/@replies_paper_income_total.to_f)*100).round(2)


    # TYPE
    @replies_paper_type_cua = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_type_cea = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_type_cba = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_type_cca = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_type_cma = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_type = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_type_total = @replies_paper_type_cua + @replies_paper_type_cea + @replies_paper_type_cba + @replies_paper_type_cca + @replies_paper_type_cma

    @replies_paper_type_cua_p = ((@replies_paper_type_cua.to_f/@replies_paper_type_total.to_f)*100).round(2)
    @replies_paper_type_cea_p = ((@replies_paper_type_cea.to_f/@replies_paper_type_total.to_f)*100).round(2)
    @replies_paper_type_cba_p = ((@replies_paper_type_cba.to_f/@replies_paper_type_total.to_f)*100).round(2)
    @replies_paper_type_cca_p = ((@replies_paper_type_cca.to_f/@replies_paper_type_total.to_f)*100).round(2)
    @replies_paper_type_cma_p = ((@replies_paper_type_cma.to_f/@replies_paper_type_total.to_f)*100).round(2)



    # STUDY
    @replies_paper_study_rct = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_study_quasi = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_study_modelling = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_study_observational = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_study_mixed = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_study = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_study_total = @replies_paper_study_rct+@replies_paper_study_quasi+@replies_paper_study_modelling+@replies_paper_study_observational+@replies_paper_study_mixed

    @replies_paper_study_rct_p = ((@replies_paper_study_rct.to_f/@replies_paper_study_total.to_f)*100).round(2)
    @replies_paper_study_quasi_p = ((@replies_paper_study_quasi.to_f/@replies_paper_study_total.to_f)*100).round(2)
    @replies_paper_study_modelling_p = ((@replies_paper_study_modelling.to_f/@replies_paper_study_total.to_f)*100).round(2)
    @replies_paper_study_observational_p = ((@replies_paper_study_observational.to_f/@replies_paper_study_total.to_f)*100).round(2)
    @replies_paper_study_mixed_p = ((@replies_paper_study_mixed.to_f/@replies_paper_study_total.to_f)*100).round(2)


    # MODELLING
    @replies_paper_modelling_tree = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_modelling_markov = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_modelling_patient = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_modelling_dynamic = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_modelling_other = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_modelling = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_modelling_total = @replies_paper_modelling_tree+@replies_paper_modelling_markov+@replies_paper_modelling_patient+@replies_paper_modelling_dynamic+@replies_paper_modelling_other

    @replies_paper_modelling_tree_p = ((@replies_paper_modelling_tree.to_f/@replies_paper_modelling_total.to_f)*100).round(2)
    @replies_paper_modelling_markov_p = ((@replies_paper_modelling_markov.to_f/@replies_paper_modelling_total.to_f)*100).round(2)
    @replies_paper_modelling_patient_p = ((@replies_paper_modelling_patient.to_f/@replies_paper_modelling_total.to_f)*100).round(2)
    @replies_paper_modelling_dynamic_p = ((@replies_paper_modelling_dynamic.to_f/@replies_paper_modelling_total.to_f)*100).round(2)
    @replies_paper_modelling_other_p = ((@replies_paper_modelling_other.to_f/@replies_paper_modelling_total.to_f)*100).round(2)

    # PERSPECTIVE A
    @replies_paper_perspective_a_social = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_perspective_a_provider = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_perspective_a_program = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_perspective_a_patient = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_perspective_a_payer = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_perspective_a_mixed = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_a = ?", params[:project_id], params[:paper_id], "5").length
    @replies_paper_perspective_a_total = @replies_paper_perspective_a_social+@replies_paper_perspective_a_provider+@replies_paper_perspective_a_program+@replies_paper_perspective_a_patient+@replies_paper_perspective_a_payer+@replies_paper_perspective_a_mixed

    @replies_paper_perspective_a_social_p = ((@replies_paper_perspective_a_social.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)
    @replies_paper_perspective_a_provider= ((@replies_paper_perspective_a_provider.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)
    @replies_paper_perspective_a_provider = ((@replies_paper_perspective_a_provider.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)
    @replies_paper_perspective_a_patient= ((@replies_paper_perspective_a_patient.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)
    @replies_paper_perspective_a_payer= ((@replies_paper_perspective_a_payer.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)
    @replies_paper_perspective_a_mixed= ((@replies_paper_perspective_a_mixed.to_f/@replies_paper_perspective_a_total.to_f)*100).round(2)


    # PERSPECTIVE B
    @replies_paper_perspective_r_social = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_perspective_r_provider = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_perspective_r_program = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_perspective_r_patient = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_perspective_r_payer = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_perspective_r_mixed = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_perspective_r = ?", params[:project_id], params[:paper_id], "5").length
    @replies_paper_perspective_r_total = @replies_paper_perspective_r_social+@replies_paper_perspective_r_provider+@replies_paper_perspective_r_program+@replies_paper_perspective_r_patient+@replies_paper_perspective_r_payer+@replies_paper_perspective_r_mixed

    @replies_paper_perspective_r_social_p = ((@replies_paper_perspective_r_social.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)
    @replies_paper_perspective_r_provider= ((@replies_paper_perspective_r_provider.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)
    @replies_paper_perspective_r_provider = ((@replies_paper_perspective_r_provider.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)
    @replies_paper_perspective_r_patient= ((@replies_paper_perspective_r_patient.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)
    @replies_paper_perspective_r_payer= ((@replies_paper_perspective_r_payer.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)
    @replies_paper_perspective_r_mixed= ((@replies_paper_perspective_r_mixed.to_f/@replies_paper_perspective_r_total.to_f)*100).round(2)

    # SENSITIVITY
    @replies_paper_sensitibity_one = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_sensitibity_multi = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_sensitibity_probabilistic = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_sensitibity_not = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_sensitibity_cma = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_sensitivity = ?", params[:project_id], params[:paper_id], "4").length
    @replies_paper_sensitibity_total = @replies_paper_sensitibity_one+@replies_paper_sensitibity_multi+@replies_paper_sensitibity_probabilistic+@replies_paper_sensitibity_not+@replies_paper_sensitibity_cma

    @replies_paper_sensitibity_one_p = ((@replies_paper_sensitibity_one.to_f/@replies_paper_sensitibity_total.to_f)*100).round(2)
    @replies_paper_sensitibity_multi_p = ((@replies_paper_sensitibity_multi.to_f/@replies_paper_sensitibity_total.to_f)*100).round(2)
    @replies_paper_sensitibity_probabilistic_p = ((@replies_paper_sensitibity_probabilistic.to_f/@replies_paper_sensitibity_total.to_f)*100).round(2)
    @replies_paper_sensitibity_not_p = ((@replies_paper_sensitibity_not.to_f/@replies_paper_sensitibity_total.to_f)*100).round(2)
    @replies_paper_sensitibity_cma_p  = ((@replies_paper_sensitibity_cma.to_f/@replies_paper_sensitibity_total.to_f)*100).round(2)

    # DATE/TIME
    @replies_paper_date_one = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_date_ten = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_date_above = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_date_not = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_date_total = @replies_paper_date_one+@replies_paper_date_ten+@replies_paper_date_above+@replies_paper_date_not

    @replies_paper_date_one_p = ((@replies_paper_date_one.to_f/@replies_paper_date_total.to_f)*100).round(2)
    @replies_paper_date_ten_p = ((@replies_paper_date_ten.to_f/@replies_paper_date_total.to_f)*100).round(2)
    @replies_paper_date_above_p = ((@replies_paper_date_above.to_f/@replies_paper_date_total.to_f)*100).round(2)
    @replies_paper_date_not_p = ((@replies_paper_date_not.to_f/@replies_paper_date_total.to_f)*100).round(2)

    # OUTCOME
    @replies_paper_outcome_qaly = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_outcome_natural = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_outcome_process = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_outcome_monetary = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_outcome_total = @replies_paper_outcome_qaly +@replies_paper_outcome_natural+@replies_paper_outcome_process+@replies_paper_outcome_monetary

    @replies_paper_outcome_qaly_p = ((@replies_paper_outcome_qaly.to_f/@replies_paper_outcome_total.to_f)*100).round(2)
    @replies_paper_outcome_natural_p = ((@replies_paper_outcome_natural.to_f/@replies_paper_outcome_total.to_f)*100).round(2)
    @replies_paper_outcome_process_p = ((@replies_paper_outcome_process.to_f/@replies_paper_outcome_total.to_f)*100).round(2)
    @replies_paper_outcome_monetary_p = ((@replies_paper_outcome_monetary.to_f/@replies_paper_outcome_total.to_f)*100).round(2)


    # COST
    @replies_paper_cost_medical = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_cost_non = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_cost_indirect = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_cost_intangible = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_outcome = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_cost_total = @replies_paper_cost_medical + @replies_paper_cost_non + @replies_paper_cost_indirect + @replies_paper_cost_intangible

    @replies_paper_cost_medical_p = ((@replies_paper_cost_medical.to_f/@replies_paper_cost_total.to_f)*100).round(2)
    @replies_paper_cost_non_p = ((@replies_paper_cost_non.to_f/@replies_paper_cost_total.to_f)*100).round(2)
    @replies_paper_cost_indirect_p = ((@replies_paper_cost_indirect.to_f/@replies_paper_cost_total.to_f)*100).round(2)
    @replies_paper_cost_intangible_p = ((@replies_paper_cost_intangible.to_f/@replies_paper_cost_total.to_f)*100).round(2)

    #DATA
    @replies_paper_data_primary = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "0").length
    @replies_paper_data_secondary = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "1").length
    @replies_paper_data_mixed = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "2").length
    @replies_paper_data_monetary = Contentquestion.where("project_id = ? AND paper_id = ? AND question_content_data = ?", params[:project_id], params[:paper_id], "3").length
    @replies_paper_data_total = @replies_paper_data_primary +@replies_paper_data_secondary+@replies_paper_data_mixed+@replies_paper_data_monetary

    @replies_paper_data_primary_p = ((@replies_paper_data_primary.to_f/@replies_paper_data_total.to_f) *100).round(2)
    @replies_paper_data_secondary_p = ((@replies_paper_data_secondary.to_f/@replies_paper_data_total.to_f) *100).round(2)
    @replies_paper_data_mixed_p = ((@replies_paper_data_mixed.to_f/@replies_paper_data_total.to_f) *100).round(2)
    @replies_paper_data_monetary_p = ((@replies_paper_data_monetary.to_f/@replies_paper_data_total.to_f) *100).round(2)


    @flag = @replies_paper_income_total+@replies_paper_type_total+@replies_paper_study_total+@replies_paper_modelling_total+@replies_paper_perspective_a_total+@replies_paper_perspective_r_total+@replies_paper_sensitibity_total+@replies_paper_date_total+@replies_paper_outcome_total+@replies_paper_cost_total+@replies_paper_data_total
  end

  def new
    @project = Project.find(params[:project_id])
    @paper = Paper.find(params[:paper_id])
    @contentquestion = Contentquestion.new
  end

  def create
    @contentquestion = Contentquestion.new(contentquestion_params)
    @contentquestion.project = Project.find(params[:project_id])
    @contentquestion.paper = Paper.find(params[:paper_id])
    if @contentquestion.save
            flash[:alert] = "Congrats, you answered the content questions"

      redirect_to projects_path
    else
      flash[:alert] = "You have to answer all questions"
      render :new
    end
  end

  def paper_download
    @replies_paper = Contentquestion.where("project_id = ? AND paper_id = ?", params[:project_id], params[:paper_id])
    respond_to do |format|
       format.xlsx {render xlsx: 'paper_download', filename: "paper_excel.xlsx"}
    end
  end



  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contentquestion
      @contentquestion = Contentquestion.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def contentquestion_params
      params.require(:contentquestion).permit(:user_id, :paper_id, :project_id, :question_content_year, :question_content_nation, :question_content_income, :question_content_type, :question_content_study, :question_content_modelling, :question_content_perspective_a, :question_content_perspective_r, :question_content_sensitivity, :question_content_data, :question_content_outcome, :question_content_cost, :question_content_intervention, :question_content_data, :question_content_sample, :question_content_description, :user_id, :paper_id, :project_id)
    end
end
