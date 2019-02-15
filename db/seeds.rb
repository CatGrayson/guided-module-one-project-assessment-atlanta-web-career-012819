

cat = User.create(name: 'Cat', age: 35, favorite_color: 'green', zodiac_sign: 'Virgo', status: true)
emily = User.create(name: 'Emily', age: 29, favorite_color: 'pink', zodiac_sign: 'Sagittarius', status: true)
arthur = User.create(name: 'Arthur', age: 35, favorite_color: 'green', zodiac_sign: 'Aries', status: true)
tez = User.create(name: 'Tez', age: 29, favorite_color: 'red', zodiac_sign: 'Pisces', status: true)
ronnie = User.create(name: 'Ronnie', age: 23, favorite_color: 'black', zodiac_sign: 'Cancer', status: true)


loving = Video.create(url: 'https://youtu.be/5GTbM5-ku-M', title: 'John Mayer - Edge Of Desire [HQ]', category: 'jazz', mood: 'loving')
sad = Video.create(url: 'https://www.youtube.com/watch?v=O3MICvgXvHM', title: 'Covered in Rain (Live at the Oak Mountain Amphitheater, Birmingham, AL - September 2002)', category: 'sad', mood: 'sad')
angry = Video.create(url: 'https://www.youtube.com/watch?v=HGC0U6Gb760', title: 'John Mayer - The Hurt (@ The Hotel Cafe) Audio Only', category: 'angry', mood: 'angry')
joyful = Video.create(url: 'https://youtu.be/3uA_ya8DcLs', title: 'John Mayer - Heart Of Life (Live in LA) [High Def!]', category: 'joyful', mood: 'joyful')
afraid = Video.create(url: 'https://youtu.be/bCxLRJS40J8', title: 'John Mayer - Clarity (with lyrics)', category: 'afraid', mood: 'afraid')
surprised = Video.create(url: 'https://youtu.be/yW38el2JzWo', title: 'John Mayer Trio - Who Did You Think I Was', category: '', mood: 'surprised')


favorite1 = Favorite.create(user_id: cat.id, video_id: loving.id)
favorite2 = Favorite.create(user_id: emily.id, video_id: sad.id)
favorite3 = Favorite.create(user_id: arthur.id, video_id: angry.id)
favorite4 = Favorite.create(user_id: tez.id, video_id: joyful.id)
favorite5 = Favorite.create(user_id: ronnie.id, video_id: afraid.id)
