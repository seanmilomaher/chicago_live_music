class Api::SessionsController < ApplicationController
  def create
    venue = Venue.find_by(email: params[:email])
    if venue && venue.authenticate(params[:password])
      jwt = JWT.encode(
        {
          venue_id: venue.id, # the data to encode
          exp: 24.hours.from_now.to_i # the expiration time
        },
        Rails.application.credentials.fetch(:secret_key_base), # the secret key
        "HS256" # the encryption algorithm
      )
      render json: { jwt: jwt, email: venue.email, venue_id: venue.id }, status: :created
    else
      render json: {}, status: :unauthorized
    end
  end
end
