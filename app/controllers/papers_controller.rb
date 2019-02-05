class PapersController < ApplicationController
  before_action :set_paper, only: [:show, :edit, :update, :destroy,]

  def index
    @papers = Paper.all
  end

  def show
  end

  def new
    @project = Project.find(params[:project_id])
    @paper = Paper.new
  end

  def edit
    @project = Project.find(params[:project_id])
    @paper = Paper.new
  end

  def create
    @paper = Paper.new(paper_params)
    @paper.project = Project.find(params[:project_id])
    @paper.save

    redirect_to project_path(@paper.project.id)
  end

  def update
    @paper = Paper.new(paper_params)
    @paper.project = Project.find(params[:project_id])
    @paper.save
  end

  def destroy
    @paper.destroy
    redirect_to project_path(@paper.project.id)
  end


  private
    def set_paper
      @paper = Paper.find(params[:id])
    end

    def paper_params
      params.require(:paper).permit(:paper_pdf, :title, :body, :project_id)
    end

end

