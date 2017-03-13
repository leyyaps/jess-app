class CreateAlbums < ActiveRecord::Migration[5.0]
  def change
    create_table :albums do |t|
      t.string :image
      t.string :artist
      t.string :itunes_link
      t.string :track_1
      t.string :track_2
      t.string :track_3
      t.string :track_4
      t.string :track_5
      t.string :track_6
      t.string :track_7
      t.string :track_8
      t.string :track_9
      t.string :track_10

      t.timestamps
    end
  end
end
