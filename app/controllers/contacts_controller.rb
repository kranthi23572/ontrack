class ContactsController < ApplicationController

  def form
    @contact = Contact.new
    @blogs = Blog.all_blogs
    if !params[:contact].nil?
      @contact = Contact.new(contact_params)
      flash[:success] = "Thanks for subscribing we will not send you uwanted pramotional mails other than blog updates" if @contact.save!
    end
  rescue
    flash[:error] = "Something went wrong please try again"
  end

  def new
    @contact = Contact.new
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :avatar, :phone, :company_name, :description, :blog_name, :subscribe_name)
  end
end