class ContactsController < ApplicationController

  def form
    @blogs = Blog.all_blogs
    if !params[:contact].nil?
      @contact = Contact.new(contact_params)
      @contact_success = "Thanks for subscribing we will not send you uwanted pramotional mails other than blog updates" if @contact.save!
    end
  rescue
    @contact_error = "Something went wrong please try again"
  end

  private

  def contact_params
    params.require(:contact).permit(:name, :email, :avatar, :phone, :company_name, :description, :blog_name, :subscribe_name)
  end
end
