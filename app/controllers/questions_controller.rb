class QuestionsController < ApplicationController
  before_action :set_question, only: %i[update show destroy edit]   # before_action викликає метод set_question із приватних методів перед методами []

  def create
    @question = Question.create(question_params) 
    
                                      # @question = Question.create(body: params[:question][:body], 
                                      # user_id: params[:question][:user_id])
                                      # або
                                      # @question = Question.create(params[:questions]) 

    redirect_to question_path(@question), notice: 'Нове питання створено'    # notice: це флеш, далі у layout
  end

  def update
    @question.update(question_params)
                                         # @question = Question.find(params[id:])
                                         # @question.update(
                                            # body: params[:question][:body], 
                                            # user_id: params[:question][:user_id]
                                            # )

    redirect_to question_path(@question), notice: 'Запитання збережено'
  end

  def destroy
    @question.destroy
                                        # @question = Question.find(params[id:])
                                        # @question.destroy

    redirect_to questions_path, notice: 'Запитання видалено'
  end

  def  show
                                        # @question = Question.find(params[id:])
  end

  def index
    @question = Question.new
    @questions = Question.all
  end

  def new
    @question = Question.new
  end

  def edit
                                      # @question = Question.find(params[id:])
  end

  private

  def question_params
    params.require(:question).permit(:body, :user_id)
  end

  def set_question
    @question = Question.find(params[:id])
  end
end