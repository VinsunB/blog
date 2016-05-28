class ContactsController < ApplicationController


def new
@contact = Contact.new
end


def create

@contact = Contact.create(contact_params)


	#params[:name] = @contact.email
	#params[:email] = @contact.name


if @contact.save

	 Emailer.send_to_me(@contact.email, @contact.name, params[:content]).deliver
	flash[:notice] = "Sent email"
	redirect_to :back
else
	flash[:notice] = "error sending mail"
	redirect_to :back
end
end

private


def contact_params
params.require(:contact).permit(:name, :email)
	end

end
