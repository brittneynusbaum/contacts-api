class ContactsController < ApplicationController

  def create
    # results = Geocoder.search("Paris")
    # render json: results.first.coordinates

    render json: {message: "testing create"}
  end 

end
