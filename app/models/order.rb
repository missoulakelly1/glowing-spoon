class Order < ActiveRecord::Base
    belongs_to :shop
    

    def self.new_cloverly_call
        response = Faraday.get 'http://httpbingo.org'
    end
end