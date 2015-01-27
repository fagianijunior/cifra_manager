json.array!(@patrimonies) do |patrimony|
  json.extract! patrimony, :id, :item, :price, :date_of_entry, :date_of_exit, :department_id, :defect, :more_info
  json.url patrimony_url(patrimony, format: :json)
end
