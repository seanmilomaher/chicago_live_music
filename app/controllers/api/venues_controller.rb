class Api::VenuesController < ApplicationController

  before_action :authenticate_venue, except: [:index, :show, :create]

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
    if current_venue.id == @venue.id
      @venue.name = params[:name] || @venue.name
      @venue.email = params[:email] || @venue.email
      @venue.address = params[:address] || @venue.address
      @venue.image = params[:image] || @venue.image
      if @venue.save
        render "show.json.jb"
      else
        render json: { errors: @venue.errors.full_messages }, status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    if current_venue.id == params[:id].to_i
      @venue = Venue.find_by(id: params[:id]) # maybe change this to only be available to the current venue?
      @venue.destroy
      render json: {message: "Venue successfully deleted"}
    else
      render json: {}, status: :unauthorized
    end
  end

end