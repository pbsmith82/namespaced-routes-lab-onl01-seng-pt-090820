class Admin::PreferencesController < ApplicationController

    def index
      
    end

    def create
        @prefrence = Preference.new(prefrence_params)
    
        if @prefrence.save
          redirect_to @prefrence
        else
          render :new
        end
    end

    private

    def prefrence_params
      params.require(:preference).permit(:allow_create_artists, :allow_create_songs)
    end
  end
  