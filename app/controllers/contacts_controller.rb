class ContactsController < ApplicationController

  def form
    @blog = Blog.new
  end
end
