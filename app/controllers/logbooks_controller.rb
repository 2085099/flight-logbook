class LogbooksController < ApplicationController

  def new
  	@Logbook = Logbook.new

  end

  def index
  	@Logbook = Logbook.all
    @Log_grid = initialize_grid(Logbook);
  end

  def create
  	#Submitting logbook entry form
  	@Logbook = Logbook.new(permit_logbook)

  	if @Logbook.save
  		flash[:success] = "Log successfully added!"
  		redirect_to logbooks_path
  	else
  		flash[:error] = @Logbook.errors.full_messages
  		redirect_to new_logbook_path

  	end
  end

  def destroy
    @Logbook = Logbook.find(params[:id])
    
    if @Logbook.destroy
    	flash[:success] = "Log successfully deleted"
		redirect_to logbooks_path
	else
		flash[:error] = "Log could not be deleted"
		redirect_to new_logbooks_path

	end
  end
  private
  	def permit_logbook
  		params.require(:logbook).permit(:date, :departurePlace, :arrivalPlace, :arrivalTime, :remarks)
  	end
end
