class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
    	@string = StringManipulator.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @response = "What is the name of the city we stayed in during the 2012 inauguration?"
  end
end

  def help
  end
end
