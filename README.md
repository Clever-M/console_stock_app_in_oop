# Simple stock console application

## Description
This is a simple applications made in the Ruby for stock control.
With this software you can:
- Register new products.
- See the list of products what are in stock.
- Withdraw products from the stock.

## How to install
### Dependencies
#### Ruby 3.3.1
We recomend you to follow the steps to install a Ruby Environment Manager such as Rbenv or RVM:
- [rbenv](https://github.com/rbenv/rbenv)
- [RVM](https://github.com/rvm/rvm)

Once you have them installed, you can install the ruby version.
- Rbenv
```bash
rbenv install 3.3.1
rbenv global 3.3.1
```
- RVM install
```bash
rvm install 3.3.1
rbenv global 3.3.1
```
If you already use another ruby version on you computer, you can go to the file where the app was cloned and set 3.3.1 versions as local.
To do that, please read the documentations provided above.

### Cloning from github
Clone this repository in any diretory in you computer.
```bash
git clone git@github.com:Clever-M/app_stock_console_ruby.git app_stock_console_ruby
cd app_stock_console_ruby
bundle install
```

## Install the dependencies
Start by installing bundler. Open you terminal in the repository where you cloned this app and run:
```bash
sudo gem install bundler
```
The run `bundle install`.
```bash
bundle install
```
This will install all necessary dependencies
## Run the application
```bash
ruby init.rb
```
# How it works?
When you start the app, it will check if you already have a database file created.
If you don't, you'll be asked if you want the app to craete if for you automatically.

![image](https://github.com/user-attachments/assets/78c3a514-017e-4c70-9a91-153a4d8bc7a7)

You can't continue without create a JSON file as you database.

After creating the database you'll be prompted with 4 options:

![image](https://github.com/user-attachments/assets/a606929d-8930-4b0c-8dd5-44422b5609bf)

### 1. Register products
1. To register the product type the product name:

![image](https://github.com/user-attachments/assets/d2e52d74-d0bd-4029-9b8f-3a322ebc61d6)

2. After that, write the product's description:

![image](https://github.com/user-attachments/assets/b8afbc03-eae8-48cc-8558-1820ca42dc4a)

3. Now, tell the price:

![image](https://github.com/user-attachments/assets/8f46c34e-259d-4ba2-a0f0-4e2bade88306)

4. Finally, type the quantity of the product

All set, your product is now registed.

### 2. Show products
Option 2 will show a table with all your products:

![image](https://github.com/user-attachments/assets/90864d62-2c6f-4f40-af42-c6bdc6e95a91)

### 3. Withdrawn products
Option three will show you the table of products and ask you to provide it with the id of the product:

![image](https://github.com/user-attachments/assets/4cf75ab0-addb-4217-989e-50684423c1db)

Then, type the number of how many of the product should be withdrawn:

![image](https://github.com/user-attachments/assets/b8415047-a78f-4049-97aa-c0d61ea95550)

The value will be decreased from the quantity of the product:

![image](https://github.com/user-attachments/assets/464464e2-2a28-4a20-9c26-4257f1a03986)

## 4. Exit
Once you're done, just press 4 to exit.

Author: Clever Moreira





