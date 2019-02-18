class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy, :replies_project]

  def replies_project

    @replies_project = Question.where("project_id = ?", params[:id])

    @replies_project_total = Question.where("project_id = ?", params[:id]).length

    @replies_project_NA_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:id], "-1").length
    @replies_project_NO_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:id], "0.5").length
    @replies_project_YES_question_1 = Question.where("project_id = ? AND question_1 = ?", params[:id], "1").length

    @replies_project_NA_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:id], "-1").length
    @replies_project_NO_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:id], "0.5").length
    @replies_project_YES_question_2 = Question.where("project_id = ? AND question_2 = ?", params[:id], "1").length

    @replies_project_NA_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:id], "-1").length
    @replies_project_NO_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:id], "0.5").length
    @replies_project_YES_question_3 = Question.where("project_id = ? AND question_3 = ?", params[:id], "1").length

    @replies_project_NA_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:id], "-1").length
    @replies_project_NO_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:id], "0.5").length
    @replies_project_YES_question_4 = Question.where("project_id = ? AND question_4 = ?", params[:id], "1").length

    @replies_project_NA_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:id], "-1").length
    @replies_project_NO_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:id], "0.5").length
    @replies_project_YES_question_5 = Question.where("project_id = ? AND question_5 = ?", params[:id], "1").length

    @replies_project_NA_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:id], "-1").length
    @replies_project_NO_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:id], "0.5").length
    @replies_project_YES_question_6 = Question.where("project_id = ? AND question_6 = ?", params[:id], "1").length

    @replies_project_NA_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:id], "-1").length
    @replies_project_NO_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:id], "0.5").length
    @replies_project_YES_question_7 = Question.where("project_id = ? AND question_7 = ?", params[:id], "1").length

    @replies_project_NA_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:id], "-1").length
    @replies_project_NO_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:id], "0.5").length
    @replies_project_YES_question_8 = Question.where("project_id = ? AND question_8 = ?", params[:id], "1").length

    @replies_project_NA_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:id], "-1").length
    @replies_project_NO_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:id], "0.5").length
    @replies_project_YES_question_9 = Question.where("project_id = ? AND question_9 = ?", params[:id], "1").length

    @replies_project_NA_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:id], "-1").length
    @replies_project_NO_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:id], "0.5").length
    @replies_project_YES_question_10 = Question.where("project_id = ? AND question_10 = ?", params[:id], "1").length

    @replies_project_NA_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:id], "-1").length
    @replies_project_NO_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:id], "0.5").length
    @replies_project_YES_question_11 = Question.where("project_id = ? AND question_11 = ?", params[:id], "1").length

    @replies_project_NA_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:id], "-1").length
    @replies_project_NO_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:id], "0.5").length
    @replies_project_YES_question_12 = Question.where("project_id = ? AND question_13 = ?", params[:id], "1").length

    @replies_project_NA_question_13 = Question.where("project_id = ? AND question_13 = ?", params[:id], "-1").length
    @replies_project_NO_question_13 = Question.where("project_id = ? AND question_13 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_13 = Question.where("project_id = ? AND question_13 = ?", params[:id], "0.5").length
    @replies_project_YES_question_13 = Question.where("project_id = ? AND question_13 = ?", params[:id], "1").length

    @replies_project_NA_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:id], "-1").length
    @replies_project_NO_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:id], "0.5").length
    @replies_project_YES_question_14 = Question.where("project_id = ? AND question_14 = ?", params[:id], "1").length

    @replies_project_NA_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:id], "-1").length
    @replies_project_NO_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:id], "0.5").length
    @replies_project_YES_question_15 = Question.where("project_id = ? AND question_15 = ?", params[:id], "1").length

    @replies_project_NA_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:id], "-1").length
    @replies_project_NO_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:id], "0.5").length
    @replies_project_YES_question_16 = Question.where("project_id = ? AND question_16 = ?", params[:id], "1").length

    @replies_project_NA_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:id], "-1").length
    @replies_project_NO_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:id], "0.5").length
    @replies_project_YES_question_17 = Question.where("project_id = ? AND question_17 = ?", params[:id], "1").length

    @replies_project_NA_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:id], "-1").length
    @replies_project_NO_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:id], "0.5").length
    @replies_project_YES_question_18 = Question.where("project_id = ? AND question_18 = ?", params[:id], "1").length

    @replies_project_NA_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:id], "-1").length
    @replies_project_NO_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:id], "0.5").length
    @replies_project_YES_question_19 = Question.where("project_id = ? AND question_19 = ?", params[:id], "1").length

    @replies_project_NA_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:id], "-1").length
    @replies_project_NO_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:id], "0.5").length
    @replies_project_YES_question_20 = Question.where("project_id = ? AND question_20 = ?", params[:id], "1").length

    @replies_project_NA_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:id], "-1").length
    @replies_project_NO_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:id], "0.5").length
    @replies_project_YES_question_21 = Question.where("project_id = ? AND question_21 = ?", params[:id], "1").length

    @replies_project_NA_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:id], "-1").length
    @replies_project_NO_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:id], "0.5").length
    @replies_project_YES_question_22 = Question.where("project_id = ? AND question_22 = ?", params[:id], "1").length

    @replies_project_NA_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:id], "-1").length
    @replies_project_NO_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:id], "0.5").length
    @replies_project_YES_question_23 = Question.where("project_id = ? AND question_23 = ?", params[:id], "1").length

    @replies_project_NA_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:id], "-1").length
    @replies_project_NO_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:id], "0.5").length
    @replies_project_YES_question_24 = Question.where("project_id = ? AND question_24 = ?", params[:id], "1").length

    @replies_project_NA_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:id], "-1").length
    @replies_project_NO_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:id], "0.5").length
    @replies_project_YES_question_25 = Question.where("project_id = ? AND question_25 = ?", params[:id], "1").length

    @replies_project_NA_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:id], "-1").length
    @replies_project_NO_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:id], "0.5").length
    @replies_project_YES_question_26 = Question.where("project_id = ? AND question_26 = ?", params[:id], "1").length

    @replies_project_NA_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:id], "-1").length
    @replies_project_NO_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:id], "0.5").length
    @replies_project_YES_question_27 = Question.where("project_id = ? AND question_27 = ?", params[:id], "1").length

    @replies_project_NA_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:id], "-1").length
    @replies_project_NO_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:id], "0").length
    @replies_project_MAYBE_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:id], "0.5").length
    @replies_project_YES_question_28 = Question.where("project_id = ? AND question_28 = ?", params[:id], "1").length


