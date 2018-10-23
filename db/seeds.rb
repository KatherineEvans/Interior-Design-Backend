# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(first_name: "Katherine", last_name: "Evans", email: "katherine@email.com", password: "password")
User.create!(first_name: "Chris", last_name: "Ngo", email: "chris@email.com", password: "password")
User.create!(first_name: "Mike", last_name: "Lulich", email: "mike@email.com", password: "password")
User.create!(first_name: "Vish", last_name: "Umakanthan", email: "vish@email.com", password: "password")
User.create!(first_name: "Jacob", last_name: "Ledesma", email: "jacob@email.com", password: "password")

ArtPiece.create!(description: "Mona Lisa -da Vinci", height: 30, width: 21, user_id: 1, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/commons/thumb/e/ec/Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg/687px-Mona_Lisa%2C_by_Leonardo_da_Vinci%2C_from_C2RMF_retouched.jpg")
ArtPiece.create!(description: "Starry Night - Van Gogh", height: 29, width: 36, user_id: 2, measurement: "in", photo: "http://wisetoast.com/wp-content/uploads/2015/10/Starry-Night-by-Vincent-Van-Gogh-painting.jpg")
ArtPiece.create!(description: "The Scream - Munch", height: 91, width: 73, user_id: 3, measurement: "cm", photo: "https://upload.wikimedia.org/wikipedia/commons/f/f4/The_Scream.jpg")
ArtPiece.create!(description: "American Gothic - Wood", height: 29, width: 25, user_id: 4, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/commons/7/71/Grant_DeVolson_Wood_-_American_Gothic.jpg")
ArtPiece.create!(description: "Persistance of Memory - Dali", height: 9, width: 13, user_id: 5, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/en/thumb/d/dd/The_Persistence_of_Memory.jpg/300px-The_Persistence_of_Memory.jpg")
ArtPiece.create!(description: "The Girl with the Pearl Earing - Vermeer", height: 18, width: 15, user_id: 5, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/commons/6/66/Johannes_Vermeer_%281632-1675%29_-_The_Girl_With_The_Pearl_Earring_%281665%29.jpg")
ArtPiece.create!(description: "View of Toledo - El Greco", height: 19, width: 17, user_id: 4, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/commons/1/17/View_of_Toledo_MET_DP349564.jpg")
ArtPiece.create!(description: "The Son of Man - Magrittees", height: 116, width: 89, user_id: 3, measurement: "cm", photo: "https://wisetoast.com/wp-content/uploads/2015/10/the-son-of-a-man-painting.jpg")
ArtPiece.create!(description: "Nocturne: Blue and Gold - Whistler", height: 27, width: 20, user_id: 2, measurement: "in", photo: "https://upload.wikimedia.org/wikipedia/commons/6/66/James_Abbot_McNeill_Whistler_006.jpg")
ArtPiece.create!(description: "The Kiss - Klimt", height: 71, width: 71, user_id: 1, measurement: "in", photo: "http://lh4.ggpht.com/UuYCUnqvo2EIZhyFHYFVLbkmma_cubVk7SwxOF3lklT6aor5647BXVhEaFB7jg=s1200")

Wall.create!(color: "#EEE164", height: 96, width: 120, user_id: 5, measurement: "in")
Wall.create!(color: "#DBEEC4", height: 100, width: 106, user_id: 4, measurement: "in")
Wall.create!(color: "#C4CDEE", height: 270, width: 213, user_id: 3, measurement: "cm")
Wall.create!(color: "#C4EAEE", height: 90, width: 120, user_id: 2, measurement: "in")
Wall.create!(color: "#EEC4C7", height: 106, width: 84, user_id: 1, measurement: "in")

UserWall.create!(art_id: 5, wall_id: 1)
UserWall.create!(art_id: 6, wall_id: 1)
UserWall.create!(art_id: 4, wall_id: 2)
UserWall.create!(art_id: 7, wall_id: 2)
UserWall.create!(art_id: 3, wall_id: 3)
UserWall.create!(art_id: 8, wall_id: 3)
UserWall.create!(art_id: 2, wall_id: 4)
UserWall.create!(art_id: 9, wall_id: 4)
UserWall.create!(art_id: 1, wall_id: 5)
UserWall.create!(art_id: 10, wall_id: 5)