class Api::EventsController < ApplicationController

  def create
    @event = Event.new(
      id: params[:id],
      name: params[:name],
      start_time: params[:start_time],
      end_time: params[:end_time],
      date: params[:date],
      cover: params[:cover],
      age_limit: params[:age_limit],
      image: params[:image],
      venue_id: params[:venue_id]
    )
    if @event.save
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
    @event.name = params[:name] || @event.name
    @event.start_time = params[:start_time] || @event.start_time
    @event.end_time = params[:end_time] || @event.end_time
    @event.date = params[:date] || @event.date
    @event.cover = params[:cover] || @event.cover
    @event.age_limit = params[:age_limit] || @event.age_limit
    @event.image = params[:image] || @event.image
    @event.venue_id = params[:venue_id] || @event.venue_id
    if @event.save
      render "show.json.jb"
    else
      render json: { errors: @event.errors.full_messages },
      status: :unprocessable_entity
    end
  end

  def destroy
    @event = Event.find_by(id: params[:id])
    @event.destroy
    render json: {message: "Event successfully deleted"}
  end

end
