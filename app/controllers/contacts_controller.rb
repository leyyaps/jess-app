class ContactsController < ApplicationController
  def new
    @albums = Album.all
    @contact = Contact.new
   
    authorize @contact
  end

  def create
    @albums = Album.all

    @contact = Contact.new(params[:contact])

    # if verify_recaptcha(model: @contact) && @contact.save
    #   redirect_to @contact
    # else
    # render 'new'
    # end  
   
    if verify_recaptcha(model: @contact) && @contact.request
      redirect_to @contact
    else
      render 'new'
    end

    authorize @contact
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