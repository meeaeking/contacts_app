class Api::ContactsController < ApplicationController
  def contact_info
    render contact.json.jb
  end
end
