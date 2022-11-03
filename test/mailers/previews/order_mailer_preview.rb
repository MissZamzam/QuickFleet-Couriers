# Preview all emails at http://localhost:3004/rails/mailers/order_mailer
class OrderMailerPreview < ActionMailer::Preview
  def new_order_email
    # Set up a temporary order for the preview
    # order = Order.new(senderName: "Zamzam", receiverName: "Janet", pickup: "Moringa", destination: "Nairobi", natureOfGoods: "Perishable")

    order =Order.first
    OrderMailer.new_order_email(order)
  end
end
