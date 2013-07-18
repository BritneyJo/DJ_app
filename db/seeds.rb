# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Genre.destroy_all
g1 = Genre.create(name: 'Funk')
g2 = Genre.create(name: 'Electronica')
g3 = Genre.create(name: 'Drum & Bass')
g4 = Genre.create(name: 'Hip Hop')

User.destroy_all
u1 = User.create(name:'BritJo', location:'London', bio:'coolest admin ever', email: 'britneyjo@me.com', password: 'password', password_confirmation: 'password', role: 'admin', title_color: '' )
u2 = User.create(name: 'Pretty Lights', location: 'Fort Collins, Colorado', bio: 'Derek Vincent Smith, also known as Pretty Lights, is 31 years old, and his sign is a Sagittarius.', email: 'prettylights@dj.com', password: 'music', password_confirmation: 'music', avatar_image: 'http://live360booking.com/wp-content/uploads/2012/02/pretty-lights-music-49313-199x300.jpg', role:'dj', title_color: '' )
u3 = User.create(name: 'Bassnectar', location: 'Santa Cruz, California', bio: 'Bassnectar is 35 years old, and his zodiac is Aquarius.', email: 'bassnectar@dj.com', password: 'music', password_confirmation:'music', avatar_image: 'http://gypsysphere.files.wordpress.com/2011/02/bassnectar05.jpg?w=480&h=320', role:'dj', title_color: '' )

MusicTrack.destroy_all
m1 = MusicTrack.create(name: 'Finally Moving', release_date: '2006-10-23', track_file: 'finallymoving.mp3', description: 'This song is popular amongst fans and is a favorite at live performances.', user_id: u2.id )
m2 = MusicTrack.create(name:'Upside Down', release_date: '2011-08-02', track_file:'upsidedown.mp3', description:'This track is the first single on the Divergent Spectrum album.', user_id: u3.id)


