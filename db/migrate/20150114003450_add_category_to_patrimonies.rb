class AddCategoryToPatrimonies < ActiveRecord::Migration
  def change
    add_reference :patrimonies, :patrimony_item_category, index: true
  end
end
