class QuestionsController < ApplicationController

  def ask

  end


  def answer
    @question = params[:question]
    # instance variable @ question --> receive this from the params
    if @question == "I am going to work"
      @answer = "Great"
    elsif @question.last == "?" #contains a question mark
      @answer = "Silly Question, get dressed go to work!"
    else
      @answer = "I don't care, get dressd go to work"

    end
  end
end



# If the message is I am going to work, the coach will answer Great!
# If the message has a question mark ? at the end, the coach will answer Silly question, get dressed and go to work!.
# Otherwise he will answer I don't care, get dressed and go to work!
