# shopArt

ShopArt is a ecommerce to sell and buy art from independant artist.

The data to be store of a **Users** is defined as follow:

- ID
- Firstname
- Lastname
- Nickname
- Password
- Phone
- Email
- Status (active/inactive/blocked) ?
- is_artist (t/f)


The data to be store of a **Product** is defined as follow:

- ID
- User ID
- Name
- Product_detail_id
- Price
- Kind (art type)
- Description
- Sold (t/f)
- Active (t/f)
- Tax
- Delivery ID

The data to be store of a **Product_details** is defined as follow:

- ID
- wide
- high
- long
- weight

The data to be store of an **Promos** is defined as follow:

- Product ID
- Discount
- Active (f/t)

The data to be store of an **Order** is defined as follow:

- ID
- Buyer ID
- Product ID 
- Total
- Created At


# Database

how to create a postgres database

`$ createdb  <db name>`

how to access:

`$ psql <db name>`

useful command:

`$ psql >  \d` # database detail
`$ psql >  \d table_name` # table detail
`$ psql >  \q` # exit

