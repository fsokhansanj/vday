class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
    	@string = StringManipulator.new(params[:answer])
    	@string.array_counter
    	@response = @string.show_answer
    else
      @response = "Name the dating app we used to meet each other"
  end
end

  def help
  end
end
