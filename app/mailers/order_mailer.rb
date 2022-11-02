class OrderMailer < ApplicationMailer

    default from: 'loreydjefwa@gmail.com'

    def new_order_email
        # @order = order
     @order = params[:order]

     mail(to: "jannylynemiaz@gmail.com", subject: "Order Approval!")

    end
end
