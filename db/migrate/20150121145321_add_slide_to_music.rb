class AddSlideToMusic < ActiveRecord::Migration
  def change
    add_column :musics, :slide, :string
  end
end
