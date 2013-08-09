class HomeController < ApplicationController
 
  helper_method :sort_column, :sort_direction

  def index
     @periods = Period.all
     @probabilities = [ "Very Low","Low","Equally likely","High","Very High"]
     @impacts = [ "Negligible","Minor","Major","Severe","Catastrophic"]
  end


   def sort_column
    Period.column_names.include?(params[:sort]) ? params[:sort] : "name"
  end
  
  def sort_direction
    %w[asc desc].include?(params[:direction]) ? params[:direction] : "asc"
  end
end
