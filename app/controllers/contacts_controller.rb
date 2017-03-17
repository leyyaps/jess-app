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
      flash.now[:notice] = 'Thank you for your message. We will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message. Please try again.'
      render :new
    end
  end
end