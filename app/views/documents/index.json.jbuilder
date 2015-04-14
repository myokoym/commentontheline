json.array!(@documents) do |document|
  json.extract! document, :id, :title, :text, :user_id
  json.url document_url(document, format: :json)
end
