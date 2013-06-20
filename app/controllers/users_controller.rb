class UsersController < ApplicationController

 #  before_filter :authenticate_user!, only: [:show,:edit]
#   before_filter :current_user,   only: [:edit, :update]
    
#Users Controller ###Users here refers to all Users # sponsors are identified by a special tag in database while signup 

#GET users/all 
  def index
       @users = User.paginate(page: params[:page])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @users }  
  end
end 

# GET /users/1
# GET /users/1.json
def show
@user = User.find(params[:id])
respond_to do |format|
   format.html # show.html.erb
  format.json { render json: @user }
end
 end

#unknown so far
def new
    @user = User.new
  end


#Funtions for the User Show Views ## 
#edit function 
def edit
  @user =current_user
end 

#event function 
def events
  @user = current_user
end 
####end of Funtions for the User Show Views  ##



#GET ....
  def create
    @user = User.new(params[:user])
    if @user.save
      session[:user_id] = @user.id
      redirect_to user_steps_path
    else
      render :new
    end
  end
end 