json.array!(@repertoires) do |repertoire|
  json.extract! repertoire, :id, :order, :music_id
  json.url repertoire_url(repertoire, format: :json)
end
