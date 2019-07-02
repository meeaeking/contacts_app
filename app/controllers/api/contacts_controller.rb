class Api::ContactsController < ApplicationController
  def index
    @contact = Contact.all
    render 'index.json.jb'
  end

  def create
    @contact = Contact.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      phone_number: params[:phone_number],
      email: params[:email]
      )
    render 'show.json.jb'
  end

  def show
    @contact = Contact.find_by(id: params[:id])

    render 'show.json.jb'
  end
end
