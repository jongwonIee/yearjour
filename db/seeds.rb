# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



Post.create(
    title: "피맥하자", content: "어서와", region: "파리, 프랑스",
    place: "피자집", date: "7월 29일", time: "18시", people: "5명",
    food: true, citytour: true, suburbtour: false, guidetour: false, concert: false,
    sports: false, gallery: false, museum: false, historic: false, room: false, car: false,
    male: false, female: true, age: 2,  style: 1, personality: 1, money: 1
)

Post.create(
    title: "파스타드실분!", content: "남자여자둘다환영!!", region: "파리, 프랑스",
    place: "파스타집", date: "7월 29일", time: "18시", people: "5명",
    food: true, citytour: true, suburbtour: false, guidetour: false, concert: false,
    sports: false, gallery: false, museum: false, historic: false, room: false, car: false,
    male: true, female: true, age: 2,  style: 5, personality: 5, money: 5
)

Post.create(
    title: "몽솅미셸구경하실분", content: "카셰어링가능하신분??", region: "파리, 프랑스",
    place: "몽솅미셸", date: "7월 29일", time: "18시", people: "2명",
    food: false, citytour: true, suburbtour: false, guidetour: false, concert: false,
    sports: false, gallery: false, museum: false, historic: false, room: false, car: true,
    male: true, female: true, age: 5,  style: 5, personality: 5, money: 5
)

Post.create(
    title: "킹고킹고에스카르킹고", content: "에스카르고 같이 드실 여성 2분!!", region: "파리, 프랑스",
    place: "chartier", date: "7월 29일", time: "12시", people: "4명",
    food: true, citytour: false, suburbtour: false, guidetour: false, concert: false,
    sports: false, gallery: false, museum: false, historic: false, room: false, car: true,
    male: false, female: true, age: 1,  style: 1, personality: 1, money: 1
)

Post.create(
    title: "마레지구에서 저녁 먹어요!", content: "혼밥 지겨우신 분들, 같이 마레지구에서 맛집투어해용!! 
혹시 가고 싶었던 가게 있으면 알려주셔도 좋아요 ㅎㅎ
자세한 건 같이 얘기하면서 정해요!", region: "파리, 프랑스",
    place: "마레지구", date: "7월 29일", time: "18시", people: "5명",
    food: true, citytour: true, suburbtour: false, guidetour: false, concert: false,
    sports: false, gallery: false, museum: false, historic: false, room: false, car: false,
    male: false, female: true, age: 2,  style: 1, personality: 1, money: 1
)