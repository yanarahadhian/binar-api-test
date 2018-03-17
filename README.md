# Delivery food API

[See API documentations](https://deliveryfoodapi.docs.apiary.io)


### Installation

How to [Install Rails](http://installrails.com/)

```sh
$ git clone REPOSITORY
$ cd project
$ bundle install
$ rake db:create && rake db:migrate
$ rails s
```

### Run Unit Testing

```sh
$ cd project
$ bundle exec rspec spec/
```

#### Expected
```
....................

Finished in 1.16 seconds (files took 2.22 seconds to load)
20 examples, 0 failures

```

# Postman Result

### SignUp
![N|Solid](http://image.ibb.co/jiECuc/Screen_Shot_2018_03_17_at_11_26_44_AM.png)
### SignIn
![N|Solid](http://image.ibb.co/mYkVfH/Screen_Shot_2018_03_17_at_12_17_43_PM.png)
### Show Data
![N|Solid](http://image.ibb.co/fB60Ec/Screen_Shot_2018_03_17_at_12_38_03_PM.png)
### Create Data
![N|Solid](http://image.ibb.co/dH68Zc/Screen_Shot_2018_03_17_at_12_32_04_PM.png)
### Update Data
![N|Solid](http://image.ibb.co/i85wLH/Screen_Shot_2018_03_17_at_1_09_31_PM.png)
### Delete Data
![N|Solid](http://image.ibb.co/nFxyZc/Screen_Shot_2018_03_17_at_1_11_14_PM.png)


### Response of questions

1. Perancangan aplikasi antar makanan dan pelanggan hanya dilayani dengan mobile apps

Untuk perancangan aplikasi antar makanan dimana hanya melayani pemesanan melalui mobile apps saya memilih untuk menggunakan restful api-based web service, karena menurut saya restful-api sangat flexible dalam artian dengan restful api kita bisa menggunakan format response sesuai kebutuhan(XML, JSON, dll)

sedangkan untuk stacknya saya menggunakan:

  * Programming language: Ruby, Bahasa pemrograman dinamis dan open source dengan fokus pada kesederhanaan dan produktivitas. Ruby memiliki sintaks yang elegan mudah untuk dibaca dan mudah ditulis. karena ruby itu lebih stabil dan memiliki lebih banyak bantuan dan dokumentasi yang tersedia, 
  
  * framework: Rails, rails merupakan salah satu web framework ruby yang paling terkenal disamping sinatra atau yang lainya. karena lebih gampang dimengerti sehingga memudahkan developer saat melakukan development.
  
  * database: postgreSQL, saya memilih untuk menggunakan RDBMS daripada noSQL karena menurut saya untuk permasalahan ini kita membutuhkan relational database.


2. Bagaimana menangani keamaanan dalam pengiriman data (backend dan mobile apps) pada sistem

Untuk masalah keamanan dalam pengiriman data saya memilih untuk menggunakan JWT(JSON web tokens). Dengan menggunakan JWT maka setiap mobile apps akan melakukan request ke backend akan selalu mengirimkan token pada request tersebut, dari token ini akan dapat memvalidasikan suatu request.

4. Untuk documentasi yang sederhana mungkin sudah cukup, namun untuk "Testing API V2" jika belum selesai alangkah baiknya untuk tidak ditampilkan, dan jikapun sudah selesai harus lebih di perjelas keterangannya
