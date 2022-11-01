class OrderMailer < ApplicationMailer

    default from: 'notifications@example.com'

    def new_order_email
     @order = params[:order]

     mail(to: <ADMIN_EMAIL>, subject: "Your Order is Approved!")

    end
end
