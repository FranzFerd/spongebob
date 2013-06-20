class EventsController < ApplicationController
	before_filter :authenticate_user!, only: [:show, :new] #for actions listed in brackets the user is required to login
 
#index all events
def index
     @events = Event.paginate(page: params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @events }
    end
  end
  


#eigenhändig eingefügt ________________
 # def edit
 #   @user =current_user
  #  @event = current_event
#  @event = Event.find(params[:id])
#end 




#Edit function
  # GET /users/1/edit
 def edit
  @event =current_event
  @event = Event.find(params[:id])
  render "/events/show/edit_info"
# @user.update_without_password(params[:user])
# else
#end
end

#function to call for single show pages
def editspeakerscertificates
  @event =current_event
  @event = Event.find(params[:id])
 render "/events/show/editspeakerscertificates"
# @user.update_without_password(params[:user])
# else
#end
end

#function to call for single show_pages
def editsponsoroffer
      @event =current_event
  @event = Event.find(params[:id])
 render "/events/show/editsponsoroffer"
end
  
#function to call for single show_pages
def eventlocation
  @event = current_event
   @event = Event.find(params[:id])
    render "/events/show/location"
#@event = Event.find(params[:id])
#respond_to do |format|
 # format.html # show.html.erb
#format.json { render json: @user }
end
#end
#function to call for single show_pages
def speakerscertificates
  @event = current_event
   @event = Event.find(params[:id])
    render "/events/show/speakerscertificates"
end

#function to call for single show_pages
def picsandvideos
  @event = current_event
   @event = Event.find(params[:id])
    render "/events/show/picsandvideos"
end

#function to call for single show_pages
def sponsoroffer
  @event = current_event
   @event = Event.find(params[:id])
    render "/events/show/sponsoroffer"
end

  
#def update
 #   @event = current_event

  #  @event.attributes = params[:event]
   # render_wizard @event
  #end
#____________________________________________siehe oben (notfalles löschenzwischen linien)


############################selbst gemacht, aber worked fine 'don't delete!!!
 def update
  @event = current_event
 @event.attributes = params[:event]
 @event.user_id = current_user.id
if @event.save
session[:event_id] = @event.id
redirect_to event_path
else
render :new
end
end
################################################## dont delet ^^


#pretty sure this is not necessary
 def new2
     @events = Event.paginate(page: params[:page])
   respond_to do |format|
    format.html # index.html.erb
   format.json { render json: @events }
end
end
  


#simple controller commands below
def show 
  @event = Event.find(params[:id])
end
  
def new
@event = Event.new
end

#create action
def create
  @event = Event.new(params[:event])
  @event.user_id = current_user.id
  @event.user = current_user
 if @event.save
      session[:event_id] = @event.id
     redirect_to event_steps_path
  else
      render :new
   end
end
end
  
