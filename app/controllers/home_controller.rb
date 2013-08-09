class HomeController < ApplicationController
 
  helper_method :sort_column, :sort_direction

  def index
  	 @periods = Period.order(sort_column + " " + sort_direction)
  end


   def sort_column
    Period.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
