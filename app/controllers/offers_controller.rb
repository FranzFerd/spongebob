class OffersController < ApplicationController

def index
     @offers = Offer.paginate(page: params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @offers }
    end
  end
  
#Edit function
  # GET /users/1/edit
 def edit
  @offer =current_offer
  @offer = Offer.find(params[:id])
  render "/offers/show/edit_info"
# @user.update_without_password(params[:user])
# else
#end
end



############################selbst gemacht, aber worked fine 'don't delete!!!
 def update
  @offer = current_offer
 @offer.attributes = params[:offer]
 @offer.user_id = current_user.id
if @offer.save
session[:offer_id] = @offer.id
redirect_to offer_path
else
render :new
end
end
################################################## dont delet ^^


#simple controller commands below
def show 
 # @offer = Offer.find(params[:id])
end
  
def new
@offer = Offer.new
end

#create action
def create
  @offer = Offer.new(params[:offer])
  @offer.user_id = current_user.id
  @offer.user = current_user
 if @offer.save
      session[:offer_id] = @offer.id
     redirect_to offer_steps_path
  else
      render :new
   end
end
end











end
