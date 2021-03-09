class Api::EventsController < ApplicationController

  before_action :authenticate_venue, except: [:index, :show]

  def create
    @event = Event.new(
      name: params[:name],
      start_time: params[:start_time],
      end_time: params[:end_time],
      date: params[:date],
      cover: params[:cover],
      age_limit: params[:age_limit],
      image: params[:image],
      venue_id: current_venue.id
    )
    if @event.save
      event_bands = eval(params[:event_bands])
      event_bands.each do |event_band|
        EventBand.create(
          band_id: event_band[:band_id],
          event_id: @event.id,
          start_time: event_band[:start_time],
          end_time: event_band[:end_time],
          order: event_band[:order]
        )
      end
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def index
    @events = Event.all
    render "index.json.jb"
  end

  def show
    @event = Event.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @event = Event.find_by(id: params[:id])
    if current_venue.id == @event.venue_id
      @event.name = params[:name] || @event.name
      @event.start_time = params[:start_time] || @event.start_time
      @event.end_time = params[:end_time] || @event.end_time
      @event.date = params[:date] || @event.date
      @event.cover = params[:cover] || @event.cover
      @event.age_limit = params[:age_limit] || @event.age_limit
      @event.image = params[:image] || @event.image
      @event.venue_id = current_venue.id || @event.venue_id
      if @event.save
        render "show.json.jb"
      else
        render json: { errors: @event.errors.full_messages },
        status: :unprocessable_entity
      end
    else
      render json: {}, status: :unauthorized
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    if current_venue.id == @event[:venue_id]
      @event.destroy
      render json: {message: "Event successfully deleted"}
    else
      render json: {}, status: :unauthorized
    end
  end

end
