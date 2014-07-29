class CreateContacts < ActiveRecord::Migration
  def change
    create_table :contacts do |t|
      t.boolean :write_blog
      t.boolean :just_subscribe
      t.string :name
      t.string :email
      t.string :avatar
      t.integer :phone
      t.string :company_name
      t.text :description
      t.string :subscribe_name
      t.boolean :subscribe

      t.timestamps
    end
  end
end
