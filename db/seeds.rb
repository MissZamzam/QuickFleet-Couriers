puts "Start Seeding ...."

service1 = Service.create(
    image_url: "https://www.kindpng.com/picc/m/115-1153565_fruit-and-vegetable-basket-png-transparent-png.png",
    category: "On-Demand Delivery",
    description: "On-demand delivery simply means that customers have a choice to decide not just where they would like their products to be delivered, but also when — that is within the shortest delivery time possible"
)

service2 = Service.create(
    image_url: "https://media.istockphoto.com/photos/brown-recycled-paper-gift-parcels-picture-id520844431?k=20&m=520844431&s=170667a&w=0&h=rpidmCiVKYQ7V9tpWR42sQnvnv5asOu0MiMJ_muObao=",
    category: "Parcel Services",
    description: "Parcel shipping refers to shipping lighter, smaller boxed items. Typically, parcel means packages that weigh 100 pounds or less and can be moved without assistance. If you need to ship a few small packages at a time, parcel shipping is an economical way to ship your products."
)
service3 = Service.create(
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8XWc7z14b0Tg_RzEKrcGdkxu5cBMlDPqJQ&usqp=CAU",
    category: "Overnight Shipping",
    description: "Overnight shipping is a delivery service that guarantees shipments will be delivered the next day by a certain time."
)
service4 = Service.create(
    image_url: "https://img.freepik.com/free-photo/white-pill-container-blue-background_23-2148506747.jpg?w=2000",
    category: "Same Day Courier",
    description: "Same-day delivery is the act of delivering a package the same day it was sent. If a package is delivered before noon, for example, it will be delivered the same day, in the afternoon. Companies that offer this service advertise it as a same-day service."
)
service5 = Service.create(
    image_url: "https://i.pinimg.com/564x/ab/65/67/ab6567fca1d4911ba9462ab66911c881.jpg",
    category: "Perishable Items",
    description: "Same-day delivery is the act of delivering a package the same day it was sent. If a package is delivered before noon, for example, it will be delivered the same day, in the afternoon. Companies that offer this service advertise it as a same-day service."
)
service6 = Service.create(
    image_url: "https://i.pinimg.com/564x/ed/b5/fa/edb5fa86dfd287954847739585d13b47.jpg",
    category: "Flammable Items",
    description: "Same-day delivery is the act of delivering a package the same day it was sent. If a package is delivered before noon, for example, it will be delivered the same day, in the afternoon. Companies that offer this service advertise it as a same-day service."
)
service7 = Service.create(
    image_url: "https://media.sciencephoto.com/image/f0220694/800wm",
    category: "Bulk",
    description: "We charge bulk services per CBM ( cubic meters ). We ship goods to county headquarters from where we distribute to other branches for collection."
)
service8 = Service.create(
    image_url: "https://i.pinimg.com/236x/ef/4f/42/ef4f429cf7304f0c76a8f7c9e37fe24d.jpg",
    category: "Fragile Goods",
    description: "QuickFleet is a great option to trust for shipping your breakable products. QuickFleet can do the hard work for you by making sure your package is safe and intact. Plus, QuickFleet offers multiple shipping box sizes so they can customize a box fit for your needs."
)





# Receipt.create([
#     {
#     "receipt_no": "KEN123456",
#     "sender_name": "Grace Neema",
#     "receiver_name": "Marion Jefwa",
#     "amount_paid": 8500,
#     "nature_of_goods": "Flamable",
#     "pickup": "Kawangware",
#     "destination": "Kenyatta",
#     "delivery_id": 1,
#     "created_at": "2022-10-24T07:00:47.076Z",
#     "updated_at": "2022-10-24T07:01:51.306Z"
#     },
#     {
#     "receipt_no": "KEN4563211",
#     "sender_name": "Neema Maitha",
#     "receiver_name": "Tuma Marion",
#     "amount_paid": 10000,
#     "nature_of_goods": "Fragile",
#     "pickup": "Moringa",
#     "destination": "CBD",
#     "delivery_id": 2,
#     "created_at": "2022-10-24T07:03:48.845Z",
#     "updated_at": "2022-10-24T07:03:48.845Z"
#     },
#     {
#     "receipt_no": "KEN875543",
#     "sender_name": "Nickson Shuku",
#     "receiver_name": "Mkare Griffins",
#     "amount_paid": 9000,
#     "nature_of_goods": "Perishable",
#     "pickup": "Kenyatta",
#     "destination": "Zimmer",
#     "delivery_id": 3,
#     "created_at": "2022-10-24T07:05:17.263Z",
#     "updated_at": "2022-10-24T07:05:17.263Z"
#     },
#     {
#     "receipt_no": "KEN4563211",
#     "sender_name": "Neema Maitha",
#     "receiver_name": "Tuma Marion",
#     "amount_paid": 10000,
#     "nature_of_goods": "Fragile",
#     "pickup": "Moringa",
#     "destination": "CBD",
#     "delivery_id": 4,
#     "created_at": "2022-10-24T07:09:09.190Z",
#     "updated_at": "2022-10-24T07:09:09.190Z"
#     },
#     {
#     "receipt_no": "KEN875543",
#     "sender_name": "Shuku Nickson",
#     "receiver_name": "Griffins Mkare",
#     "amount_paid": 9000,
#     "nature_of_goods": "Perishable",
#     "pickup": "Moringa",
#     "destination": "Coptic",
#     "delivery_id": 5,
#     "created_at": "2022-10-24T07:24:43.210Z",
#     "updated_at": "2022-10-24T07:24:43.210Z"
#     }
# ])

