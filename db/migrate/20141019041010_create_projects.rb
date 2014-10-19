class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.string :img_url
      t.string :url
      t.integer :user_id
      t.string :short_description
      t.timestamps
    end
  end
end
