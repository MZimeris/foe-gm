class AddLevelsToEras < ActiveRecord::Migration[7.0]
  def change
    add_column :eras, :Level1, :integer
    add_column :eras, :Level2, :integer
    add_column :eras, :Level3, :integer
    add_column :eras, :Level4, :integer
    add_column :eras, :Level5, :integer
    add_column :eras, :Level6, :integer
    add_column :eras, :Level7, :integer
    add_column :eras, :Level8, :integer
    add_column :eras, :Level9, :integer
    add_column :eras, :Level10, :integer
  end
end
