class CreateSongs < ActiveRecord::Migration[5.2]
  def change
    create_table :songs do |t|
      t.string :name
      t.string :preview_url
      t.integer :number
      t.references :album, foreign_key: true

      t.timestamps
    end
  end
end
