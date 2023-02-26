class CreateGreatMonuments < ActiveRecord::Migration[7.0]
  def change
    create_table :great_monuments do |t|
      t.string :name
      t.references :era, null: false, foreign_key: true

      t.timestamps
    end
  end
end
