class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :name
      t.string :feat
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
