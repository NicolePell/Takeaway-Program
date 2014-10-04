Takeaway
========
This is a Takeaway program which includes the following:

- [x] List of dishes with prices
- [ ] Placing an order 
- [ ] with quantities
- [ ] and price 
- [ ] which can return a total
- [ ] Be able to send a message


Classes
=======
- [x] Dishes
- [x] Menu
- [ ] Order
- [ ] Line item
- [ ] Takeaway
- [ ] Customer

Languages, Programs and Technologies 
=========================
- Ruby
- Rspec
- Sublime Text
- Terminal
- Twilio
- Github

Domain Model and CRC
====================
Dishes
------
Responsibilities|Collaborators
----------------|-------------
Include a name|Menu
Include a price|Line item
Include ingredients|

Menu
------
Responsibilities|Collaborators
----------------|-------------
List of dishes|Dishes
with prices|Order

Order
------
Responsibilities|Collaborators
----------------|-------------
Be able to show chosen dishes|Line item
Be able to show quantities|Menu
Be able to show prices|Customer
Be able to calculate total price|
Include customer details|


Line item
----------
Responsibilities|Collaborators
----------------|-------------
Show dish name|Dishes
Show price for dish|Order


Takeaway
----------
Responsibilities|Collaborators
----------------|-------------
Be able to take an order|Menu
Be able to confirm an order|Order
Send text confirmation to customer|Customer

Customer
----------
Responsibilities|Collaborators
----------------|-------------
Be able to place an order|Takeaway
Provide customer details|Order

Message
-------
Responsibilities|Collaborators
----------------|-------------
Include customer details|Customer
Include order details|Order
Communicate with twilio|