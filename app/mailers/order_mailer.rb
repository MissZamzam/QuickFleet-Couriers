class OrderMailer < ApplicationMailer

    # default from: 'notifications@example.com'

    def new_order_email(order)
        @order = order
    #  @order = params[:order]

     mail(to: "loreydjefwa@gmail.com", subject: "Your Order is Approved!")

    end
end
