json.array!(@boards) do |board|
  json.extract! board, :id, :title, :subtitle, :autoshow, :delay, :repeat, :curated
  json.url board_url(board, format: :json)
end
