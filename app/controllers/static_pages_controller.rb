class StaticPagesController < ApplicationController
  def home
  	if params[:answer]
  	@string = StringManipulator.new(params[:answer])
  	@string.array_counter
  	@how_many_fucks = @string.calculate_fucks
  end
end

  def help
  end
end
