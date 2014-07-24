class Blog < ActiveRecord::Base
  validates :name, presence: true
  mount_uploader :blog_logo, BlogLogoUploader

  before_save { |blog| blog.name = blog.name.titleize }
  before_save { |blog| blog.lead = blog.lead.titleize }


  #def name=(val)
  #  write_attribute(:name, val.titleize)
  #end
  #
  #def lead=(val)
  #  write_attribute(:lead, val.titleize)
  #end
end