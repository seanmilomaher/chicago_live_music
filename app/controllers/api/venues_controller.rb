class Api::VenuesController < ApplicationController

  def create
    @venue = Venue.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      image: params[:image],
      address: params[:address],
    )
    if @venue.save
      render "show.json.jb"
    else
      render json: { errors: venue.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @venues = Venue.all
    render "index.json.jb"
  end

  def show
    @venue = Venue.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @venue = Venue.find_by(id: params[:id])
    @venue.name = params[:name] || @venue.name
    @venue.email = params[:email] || @venue.email
    @venue.address = params[:address] || @venue.address
    @venue.image = params[:image] || @venue.image
    if @venue.save
      render "show.json.jb"
    else
      render json: { errors: @venue.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def destroy
    @venue = Venue.find_by(id: params[:id])
    @venue.destroy
    render json: {message: "Venue successfully deleted"}
  end

end