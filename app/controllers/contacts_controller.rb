class ContactsController < ApplicationController

  def create
    results = Geocoder.search(address: params[:address])
    render json: results.first.coordinates
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      latitude: params[:latitude],
      longitude: params[:longitude],
      address: params[:address]      
    )

    # render json: contact.as_json
  end 

end
