class ContactsController < ApplicationController
  def new
    @albums = Album.all
    @contact = Contact.new
  end

  def create
    @albums = Album.all
    @contact = Contact.new(params[:contact])
    @contact.request = request
    if @contact.deliver

      redirect_to root_path(@contact, anchor: 'contact_form')
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'

    else
      redirect_to root_path(@contact, anchor: 'contact_form')
      flash.now[:error] = 'Cannot send message. Please try again.'
   
    end
  end
end