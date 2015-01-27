json.array!(@patrimony_item_categories) do |patrimony_item_category|
  json.extract! patrimony_item_category, :id, :category
  json.url patrimony_item_category_url(patrimony_item_category, format: :json)
end
