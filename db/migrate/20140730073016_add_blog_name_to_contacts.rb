class AddBlogNameToContacts < ActiveRecord::Migration
  def change
    add_column :contacts, :blog_name, :string
  end
end
