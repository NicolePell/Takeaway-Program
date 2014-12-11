Takeaway
========
This is our week 2 challenge at Makers Academy.

This is a Takeaway program which includes the following:

- [x] List of dishes with prices
- [x] Placing an order
- [x] with quantities
- [x] and price
- [x] which can return a total
- [x] Be able to send a message


Technologies used
=================
- Ruby
- Rspec
- Twilio Gem

How to use
==========
Clone the repository:
```shell
$ git clone https://github.com/NicolePell/Takeaway-Program.git
```

Change into the directory:
```shell
$ cd Takeaway-Program
```

Sign up for a free Twilio account

Run tests:
```shell
$ rspec
```

Run in IRB/PRY:
```shell
$ irb
> require './runner'
```

Classes
=======
- [x] Dishes
- [x] Menu
- [x] Order
- [x] Line item
- [x] Customer
- [x] Message

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

Customer
----------
Responsibilities|Collaborators
----------------|-------------
[x]Be able to place an order|Takeaway
[x]Provide customer details|Order

Message
-------
Responsibilities|Collaborators
----------------|-------------
[x]Include customer details|Customer
[x]Include order details|Order
[x]Communicate with twilio|
