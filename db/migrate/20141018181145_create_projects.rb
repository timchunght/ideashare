class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :search
      t.string :title
      t.string :short_description
      

      t.timestamps
    end
  end
end
