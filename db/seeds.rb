puts "Start Seeding ...."

delivery1 = Delivery.create(
    image_url: "https://www.kindpng.com/picc/m/115-1153565_fruit-and-vegetable-basket-png-transparent-png.png",
    category: "On-Demand Delivery",
    description: "On-demand delivery simply means that customers have a choice to decide not just where they would like their products to be delivered, but also when — that is within the shortest delivery time possible"
)

delivery2 = Delivery.create(
    image_url: "https://media.istockphoto.com/photos/brown-recycled-paper-gift-parcels-picture-id520844431?k=20&m=520844431&s=170667a&w=0&h=rpidmCiVKYQ7V9tpWR42sQnvnv5asOu0MiMJ_muObao=",
    category: "Parcel Services",
    description: "Parcel shipping refers to shipping lighter, smaller boxed items. Typically, parcel means packages that weigh 100 pounds or less and can be moved without assistance. If you need to ship a few small packages at a time, parcel shipping is an economical way to ship your products."
)
delivery3 = Delivery.create(
    image_url: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTY8XWc7z14b0Tg_RzEKrcGdkxu5cBMlDPqJQ&usqp=CAU",
    category: "Overnight Shipping",
    description: "Overnight shipping is a delivery service that guarantees shipments will be delivered the next day by a certain time."
)
delivery4 = Delivery.create(
    image_url: "https://img.freepik.com/free-photo/white-pill-container-blue-background_23-2148506747.jpg?w=2000",
    category: "Same Day Courier",
    description: "Same-day delivery is the act of delivering a package the same day it was sent. If a package is delivered before noon, for example, it will be delivered the same day, in the afternoon. Companies that offer this service advertise it as a same-day service."
)

Receipt.create([
    {
    "receipt_no": "KEN123456",
    "sender_name": "Grace Neema",
    "receiver_name": "Marion Jefwa",
    "amount_paid": 8500,
    "nature_of_goods": "Flamable",
    "pickup": "Kawangware",
    "destination": "Kenyatta",
    "delivery_id": 1,
    "created_at": "2022-10-24T07:00:47.076Z",
    "updated_at": "2022-10-24T07:01:51.306Z"
    },
    {
    "receipt_no": "KEN4563211",
    "sender_name": "Neema Maitha",
    "receiver_name": "Tuma Marion",
    "amount_paid": 10000,
    "nature_of_goods": "Fragile",
    "pickup": "Moringa",
    "destination": "CBD",
    "delivery_id": 2,
    "created_at": "2022-10-24T07:03:48.845Z",
    "updated_at": "2022-10-24T07:03:48.845Z"
    },
    {
    "receipt_no": "KEN875543",
    "sender_name": "Nickson Shuku",
    "receiver_name": "Mkare Griffins",
    "amount_paid": 9000,
    "nature_of_goods": "Perishable",
    "pickup": "Kenyatta",
    "destination": "Zimmer",
    "delivery_id": 3,
    "created_at": "2022-10-24T07:05:17.263Z",
    "updated_at": "2022-10-24T07:05:17.263Z"
    },
    {
    "receipt_no": "KEN4563211",
    "sender_name": "Neema Maitha",
    "receiver_name": "Tuma Marion",
    "amount_paid": 10000,
    "nature_of_goods": "Fragile",
    "pickup": "Moringa",
    "destination": "CBD",
    "delivery_id": 4,
    "created_at": "2022-10-24T07:09:09.190Z",
    "updated_at": "2022-10-24T07:09:09.190Z"
    },
    {
    "receipt_no": "KEN875543",
    "sender_name": "Shuku Nickson",
    "receiver_name": "Griffins Mkare",
    "amount_paid": 9000,
    "nature_of_goods": "Perishable",
    "pickup": "Moringa",
    "destination": "Coptic",
    "delivery_id": 5,
    "created_at": "2022-10-24T07:24:43.210Z",
    "updated_at": "2022-10-24T07:24:43.210Z"
    }
])

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