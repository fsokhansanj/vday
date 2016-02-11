class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
    	@string = StringManipulator.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @first_question = "What is the name of the dating app we met on?"
      @second_question = "What is my greatest fear?"
  end
end

  def help
  end
end
