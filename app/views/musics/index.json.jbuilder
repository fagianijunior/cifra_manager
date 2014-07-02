json.array!(@musics) do |music|
  json.extract! music, :id, :title, :chord, :lyric, :obs, :in_use
  json.url music_url(music, format: :json)
end
