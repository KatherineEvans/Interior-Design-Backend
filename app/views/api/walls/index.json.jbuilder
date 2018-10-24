json.walls @walls.each do |wall|
  json.id wall.id
  json.color wall.color
  json.user wall.user_id
  json.height wall.height
  json.width wall.width
  json.measurement wall.measurement
end