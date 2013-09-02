class AnswersController < ApplicationController
  respond_to :json

  def index
    @answers = Answer.all
  end


  def show
    @answer = Answer.find(params[:id])

    unless @answer
      head :not_found
    end
  end


  def new
    @answer = Answer.new
  end


  def create
    @answer = Answer.new(params[:answer])

    if @answer.save
      render :show, status: :created
    else
      head :not_found
    end
  end


  def update
    @answer = Answer.find(params[:id])

    head :not_found unless @answer

    if @answer.update_attributes params[:answer]
      # Status no_content to compensate for ember bug
      render :show, status: :no_content
    else
      render :errors, status: :unprocessable_entity
    end
  end


  def destroy
    @answer = Answer.find(params[:id])
    @answer.destroy

    head :no_content
  end


end