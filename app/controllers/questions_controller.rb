class QuestionsController < ApplicationController
  def ask
  end

  def answer
    # if params[:question] == 'I am going to work'
    #   @answer = @members.select { |member| member.start_with?(params[:member]) }
    # end
    @question = params[:question]
    case
    when params[:question] == 'I am going to work'
      @answer = 'Great!'
    when params[:question].include?('?') == true
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = 'test'
    end
  end
end
