ActiveAdmin.register Order do
  index do
    column :id
    column :customer
    column :amount
    column :discount
    column :net
    column :advance 
    column :balance
  end  
end
