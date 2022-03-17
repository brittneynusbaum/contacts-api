class ContactsController < ApplicationController

  def create
    results = Geocoder.search(params[:address])
    contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone_number: params[:phone_number],
      latitude: results.first.coordinates[0],
      longitude: results.first.coordinates[1],
      address: params[:address]      
    )
    render json: contact.as_json
  end 

end
