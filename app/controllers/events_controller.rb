class EventsController < ApplicationController
  def index
    @events = Event.all
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    @event.save!
    redirect_to :action => :index
  end
end