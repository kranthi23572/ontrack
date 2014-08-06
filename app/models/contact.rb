class Contact < ActiveRecord::Base
  attr_accessor :name
  mount_uploader :avatar, AvatarUploader
  validate :validate_fileds

  private

  def validate_fileds
    validate_name
    validate_email
    validate_phone
    validate_company_name
    validate_description
    validate_blog_name
    validate_subscribe_name
    validate_avatar
  end

  def validate_name
    errors.add(:name, "Supply valid name") if name.blank?
  end

  def validate_email
    errors.add(:email, "Supply valid email") if (not email =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i)
  end

  def validate_phone
    errors.add(:phone, "Supply valid phone") if (not phone =~ /\A[-+]?[0-9]+\z/)
  end

  def validate_company_name
    errors.add(:company_name,"Supply valid company name") if company_name.blank?
  end

  def validate_description
    errors.add(:description, "Supply valid description") if (not valid_description)
  end

  def validate_blog_name
    errors.add(:blog_name, "Select valid blog name") if blog_name.blank?
  end

  def validate_subscribe_name
    errors.add(:subscribe_name, "Select valid subscribe name") if subscribe_name.blank?
  end

  def validate_avatar
    errors.add(:avatar, "Select your avatar") if avatar.blank?
  end
end

#params.require(:contact).permit(:name, :email, :avatar, :phone, :company_name, :description, :blog_name, :subscribe_name)
