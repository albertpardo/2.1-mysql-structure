## 📄 Description - Exercise Statement

This is the eighth task for **Sprint 2 Databases** in the **Backend Java Course** in ITAcademy (Barcelona, Spain).
There are 3 levels with exercises. Only levels 1 and 2 done.

## Level 1

### Exercise 1 - Optics

**An optical store, called "Cul d'Ampolla," wants to computerize the management of clients and sales of glasses.**

-   First, the store wants to know the supplier of each pair of glasses. Specifically, they want to know for each **supplier**:
    -   Name
    -   Address (street, number, floor, door, city, postal code, and country)
    -   Phone
    -   Fax
    -   NIF.
-   The store's purchasing policy is based on purchasing glasses from a single supplier for each brand (thus allowing them to obtain better prices), but they can purchase glasses of various brands from one supplier. For the **glasses**, they want to know:
    -   Brand.
    -   The prescription of each lens.
    -   The type of frame (floating, plastic, or metal).
    -   The color of the frame.
    -   The color of each lens.
    -   The price.
-   From the **clients**, they want to store:
    -   Name.
    -   Postal address.
    -   Phone number.
    -   Email.
    -   Registration date.
    -   When a new client arrives, store the client who recommended the establishment (as long as someone has recommended it).
    -   Our system should indicate which employee sold each pair of glasses.

* * *

### Exercise 2 - Pizzeria

**You have been hired to design a website that allows placing food orders for delivery over the Internet.**

-   Consider the following indications to model how the project's database would look:
-   For each client, we store a unique identifier:
    -   Name.
    -   Surnames.
    -   Address.
    -   Postal code.
    -   Locality.
    -   Province.
    -   Phone number.
    -   Locality and province data will be stored in separate tables. We know that a locality belongs to a single province, and a province can have many localities. For each locality, we store a unique identifier and a name. For each province, we store a unique identifier and a name.
-   A person can place many orders, but a single order can only be made by one person. From each order, a unique identifier is stored:
    -   Date/time.
    -   Whether the order is for home delivery or for pickup at the store.
    -   The quantity of products selected of each type.
    -   The total price.

> An order can consist of one or several products.

-   Products can be pizzas, hamburgers, and drinks. For each product, a unique identifier is stored:
    -   Name.
    -   Description.
    -   Image.
    -   Price.

> In the case of pizzas, there are various categories that may change names throughout the year. A pizza can only belong to one category, but a category can have many pizzas.

-   Each category has a unique identifier and a name. An order is managed by a single store, and a store can manage many orders. From each store, a unique identifier is stored:
    -   Address.
    -   Postal code.
    -   Locality.
    -   Province.
-   A store can have many employees, and an employee can only work in one store. For each employee, a unique identifier is stored:
    -   Name.
    -   Surnames.
    -   NIF.
    -   Phone.
    -   Whether they work as a cook or delivery person. For home delivery orders, it's important to keep track of who the delivery person is and the date/time of delivery.

* * *

## Level 2

### Exercise 1 - YouTube

**We will attempt to create a simple model of how the database for a reduced version of YouTube would look.**

-   For each user, we store a unique identifier:
    -   Email.
    -   Password.
    -   Username.
    -   Date of birth.
    -   Gender.
    -   Country.
    -   Postal code.
-   A user publishes videos. For each video, we store a unique identifier:
    -   A title.
    -   A description.
    -   A size.
    -   The name of the video file.
    -   Duration of the video.
    -   A thumbnail.
    -   The number of views.
    -   The number of likes.
    -   The number of dislikes.
-   A video can have three different states: public, unlisted, and private. A video can have many tags. A tag is identified by a unique identifier and a tag name. It's important to store which user published the video and when (date/time).
-   A user can create a channel. A channel has a unique identifier:
    -   A name.
    -   A description.
    -   A creation date.
-   A user can subscribe to the channels of other users. A user can like or dislike a video only once. A record must be kept of the users who liked or disliked a video and when (date/time) they did so.
-   A user can create playlists with the videos they like. Each playlist has a unique identifier:
    -   A name.
    -   A creation date.
    -   A status indicating whether it can be public or private.
