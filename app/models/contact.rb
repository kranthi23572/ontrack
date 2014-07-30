class Contact < ActiveRecord::Base
  mount_uploader :avatar, AvatarUploader
  #has_one_and_belongs_to :blogs
end
