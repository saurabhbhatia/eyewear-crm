pdf.move_down 70

# Add the font style and size
pdf.font "Helvetica"
pdf.font_size 18
pdf.text_box "Invoice # #{@order.id}", :align => :right

pdf.font_size 22
pdf.text "Thank you for your order, #{@order.customer.full_name}.", :align => :center
pdf.font_size 12
pdf.text "Address: #{@order.customer.address}.", :align => :center
pdf.text "Contact Number: #{@order.customer.phone_number}.", :align => :center

pdf.move_down 20

pdf.font_size 14
pdf.text "Below you can find your order details. We hope you shop with Awesome Company again in the future. Now unleash those fonts like hell have no fury!", :align=> :center

orderinfo = [["Customer Name", "#{@order.customer.full_name}"],
             ["Order Type", "#{@order.order_type.name}"],
             ["Item Discount", "#{@order.discount}"],
             ["Net Amount", "#{@order.net}"],
             ["Advance Amount", "#{@order.advance}"],
             ["Balance Amount", "#{@order.balance}"],
             ["Delivery Date", "#{@order.delivery_date}"],
            ]


pdf.move_down 30

pdf.table orderinfo,
	:column_widths => { 0 => 150, 1 => 250},
	:row_colors => ["d2e3ed", "FFFFFF"]

pdf.font_size 14

pdf.bounding_box([pdf.bounds.right - 50,pdf.bounds.bottom], :width => 60, :height => 20) do
pagecount = pdf.page_count
pdf.text "Page #{pagecount}"
end
