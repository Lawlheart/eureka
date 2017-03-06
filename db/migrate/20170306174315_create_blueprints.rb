class CreateBlueprints < ActiveRecord::Migration[5.0]
  def change
    create_table :blueprints do |t|
      t.string :name
      t.text :description
      t.string :source
      t.string :source_url
      t.string :demo_url
      t.integer :user_id
    end
  end
end
