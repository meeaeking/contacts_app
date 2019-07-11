class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      middle_name: params[:middle_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email],
      bio: params[:bio]
      )
    if @contact.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end

  def show
    @contact = Contact.find_by(id: params[:id])

    render 'show.json.jb'
  end

  def update
    @contact = Contact.find_by(id: params[:id])
    @contact.first_name = params[:first_name]
    @contact.last_name = params[:last_name]
    @contact.phone_number = params[:phone_number]
    @contact.email = params[:email]
    @contact.middle_name = params[:middle_name]
    @contact.bio = params[:bio]
    if @contact.save
      render 'show.json.jb'
    else
      render 'errors.json.jb', status: :unprocessible_entity
    end
  end

  def destroy
    @contact = Contact.find_by(id: params[:id])
    @contact.destroy
    render 'destory.json.jb'
  end
end
