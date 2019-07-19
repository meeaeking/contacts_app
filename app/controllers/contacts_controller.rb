class ContactsController < ApplicationController

  def index
    @contact = Contact.all
    render 'index.html.erb'
  end
end
