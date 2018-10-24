json.art @art_pieces.each do |art|
  json.id art.id
  json.description art.description
  json.height art.height
  json.width art.width
  json.photo art.photo
  json.user art.user_id
end