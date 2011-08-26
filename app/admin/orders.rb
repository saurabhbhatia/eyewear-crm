ActiveAdmin.register Order do
  index do
    column :id
    column :amount
    column :discount
    column :advance 
  end  
end
