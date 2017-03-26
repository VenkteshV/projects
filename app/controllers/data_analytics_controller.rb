class DataAnalyticsController < ApplicationController
	def get_analytics_data
        query="select p.user_id,p.quantity,products.name from (select orders.user_id,order_items.product_id,count(order_items.product_id) as quantity from orders inner join order_items on orders.id=order_items.order_id  group by user_id,product_id) p inner join products on p.product_id=products.id;"
	    result=ActiveRecord::Base.connection.execute(query).as_json
        Rails.logger.debug "result: #{result}"
	end	
end
