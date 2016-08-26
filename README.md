## Shopmycourses rails exercise documentation

##### Description

application Rails 4 for creating health professionals defined by a name, a name, an address, a phone number and a specialty, and allowing
display them in a list along with a form on which we find a picture, a map with location of the address and the information for each healthcare professional.

#### Steps 1..4

#### 1 -

 * Create a Cloud9 VM with a barebone Rails4 project ready to deploy to heroku.

	References
 	* [getting-started-with-rails4#local-workstation-setup](https://devcenter.heroku.com/articles/getting-started-with-rails4#local-workstation-setup)

#### 2 -

 * Configure Rails4 project to work correctly with postgresSQL on Cloud9 VM.

	References
 	* [cloud9 and postgress (stackoverflow)](http://stackoverflow.com/questions/26545746/cloud9-postgres)
 	* [cloud9 setup with postgress tutorial](https://github.com/Aerogami/guides/wiki/Cloud9-workspace-setup-with-Rails-and-Postgresql)

#### 3 -

 * Load bootstrap libraries for rails.
 * Code 'professionals' crud.

	References
 	* [rails-bootstrap-form library](https://github.com/bootstrap-ruby/rails-bootstrap-forms)
 	* [ruby on rails official guides](http://guides.rubyonrails.org)
 	* [ruby on rails official api doc](http://api.rubyonrails.org)
 	* [ruby on rails apidock documentation](http://apidock.com/rails/)

#### 4 -

 * Configure a google cloud console project to get an api key
 * Add embed google map iframe on edit view

	References
 	* [google official docs](https://console.cloud.google.com)
 	* [google cloud console](https://console.cloud.google.com)
 	
    
 ## Local development
 
    OPTION 1: install heroku CLI and run heroku local
	OPTION 2: install foreman and run foreman start
  
    
  
```javascript
//create file .env and enviromental variables. Ex:
RACK_ENV=development
PORT=8080
USERNAME=admin
PASSWORD=root
``` 



 

 ## Try on heroku: 
 ### [smc-test-ja.herokuapp.com](smc-test-ja.herokuapp.com)






