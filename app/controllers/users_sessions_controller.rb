class UsersSessionsController < ApplicationController
  def new
  end

def create
@user = User.find_by_email(params[:email])
if @user && @user.name == params[:name]
	session[:user_id] = @user.id 
flash[:notice] = "Logged In"
redirect_to root_path
else
	flash.now[:notice] = "password or name incorrect"
	render 'new'
end
end 

end