# 5.times do
# seeded_deliveries = Delivery.create!(
#     receiver_name: Faker::Name.name,
#     receiver_contact: Faker::PhoneNumber.cell_phone_with_country_code,
#     pickup_instructions: Faker::Lorem.word,
#     delivery_instructions: Faker::Lorem.word,
#     service_type: ["Same Day Courier", "On-Demand Delivery", "Overnight Shipping", "Parcel Services" ,"Same Day Courier"].sample,
#     package_details: Faker::Lorem.sentences(number: 1),
# )
# end

# 5.times do
#     seeded_orders = Order.create(
#         sender_name: Faker::Name.name,
#         receiver_name: Faker::Name.name,
#         amount_paid: Faker::Commerce.price(range: 500...2500, as_string: true),
#         nature_of_goods: Faker::Construction.material,
#         pickup:Faker::Address.mail_box,
#         destination:Faker::Address.mail_box,
#         service_id: rand(1..4),
#         delivery_id: rand(1..5),
#         receipt_id: rand(1..5)

#     )
# end
# Receipt.create(
#     [
# {
# "id": 1,
# "receipt_no": "KEN123456",
# "sender_name": "Grace Neema",
# "receiver_name": "Marion Jefwa",
# "amount_paid": 8500,
# "nature_of_goods": "Flamable",
# "pickup": "Kawangware",
# "destination": "Kenyatta",
# "delivery_id": 1,
# "created_at": "2022-10-24T07:00:47.076Z",
# "updated_at": "2022-10-24T07:01:51.306Z"
# },
# {
# "id": 2,
# "receipt_no": "KEN4563211",
# "sender_name": "Neema Maitha",
# "receiver_name": "Tuma Marion",
# "amount_paid": 10000,
# "nature_of_goods": "Fragile",
# "pickup": "Moringa",
# "destination": "CBD",
# "delivery_id": 2,
# "created_at": "2022-10-24T07:03:48.845Z",
# "updated_at": "2022-10-24T07:03:48.845Z"
# },
# {
# "id": 3,
# "receipt_no": "KEN875543",
# "sender_name": "Nickson Shuku",
# "receiver_name": "Mkare Griffins",
# "amount_paid": 9000,
# "nature_of_goods": "Perishable",
# "pickup": "Kenyatta",
# "destination": "Zimmer",
# "delivery_id": 3,
# "created_at": "2022-10-24T07:05:17.263Z",
# "updated_at": "2022-10-24T07:05:17.263Z"
# },
# {
# "id": 4,
# "receipt_no": "KEN4563211",
# "sender_name": "Neema Maitha",
# "receiver_name": "Tuma Marion",
# "amount_paid": 10000,
# "nature_of_goods": "Fragile",
# "pickup": "Moringa",
# "destination": "CBD",
# "delivery_id": 4,
# "created_at": "2022-10-24T07:09:09.190Z",
# "updated_at": "2022-10-24T07:09:09.190Z"
# },
# {
# "id": 5,
# "receipt_no": "KEN875543",
# "sender_name": "Shuku Nickson",
# "receiver_name": "Griffins Mkare",
# "amount_paid": 9000,
# "nature_of_goods": "Perishable",
# "pickup": "Moringa",
# "destination": "Coptic",
# "delivery_id": 5,
# "created_at": "2022-10-24T07:24:43.210Z",
# "updated_at": "2022-10-24T07:24:43.210Z"
# }
# ]
# )

puts "End Seeding ....."