# frozen_string_literal: true

# This is my questions controller
class QuestionsController < ApplicationController
  def answer
    @question = params[:question]
    @answer = coach
  end

  private

  def coach
    if @question[@question.length - 1] == '?'
      'Silly question, get dressed and go to work!'
    elsif @question == 'I am going to work'
      'Great'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
