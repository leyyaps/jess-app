class ContactsController < ApplicationController
  def new
    @albums = Album.all
    @contact = Contact.new
   
    authorize @contact
  end

  def create
    @albums = Album.all

    @contact = Contact.new(params[:contact])
   

    authorize @contact
    @contact.request = request

    # if verify_recaptcha(model: @contact)
    #   redirect_to root_path(@contact, anchor: 'contact_form')
    # else
    # render 'new'
    # end  

    
    if verify_recaptcha(model: @contact) && @contact.deliver
      flash[:notice] = 'Thank you for your message. We will contact you soon!'

      redirect_to root_path(@contact, anchor: 'contact_form')
     

    else
     
      flash[:error] = 'Cannot send message. Please try again.'
      redirect_to root_path(@contact, anchor: 'contact_form')
         
    end
  end
end