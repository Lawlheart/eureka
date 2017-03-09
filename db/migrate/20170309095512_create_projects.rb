class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.integer :blueprint_id
      t.integer :user_id
      t.string :demo_url, default: ''
      t.string :image_url, default: ''
      t.string :status, default: ''
    end
  end
end
