class CustomWebhooksController < ApplicationController
    include ShopifyApp::WebhookVerification
  
    def orders_create
      params.permit!
      OrdersCreateJob.perform_later(shop_domain: shop_domain, webhook: webhook_params.to_h)
      head :no_content
    end
  
    private
  
    def webhook_params
      params.except(:controller, :action, :type)
    end
  end