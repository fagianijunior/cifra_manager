class RemoveInUseFromMusic < ActiveRecord::Migration
  def change
    remove_column :musics, :in_use
  end
end