-   A user can write comments on a specific video. Each comment is identified by a unique identifier:
    -   The text of the comment.
    -   The date/time when it was made.
-   A user can mark a comment as liked or disliked. A record must be kept of the users who marked a comment as liked/disliked, and when (date/time) they did so.
    

* * *

## Level 3

#### Exercise 1 - Spotify

**We will attempt to create a simple model of how the database necessary for Spotify would look.**

-   There are two types of users: free and premium. For each user, we store a unique identifier:
    -   Email.
    -   Password.
    -   Username.
    -   Date of birth.
    -   Gender.
    -   Country.
    -   Postal code.
-   Premium users have subscriptions. The necessary data to be stored for each subscription includes:
    -   Subscription start date.
    -   Service renewal date.
    -   A form of payment, which can be via credit card or PayPal.
-   We store credit card information including card number, expiration month and year, and security code. For users who pay with PayPal, we store the PayPal username. We keep a record of all payments that a premium user has made during the subscription period. For each payment, we store:
    -   The date.
    -   An order number (which is unique).
    -   A total amount.
-   A user can create many playlists. For each playlist, we store:
    -   A title.
    -   The number of songs it contains.
    -   A unique identifier.
    -   A creation date.
-   When a user deletes a playlist, it is not removed from the system, but is marked as deleted. This way, the user can recover their playlists in case they deleted them by mistake. It is necessary to store the date when the playlist was marked as deleted.
    
-   We can say that there are two types of playlists: active and deleted. An active playlist can be shared with other users, meaning that other users can add songs to it. In a shared list, it’s important to know which user added each song and when they did it.
    
-   A song can only belong to one album. An album can contain many songs. An album is published by a single artist. An artist can have released many albums. For each song, we store a unique identifier:
    -   A title.
    -   A duration.
    -   The number of times it has been played by Spotify users.
-   For each album, we store a unique identifier:
    -   Title.
    -   Year of publication.
    -   An image of the cover.
-   For each artist, we store a unique identifier:
    -   Name.
    -   An image of the artist.
-   A user can follow many artists. An artist can be related to other artists who make similar music. This way, Spotify can show us a list of related artists to the ones we like. We also want to store which albums and songs are favorites of a user. A user can select many albums and many songs as favorites.
    
> **NOTE:** Once the databases are created, we will fill the tables with test data to verify that the relationships are correct.

* * *

## Resources

To verify that your design is correct, perform the following queries and check that they return correct results:

**Optics:**
-   List the total invoices of a client over a specified period.
-   List the different models of glasses sold by an employee over a year.
-   List the different suppliers that have successfully supplied glasses sold by the optical store.

**Pizzeria:**
-   List how many products in the 'Beverages' category have been sold in a specific locality.
-   List how many orders a specific employee has made.

## 📋 Requirements

- MySQL Workbench 8.0 Community
- MySql 9.5 ( Workbench give a Warning because is not supported . But in my test it works)

## 🛠️ Installation

Fork or download this repo. 

## ▶️ Execution

If you do not have MySQL and MySQL Workbench, you can use docker.

I have use `Docker version 29.1.2, build 890dcca`

Here is the `compose.yml` that I used (**Don not Use in production**)
```yaml
services:
  db:
    image: mysql:9.5
    container_name: mysql-container
    restart: always
    environment:
      MYSQL_ROOT_PASSWORD: example
    ports:
      - "3306:3306"
    volumes:
      - mysql-data:/var/lib/mysql
    networks:
      - my-network

  workbench:
    image: lscr.io/linuxserver/mysql-workbench:latest
    container_name: mysql-workbench
    restart: unless-stopped
    environment:
      PUID: 1000
      PGID: 1000
      TZ: Etc/UTC
    ports:
      - "3000:3000"
      - "3001:3001"
    volumes:
      - ./workbench/config:/config
    cap_add:
      - IPC_LOCK
    shm_size: "1gb"
    networks:
      - my-network

volumes:
  mysql-data:

networks:
  my-network:
     driver: bridge
```

The line ` MYSQL_ROOT_PASSWORD: example`  contains the root password for MySql DB.

Run the container with: `docker compose up -d`

To accest to Workbench use your web browser to acces to `http://localhost:3000/`

Stop containers with : `docker compose down`
