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
