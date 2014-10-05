Takeaway
========
This is a Takeaway program which includes the following:

- [x] List of dishes with prices
- [x] Placing an order 
- [x] with quantities
- [x] and price 
- [x] which can return a total
- [ ] Be able to send a message


Classes
=======
- [x] Dishes
- [x] Menu
- [x] Order
- [x] Line item
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
[x]Include a name|Menu
[x]Include a price|Line item

Menu
------
Responsibilities|Collaborators
----------------|-------------
[x]List of dishes|Dishes
[x]with prices|

Order
------
Responsibilities|Collaborators
----------------|-------------
[x]Be able to show chosen dishes|Line item
[x]Be able to show quantities|Customer
[x]Be able to show prices|
[x]Be able to calculate total price|
[ ]Include customer details|


Line item
----------
Responsibilities|Collaborators
----------------|-------------
[x]Show dish name|Dishes
[x]Show price for dish|Order


Takeaway
----------
Responsibilities|Collaborators
----------------|-------------
[ ]Be able to take an order|Order
[ ]Be able to confirm an order|Customer
[ ]Send text confirmation to customer|

Customer
----------
Responsibilities|Collaborators
----------------|-------------
[ ]Be able to place an order|Takeaway
[ ]Provide customer details|Order

Message
-------
Responsibilities|Collaborators
----------------|-------------
[ ]Include customer details|Customer
[ ]Include order details|Order
[ ]Communicate with twilio|