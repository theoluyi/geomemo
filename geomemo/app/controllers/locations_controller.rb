class LocationsController < ApplicationController
    def index 
        @locations = Location.all 
    end 

    def show
        @location = Location.find(params[:id])
    end

    def new 
        @location = Location.new
    end 

    def create 
        @location = Location.create(location_params)
        if @location.valid?
            redirect_to location_path(@location)
        else flash[:errors]=@location.errors.full_messages
            redirect_to new_location_path
        end
    end 

    def edit 
        @location = Location.find(params[:id])
    end

    def update
        @location = Location.find(params[:id])
        @location.update(location_params)
        if @location.valid?
            redirect_to location_path(@location)
        else flash[:errors]=@location.errors.full_messages
            redirect_to edit_location_path
        end
    end 

    def destroy
        @location = Location.find(params[:id])
        if @location == Location.first
            redirect_to location_path(@location)
        else
        @location.reassign_default_location_of_notes
        @location.destroy
        redirect_to locations_path
        end
    end

    private 

    def location_params
        params.require(:location).permit(:name)
    end 

end
