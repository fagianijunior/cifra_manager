class CreateMusics < ActiveRecord::Migration
  def change
    create_table :musics do |t|
      t.string :title
      t.text :chord
      t.text :lyric
      t.string :obs
      t.boolean :in_use

      t.timestamps
    end
  end
end
