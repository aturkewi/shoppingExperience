users (resource)
1       Avi
2       Grace


carts (resource)
id  user_id   purchase_date:datetime
1       1
2       2
3       1

line_items (model)
  cart_id   product_id
    1           2
    2           1
    2           2
    2           1
    1           1

products (resource)
id      name    price:integer
1       Phone
2       Radio
