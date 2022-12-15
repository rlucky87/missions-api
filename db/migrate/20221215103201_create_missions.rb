class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :mission_type
      t.date :date
      t.integer :price
      t.references :listing_id, null: false, foreign_key: true

      t.timestamps
    end
  end
end
