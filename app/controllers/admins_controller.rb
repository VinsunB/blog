class AdminsController < ApplicationController


def new
end


def create
admin = Admin.find_by_email(params[:email])
if admin && admin.authenticate(params[:password])
session[:admin] = true
	redirect_to root_path
else
	render 'new'
	end
end

def destroy
session[:admin] = nil
redirect_to root_path
	end

end
