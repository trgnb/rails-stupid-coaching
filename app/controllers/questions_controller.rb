class QuestionsController < ApplicationController
  def ask
    ''
  end

  def answer
    @value = params[:question]

    @answer = if @value.include? '?'
                'Silly question,get dressed and go to work!'
              elsif @value == 'I am going to work'
                'Great!'
              else
                "I don't care, get dressed and go to work!"
              end
  end
end
