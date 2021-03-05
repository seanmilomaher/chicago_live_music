class Api::BandsController < ApplicationController

  before_action :authenticate_venue, except: [:index, :show]

  def create
    @band = Band.new(
      name: params[:name],
      from_city: params[:from_city],
      from_state: params[:from_state],
      bio: params[:bio],
      image: params[:image]
    )
    if @band.save
      render "show.json.jb"
    else
      render json: { errors: @band.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def index
    @bands = Band.all
    render "index.json.jb"
  end

  def show
    @band = Band.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @band = Band.find_by(id: params[:id])
    @band.name = params[:name] || @band.name
    @band.from_city = params[:from_city] || @band.from_city
    @band.from_state = params[:from_state] || @band.from_state
    @band.bio = params[:bio] || @band.bio
    @band.image = params[:image] || @band.image
    if @band.save
      render "show.json.jb"
    else
      render json: { errors: @band.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def destroy
    @band = Band.find_by(id: params[:id])
    @band.destroy
    render json: {message: "Band successfully deleted"}
  end

end