class CreateRepertoires < ActiveRecord::Migration
  def change
    create_table :repertoires do |t|
      t.integer :order
      t.references :music, index: true

      t.timestamps
    end
  end
end
