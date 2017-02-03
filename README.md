# README

Simple booking guide application allows users create, view and comment placements.

Users must register and log in to create placements and leave comments about them.

Placement description consist of: address, price and placement name, all fields must be filled.

Comments to the placements consist of comment itself and images of placements, images field must be filled while comment text is not necessary.
Images field support multiselection.

* Ruby version - 2.3.1

* Rails version - 5.0.1

* RDBMS - PostgreSQL 9.4.10

Used gems:

* httparty - connection to Google Maps API for address validation.

* carrierwave - upload and manage uploaded images.

* bootstrap-sass - navigation bar and application elements style.

* bcrypt - users password encryption.