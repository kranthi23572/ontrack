class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :no_of_blogs
      t.string :lead

      t.timestamps
    end
  end
end
