class ConfigurationsController < ApplicationController

def configuration
   @inventory = OrderType.find_by_sql('select * from order_types where quantity <= 30')
end

end
