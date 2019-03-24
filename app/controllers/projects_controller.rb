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
        data: [["1", @replies_project_NA_question_1], ["2", @replies_project_NA_question_2], ["3", @replies_project_NA_question_3],["3.B", @replies_project_NA_question_4], ["4", @replies_project_NA_question_5], ["5", @replies_project_NA_question_6],["6", @replies_project_NA_question_7], ["7", @replies_project_NA_question_8], ["8", @replies_project_NA_question_9],["9", @replies_project_NA_question_10], ["10", @replies_project_NA_question_11], ["11.A", @replies_project_NA_question_12],["11.B", @replies_project_NA_question_13], ["12", @replies_project_NA_question_14], ["13.A", @replies_project_NA_question_15],["13.B", @replies_project_NA_question_16], ["14", @replies_project_NA_question_17], ["15", @replies_project_NA_question_18],["16", @replies_project_NA_question_19], ["17", @replies_project_NA_question_20], ["18", @replies_project_NA_question_21],["19", @replies_project_NA_question_22], ["20.A", @replies_project_NA_question_23], ["20.B", @replies_project_NA_question_24],["21", @replies_project_NA_question_25], ["22", @replies_project_NA_question_26], ["23", @replies_project_NA_question_27],["24", @replies_project_NA_question_28]]
      },
      {
        name: "No",
        data: [["1", @replies_project_NO_question_1], ["2", @replies_project_NO_question_2], ["3", @replies_project_NO_question_3],["3.B", @replies_project_NO_question_4], ["4", @replies_project_NO_question_5], ["5", @replies_project_NO_question_6],["6", @replies_project_NO_question_7], ["7", @replies_project_NO_question_8], ["8", @replies_project_NO_question_9],["9", @replies_project_NO_question_10], ["10", @replies_project_NO_question_11], ["11.A", @replies_project_NO_question_12],["11.B", @replies_project_NO_question_13], ["12", @replies_project_NO_question_14], ["13.A", @replies_project_NO_question_15],["13.B", @replies_project_NO_question_16], ["14", @replies_project_NO_question_17], ["15", @replies_project_NO_question_18],["16", @replies_project_NO_question_19], ["17", @replies_project_NO_question_20], ["18", @replies_project_NO_question_21],["19", @replies_project_NO_question_22], ["20.A", @replies_project_NO_question_23], ["20.B", @replies_project_NO_question_24],["21", @replies_project_NO_question_25], ["22", @replies_project_NO_question_26], ["23", @replies_project_NO_question_27],["24", @replies_project_NO_question_28]]
      },
      {
        name: "Maybe",
        data: [["1", @replies_project_MAYBE_question_1], ["2", @replies_project_MAYBE_question_2], ["3", @replies_project_MAYBE_question_3],["3.B", @replies_project_MAYBE_question_4], ["4", @replies_project_MAYBE_question_5], ["5", @replies_project_MAYBE_question_6],["6", @replies_project_MAYBE_question_7], ["7", @replies_project_MAYBE_question_8], ["8", @replies_project_MAYBE_question_9],["9", @replies_project_MAYBE_question_10], ["10", @replies_project_MAYBE_question_11], ["11.A", @replies_project_MAYBE_question_12],["11.B", @replies_project_MAYBE_question_13], ["12", @replies_project_MAYBE_question_14], ["13.A", @replies_project_MAYBE_question_15],["13.B", @replies_project_MAYBE_question_16], ["14", @replies_project_MAYBE_question_17], ["15", @replies_project_MAYBE_question_18],["16", @replies_project_MAYBE_question_19], ["17", @replies_project_MAYBE_question_20], ["18", @replies_project_MAYBE_question_21],["19", @replies_project_MAYBE_question_22], ["20.A", @replies_project_MAYBE_question_23], ["20.B", @replies_project_MAYBE_question_24],["21", @replies_project_MAYBE_question_25], ["22", @replies_project_MAYBE_question_26], ["23", @replies_project_MAYBE_question_27],["24", @replies_project_MAYBE_question_28]]
      },
      {
        name: "Yes",
        data: [["1", @replies_project_YES_question_1], ["2", @replies_project_YES_question_2], ["3", @replies_project_YES_question_3],["3.B", @replies_project_YES_question_4], ["4", @replies_project_YES_question_5], ["5", @replies_project_YES_question_6],["6", @replies_project_YES_question_7], ["7", @replies_project_YES_question_8], ["8", @replies_project_YES_question_9],["9", @replies_project_YES_question_10], ["10", @replies_project_YES_question_11], ["11.A", @replies_project_YES_question_12],["11.B", @replies_project_YES_question_13], ["12", @replies_project_YES_question_14], ["13.A", @replies_project_YES_question_15],["13.B", @replies_project_YES_question_16], ["14", @replies_project_YES_question_17], ["15", @replies_project_YES_question_18],["16", @replies_project_YES_question_19], ["17", @replies_project_YES_question_20], ["18", @replies_project_YES_question_21],["19", @replies_project_YES_question_22], ["20.A", @replies_project_YES_question_23], ["20.B", @replies_project_YES_question_24],["21", @replies_project_YES_question_25], ["22", @replies_project_YES_question_26], ["23", @replies_project_YES_question_27],["24", @replies_project_YES_question_28]]
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
      flash[:alert] = "Congrats, you created a project"
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
