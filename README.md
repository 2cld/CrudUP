# CrudUp
## Demo Fireup
- Start Term -> Window -> Open Window Group -> CrudUpDemo
- CrudUp tab
    - This README.md
- CrudAPI tab
    - cd CrudUp/CrudAPI (should be up in Group)
    - sails lift
- CrudUI tab
    - cd CrudUp/CrudUI (should be up in Group)
	- gulp serve-dev
- Selenium tab
    - cd CrudUp/CrudQA (should be up in Group)
	- ./node_modules/.bin/webdriver-manager start
- CrudMink tab
    - cd CrudUp/CrudMink (should be up in Group)
    - npm test

## From Scratch
- https://github.com/jlmonteagudo/generator-angular-crud
- sudo npm -g install sails
- Create CrudAPI
- mkdir CrudUP && cd CrudUp && sails new CrudAPI && cd CrudAPI
- sudo npm install lodash --save
- sails generate api Customer
- add CrudAPI/api/blueprints/find.js via https://raw.githubusercontent.com/jlmonteagudo/generator-angular-crud/master/sails/api/blueprints/find.js
- mod CrudAPI/config/models.js (uncomment migrate alter)
- mod CrudAPI/config/cors.js (uncomment allroutes: true and origin: '*')
- sails generate api Customer
- mod CrudAPI/api/models/Customer.js (add attribures / table column stuff)
- sails lift
- TEST: http://localhost:1337/customers
- Create CrudUI
- cd ~/Code/CrudUP && mkdir CrudUI
- sudo npm install -g npm
- sudo npm install -g yo
- sudo npm install -g generator-angular-crud
- sudo yo angular-crud
- sudo yo angular-crud:feature Customer
- (may have to manual install some npm's)
- Mod CrudUI/src/client/customer/services/customer.form.client.service.js add field types to match API mods
- Mod CrudUI/src/client/customer/views/list.js and add display fields to match API
- gulp serve-dev
- This should spin up browser with CRUD ui for customers http://localhost:3000/customer

## Add JWT to 'From Scratch'
- https://ericswann.wordpress.com/2015/04/24/nozus-js-1-intro-to-sails-with-passport-and-jwt-json-web-token-auth/
- 

## The Stack
- web
- web-api
- db
- dns
- ops

## Add JWT
- http://thesabbir.com/how-to-use-json-web-token-authentication-with-sails-js/
- https://ericswann.wordpress.com/2015/04/24/nozus-js-1-intro-to-sails-with-passport-and-jwt-json-web-token-auth/
- http://stackoverflow.com/questions/30104981/sailsjs-using-sails-io-js-with-jwt

## Looking at
- https://blog.codecentric.de/en/2015/09/meet-gareth-he-is-seriously-unpleasant/
- https://blog.codecentric.de/en/2014/02/docker-registry-run-private-docker-image-repository/
- https://blog.codecentric.de/en/2014/01/docker-networking-made-simple-3-ways-connect-lxc-containers/
- https://blog.codecentric.de/en/2014/01/lightweight-virtual-machines-made-simple-docker-run-100-virtual-maschines/