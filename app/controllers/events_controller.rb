class EventsController < ApplicationController
  
  before_filter :login_required, :except => [:index, :show]
  
  # Refactor this shit!
  before_filter :authority_required, :except => [:index, :show, :create, :new] 
  
  def index
    @events = Event.all
  end
  
  def show
    @event = Event.find(params[:id])
    
    if @event.author?(current_user) 
      @note = Note.new
    end
  end
  
  def new
    @event = Event.new
  end
  
  def create
    @event = Event.new(params[:event])
    @event.user = current_user
    
    if @event.save
      flash[:notice] = "Successfully created event."
      redirect_to @event
    else
      render :action => 'new'
    end
  end
  
  def edit
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:notice] = "Successfully updated event."
      redirect_to @event
    else
      render :action => 'edit'
    end
  end
  
  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Successfully destroyed event."
    redirect_to events_url
  end
end
