class Blog < ActiveRecord::Base
  validates :name, :presence => { :message => "Supply valid name" }
  mount_uploader :blog_logo, BlogLogoUploader
  scope :all_blogs, -> { pluck(:name) }

  before_save { |blog| blog.name = blog.name.titleize }
  before_save { |blog| blog.lead = blog.lead.titleize }

#  has_many :contacts



  #def self.all_blogs
  #  pluck(:name)
  #end

  #def name=(val)
  #  write_attribute(:name, val.titleize)
  #end
  #
  #def lead=(val)
  #  write_attribute(:lead, val.titleize)
  #end
end
