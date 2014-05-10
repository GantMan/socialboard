json.array!(@keywords) do |keyword|
  json.extract! keyword, :id, :text, :board_id, :blacklist
  json.url keyword_url(keyword, format: :json)
end
