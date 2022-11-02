class OrderMailer < ApplicationMailer

    default from: 'mkateboflo1@gmail.com'

    def new_order_email
        # @order = order
     @order = params[:order]

     mail(to: "loreydjefwa@gmail.com", subject: "Order Approval!")
    #  mail(to: "jannylynemiaz@gmail.com", subject: "Order Approval!")

    end
end
