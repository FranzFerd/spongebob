class EventStepsController < ApplicationController
  include Wicked::Wizard
 
  steps :personal, :social, :sponsorship
   before_filter :user_signed_in?, only: [:show, :update]
  
def show
  @event = current_event
    render_wizard
  end
  
  
  def update
    @event = current_event

    @event.attributes = params[:event]
    render_wizard @event
  end
  
private
 def finish_wizard_path
   event_path current_event , notice: 'Thanks for creating an event.'
end
end


