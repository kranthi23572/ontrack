class AddBlogLogoToBlogs < ActiveRecord::Migration
  def change
    add_column :blogs, :blog_logo, :string
  end
end