@data = [
      {
        name: "N/A",
        data: [["1. Identify the study as an economic evaluation", @replies_project_NA_question_1], ["2. Provide a structured summary of objectives, methods, results and conclusions", @replies_project_NA_question_2], ["3.A Provide an explicit statement of the broader context of the study", @replies_project_NA_question_3],["3.B Present the study question and its relevance for health policy or practice decisions", @replies_project_NA_question_4], ["4. Describe characteristics of the base-case population and subgroups analyzed.", @replies_project_NA_question_5], ["5. State relevant aspects of the systems in which decisions are to be made", @replies_project_NA_question_6],["6. Describe the perspective of the study and relate it to costs evaluated.", @replies_project_NA_question_7], ["7. Describe the interventions or strategies being compared and why they've been chosen.", @replies_project_NA_question_8], ["8. State the time horizon(s) over which costs and consequences are being evaluated, and say why appropriate.", @replies_project_NA_question_9],["9. Report and discuss the choice of discount rate(s) used for costs and outcomes.", @replies_project_NA_question_10], ["10. Describe what outcomes were used as the measure(s) of benefit in the evaluation and their relevance for the type of analysis performed.", @replies_project_NA_question_11], ["11.A Single study–based estimates: Describe fully the design features of the single effectiveness study.", @replies_project_NA_question_12],["11.B Synthesis-based estimates: Describe fully the methods used for the identification of included studies and synthesis of clinical effectiveness data.", @replies_project_NA_question_13], ["12 If applicable, describe the population and methods used to elicit preferences for outcomes.", @replies_project_NA_question_14], ["13.A Single study–based economic evaluation: Describe approaches used to estimate resource use associated with the alternative interventions.", @replies_project_NA_question_15],["13.B Model-based economic evaluation: Describe approaches and data sources used to estimate resource use associated with model health states.", @replies_project_NA_question_16], ["14. Report the dates of the estimated resource quantities and unit costs; cescribe methods for adjusting estimated unit costs and converting costs.", @replies_project_NA_question_17], ["15. Describe and give reasons for the specific type of decision-analytic model used. Providing a figure to show model structure is strongly recommended.", @replies_project_NA_question_18],["16. Describe all structural or other assumptions underpinning the decision-analytic model.", @replies_project_NA_question_19], ["17. Describe all analytic methods supporting the evaluation.", @replies_project_NA_question_20], ["18. Report the values, ranges, references, and if used, probability distributions for all parameters.", @replies_project_NA_question_21],["19. For each intervention, report mean values for the main categories of estimated costs and outcomes of interest, as well as mean differences between the comparator groups.", @replies_project_NA_question_22], ["20.A Single study–based economic evaluation: Describe the effects of sampling uncertainty, together with the impact of methodological assumptions.", @replies_project_NA_question_23], ["20.B Model-based economic evaluation: Describe the effects on the results of uncertainty for all input parameters.", @replies_project_NA_question_24],["21. If applicable, report differences in costs, outcomes, or cost- effectiveness that can be explained by variations between subgroups of patients.", @replies_project_NA_question_25], ["22. Summarize key study findings and describe how they support the conclusions reached.", @replies_project_NA_question_26], ["23. Describe how the study was funded and the role of the funder in the identification, design, conduct, and reporting of the analysis.", @replies_project_NA_question_27],["24. Describe any potential for conflict of interest among study contributors in accordance with journal policy.", @replies_project_NA_question_]]
      },
      {
        name: "No",
        data: [["1. Identify the study as an economic evaluation", @replies_project_NO_question_1], ["2. Provide a structured summary of objectives, methods, results and conclusions", @replies_project_NO_question_2], ["3.A Provide an explicit statement of the broader context of the study", @replies_project_NO_question_3],["3.B Present the study question and its relevance for health policy or practice decisions", @replies_project_NO_question_4], ["4. Describe characteristics of the base-case population and subgroups analyzed.", @replies_project_NO_question_5], ["5. State relevant aspects of the systems in which decisions are to be made", @replies_project_NO_question_6],["6. Describe the perspective of the study and relate it to costs evaluated.", @replies_project_NO_question_7], ["7. Describe the interventions or strategies being compared and why they've been chosen.", @replies_project_NO_question_8], ["8. State the time horizon(s) over which costs and consequences are being evaluated, and say why appropriate.", @replies_project_NO_question_9],["9. Report and discuss the choice of discount rate(s) used for costs and outcomes.", @replies_project_NO_question_10], ["10. Describe what outcomes were used as the measure(s) of benefit in the evaluation and their relevance for the type of analysis performed.", @replies_project_NO_question_11], ["11.A Single study–based estimates: Describe fully the design features of the single effectiveness study.", @replies_project_NO_question_12],["11.B Synthesis-based estimates: Describe fully the methods used for the identification of included studies and synthesis of clinical effectiveness data.", @replies_project_NO_question_13], ["12 If applicable, describe the population and methods used to elicit preferences for outcomes.", @replies_project_NO_question_14], ["13.A Single study–based economic evaluation: Describe approaches used to estimate resource use associated with the alternative interventions.", @replies_project_NO_question_15],["13.B Model-based economic evaluation: Describe approaches and data sources used to estimate resource use associated with model health states.", @replies_project_NO_question_16], ["14. Report the dates of the estimated resource quantities and unit costs; cescribe methods for adjusting estimated unit costs and converting costs.", @replies_project_NO_question_17], ["15. Describe and give reasons for the specific type of decision-analytic model used. Providing a figure to show model structure is strongly recommended.", @replies_project_NO_question_18],["16. Describe all structural or other assumptions underpinning the decision-analytic model.", @replies_project_NO_question_19], ["17. Describe all analytic methods supporting the evaluation.", @replies_project_NO_question_20], ["18. Report the values, ranges, references, and if used, probability distributions for all parameters.", @replies_project_NO_question_21],["19. For each intervention, report mean values for the main categories of estimated costs and outcomes of interest, as well as mean differences between the comparator groups.", @replies_project_NO_question_22], ["20.A Single study–based economic evaluation: Describe the effects of sampling uncertainty, together with the impact of methodological assumptions.", @replies_project_NO_question_23], ["20.B Model-based economic evaluation: Describe the effects on the results of uncertainty for all input parameters.", @replies_project_NO_question_24],["21. If applicable, report differences in costs, outcomes, or cost- effectiveness that can be explained by variations between subgroups of patients.", @replies_project_NO_question_25], ["22. Summarize key study findings and describe how they support the conclusions reached.", @replies_project_NO_question_26], ["23. Describe how the study was funded and the role of the funder in the identification, design, conduct, and reporting of the analysis.", @replies_project_NO_question_27],["24. Describe any potential for conflict of interest among study contributors in accordance with journal policy.", @replies_project_NO_question_28]]
      },
      {
        name: "Maybe",
        data: [["1. Identify the study as an economic evaluation", @replies_project_MAYBE_question_1], ["2. Provide a structured summary of objectives, methods, results and conclusions", @replies_project_MAYBE_question_2], ["3.A Provide an explicit statement of the broader context of the study", @replies_project_MAYBE_question_3],["3.B Present the study question and its relevance for health policy or practice decisions", @replies_project_MAYBE_question_4], ["4. Describe characteristics of the base-case population and subgroups analyzed.", @replies_project_MAYBE_question_5], ["5. State relevant aspects of the systems in which decisions are to be made", @replies_project_MAYBE_question_6],["6. Describe the perspective of the study and relate it to costs evaluated.", @replies_project_MAYBE_question_7], ["7. Describe the interventions or strategies being compared and why they've been chosen.", @replies_project_MAYBE_question_8], ["8. State the time horizon(s) over which costs and consequences are being evaluated, and say why appropriate.", @replies_project_MAYBE_question_9],["9. Report and discuss the choice of discount rate(s) used for costs and outcomes.", @replies_project_MAYBE_question_10], ["10. Describe what outcomes were used as the measure(s) of benefit in the evaluation and their relevance for the type of analysis performed.", @replies_project_MAYBE_question_11], ["11.A Single study–based estimates: Describe fully the design features of the single effectiveness study.", @replies_project_MAYBE_question_12],["11.B Synthesis-based estimates: Describe fully the methods used for the identification of included studies and synthesis of clinical effectiveness data.", @replies_project_MAYBE_question_13], ["12 If applicable, describe the population and methods used to elicit preferences for outcomes.", @replies_project_MAYBE_question_14], ["13.A Single study–based economic evaluation: Describe approaches used to estimate resource use associated with the alternative interventions.", @replies_project_MAYBE_question_15],["13.B Model-based economic evaluation: Describe approaches and data sources used to estimate resource use associated with model health states.", @replies_project_MAYBE_question_16], ["14. Report the dates of the estimated resource quantities and unit costs; cescribe methods for adjusting estimated unit costs and converting costs.", @replies_project_MAYBE_question_17], ["15. Describe and give reasons for the specific type of decision-analytic model used. Providing a figure to show model structure is strongly recommended.", @replies_project_MAYBE_question_18],["16. Describe all structural or other assumptions underpinning the decision-analytic model.", @replies_project_MAYBE_question_19], ["17. Describe all analytic methods supporting the evaluation.", @replies_project_MAYBE_question_20], ["18. Report the values, ranges, references, and if used, probability distributions for all parameters.", @replies_project_MAYBE_question_21],["19. For each intervention, report mean values for the main categories of estimated costs and outcomes of interest, as well as mean differences between the comparator groups.", @replies_project_MAYBE_question_22], ["20.A Single study–based economic evaluation: Describe the effects of sampling uncertainty, together with the impact of methodological assumptions.", @replies_project_MAYBE_question_23], ["20.B Model-based economic evaluation: Describe the effects on the results of uncertainty for all input parameters.", @replies_project_MAYBE_question_24],["21. If applicable, report differences in costs, outcomes, or cost- effectiveness that can be explained by variations between subgroups of patients.", @replies_project_MAYBE_question_25], ["22. Summarize key study findings and describe how they support the conclusions reached.", @replies_project_MAYBE_question_26], ["23. Describe how the study was funded and the role of the funder in the identification, design, conduct, and reporting of the analysis.", @replies_project_MAYBE_question_27],["24. Describe any potential for conflict of interest among study contributors in accordance with journal policy.", @replies_project_MAYBE_question_28]]
      },
      {
        name: "Yes",
        data: [["1. Identify the study as an economic evaluation", @replies_project_YES_question_1], ["2. Provide a structured summary of objectives, methods, results and conclusions", @replies_project_YES_question_2], ["3.A Provide an explicit statement of the broader context of the study", @replies_project_YES_question_3],["3.B Present the study question and its relevance for health policy or practice decisions", @replies_project_YES_question_4], ["4. Describe characteristics of the base-case population and subgroups analyzed.", @replies_project_YES_question_5], ["5. State relevant aspects of the systems in which decisions are to be made", @replies_project_YES_question_6],["6. Describe the perspective of the study and relate it to costs evaluated.", @replies_project_YES_question_7], ["7. Describe the interventions or strategies being compared and why they've been chosen.", @replies_project_YES_question_8], ["8. State the time horizon(s) over which costs and consequences are being evaluated, and say why appropriate.", @replies_project_YES_question_9],["9. Report and discuss the choice of discount rate(s) used for costs and outcomes.", @replies_project_YES_question_10], ["10. Describe what outcomes were used as the measure(s) of benefit in the evaluation and their relevance for the type of analysis performed.", @replies_project_YES_question_11], ["11.A Single study–based estimates: Describe fully the design features of the single effectiveness study.", @replies_project_YES_question_12],["11.B Synthesis-based estimates: Describe fully the methods used for the identification of included studies and synthesis of clinical effectiveness data.", @replies_project_YES_question_13], ["12 If applicable, describe the population and methods used to elicit preferences for outcomes.", @replies_project_YES_question_14], ["13.A Single study–based economic evaluation: Describe approaches used to estimate resource use associated with the alternative interventions.", @replies_project_YES_question_15],["13.B Model-based economic evaluation: Describe approaches and data sources used to estimate resource use associated with model health states.", @replies_project_YES_question_16], ["14. Report the dates of the estimated resource quantities and unit costs; cescribe methods for adjusting estimated unit costs and converting costs.", @replies_project_YES_question_17], ["15. Describe and give reasons for the specific type of decision-analytic model used. Providing a figure to show model structure is strongly recommended.", @replies_project_YES_question_18],["16. Describe all structural or other assumptions underpinning the decision-analytic model.", @replies_project_YES_question_19], ["17. Describe all analytic methods supporting the evaluation.", @replies_project_YES_question_20], ["18. Report the values, ranges, references, and if used, probability distributions for all parameters.", @replies_project_YES_question_21],["19. For each intervention, report mean values for the main categories of estimated costs and outcomes of interest, as well as mean differences between the comparator groups.", @replies_project_YES_question_22], ["20.A Single study–based economic evaluation: Describe the effects of sampling uncertainty, together with the impact of methodological assumptions.", @replies_project_YES_question_23], ["20.B Model-based economic evaluation: Describe the effects on the results of uncertainty for all input parameters.", @replies_project_YES_question_24],["21. If applicable, report differences in costs, outcomes, or cost- effectiveness that can be explained by variations between subgroups of patients.", @replies_project_YES_question_25], ["22. Summarize key study findings and describe how they support the conclusions reached.", @replies_project_YES_question_26], ["23. Describe how the study was funded and the role of the funder in the identification, design, conduct, and reporting of the analysis.", @replies_project_YES_question_27],["24. Describe any potential for conflict of interest among study contributors in accordance with journal policy.", @replies_project_YES_question_28]]
      }
    ]
  end

  def project_download
    @replies_project = Question.where("project_id = ?", params[:id])

    respond_to do |format|
       format.xlsx {render xlsx: 'project_download', filename: "project_excel.xlsx"}
    end
  end


  def index
    if params[:search]
      @projects = Project.search(params[:search]).order("RANDOM()")
      if @projects.length != 0
        @projects = Project.search(params[:search]).order("RANDOM()")
      else
        flash[:alert] = "There are no project with that title, search again or click the top left icon to see available projects"
      end
    else
      @projects = Project.all
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
  end

  # GET /projects/new
  def new
    @project = Project.new
  end

  def edit
  end

  def create
    @project = Project.new(project_params)
    # @project.save
    # redirect_to projects_path
    if @project.save
      redirect_to projects_path
    else
      flash[:alert] = "You have to fill the title and body"
      render :new
    end
  end

  def update
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @project.destroy

    redirect_to projects_path
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(:title, :body, :user_id)
    end
end
