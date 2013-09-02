class QuestionsController < ApplicationController
  respond_to :json

  def index
    @questions = Question.all
  end


  def show
    @question = Question.find(params[:id])

    unless @question
      head :not_found
    end
  end


  def new
    @question = Question.new
  end


  def create
    @question = Question.new(params[:question])

    if @question.save
      render :show, status: :created
    else
      head :not_found
    end
  end


  def update
    @question = Question.find(params[:id])

    head :not_found unless @question

    if @question.update_attributes params[:question]
      # Status no_content to compensate for ember bug
      render :show, status: :no_content
    else
      render :errors, status: :unprocessable_entity
    end
  end


  def destroy
    @question = Question.find(params[:id])
    @question.destroy

    head :no_content
  end


end