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
      flash[:notice] = 'Thank you for your message. We will contact you soon!'

      redirect_to root_path(@contact, anchor: 'contact_form')
     

    else
     
      flash[:error] = 'Cannot send message. Please try again.'
      redirect_to root_path(@contact, anchor: 'contact_form')
         
    end
  end
end