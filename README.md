

#Ruby and rails version
  * Ruby=2.2.1 
  * Rails=4.2.2
  
#Application URL on Heroku
 * Running live at 
    * https://kajal-financeapp.herokuapp.com/
  
# Running app locally
  * `bundle install`
  * `rails server`
  *  `bundle exec rake db:migrate`
  
#Deployment instructions on Heroku
 
  * Push all the assets on the clouds first
    * `RAILS_ENV=production bundle exec rake assets:precompile`
  * First Get the heroku login and create an app.
  * Git add and commit
  * Login to heroku using 
    * `heroku login`
  *  Create the heroku name
    * `heroku create`
  *  push to heroku
    * `git push heroku master`
  *  migrate your db
    * `heroku run rake db:migrate`
 
# Run Test cases
     * `bundle exec rake test:models` to run the test cases of models created
     * `bundle exec rake test` to run all the test cases related to app (model, view, controller).
 



# Code Documentation
  * You can upload the csv file, but it will only accept the file with correct header sequence whih are as:
     * PurchaserName
     * ItemDescription
     * ItemPrice
     * PurchaseQuantity
     * MerchantAddress
     * MerchantName
  * It will also validate the data given and will accept the file if none of the column is null.

