class Api::VenuesController < ApplicationController

  def create
    venue = Venue.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params[:image],
      address: params[:address]
    )
    if venue.save
      render json: { message: "Venue created successfully" }, status: :created
    else
      render json: { errors: venue.errors.full_messages }, status: :bad_request
    end
  end

  def index
    @venues = Venue.all
    render "index.json.jb"
  end

end