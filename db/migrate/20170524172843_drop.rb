class Drop < ActiveRecord::Migration[5.0]
  def change
    remove_column :albums, :track_1
    remove_column :albums, :track_2
    remove_column :albums, :track_3
    remove_column :albums, :track_4
    remove_column :albums, :track_5
    remove_column :albums, :track_6
    remove_column :albums, :track_7
    remove_column :albums, :track_8
    remove_column :albums, :track_9
    remove_column :albums, :track_10
  end
end
