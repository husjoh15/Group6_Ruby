class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.string :image_url

      t.timestamps
    end
  end
end
