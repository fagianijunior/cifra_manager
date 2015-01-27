class CreatePatrimonies < ActiveRecord::Migration
  def change
    create_table :patrimonies do |t|
      t.string :item
      t.float :price
      t.date :date_of_entry
      t.date :date_of_exit
      t.references :department, index: true
      t.boolean :defect
      t.text :more_info

      t.timestamps
    end
  end
end
