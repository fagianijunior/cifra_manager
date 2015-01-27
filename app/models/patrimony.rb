class Patrimony < ActiveRecord::Base
  belongs_to :department
  belongs_to :patrimony_item_category

  before_save { self.item = item.upcase }
  before_save { self.price ||= 0.00 }
  
  validates :item, presence: true
  validates :patrimony_item_category_id, presence: true
  

end
