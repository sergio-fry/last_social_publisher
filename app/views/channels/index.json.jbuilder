json.array!(@channels) do |channel|
  json.extract! channel, :id, :title, :publisher_klass, :credentials
  json.url channel_url(channel, format: :json)
end
