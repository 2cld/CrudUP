# CrudUP
## Demo Fireup
- Start Term -> Window -> Open Window Group -> CrudUPDemo
- CrudUP tab
    - This README.md
- CrudAPI tab
    - cd CrudUP/CrudAPI (should be up in Group)
    - sails lift
- CrudUI tab
    - cd CrudUP/CrudUI (should be up in Group)
	- gulp serve-dev
- Selenium tab
    - cd CrudUP/CrudQA (should be up in Group)
	- ./node_modules/.bin/webdriver-manager start
- CrudMink tab
    - cd CrudUP/CrudMink (should be up in Group)
    - npm test
    
## Repo Fireup
- Assumed: in ~/Code
- git clone https://github.com/christrees/CrudUP.git
- cd ~/Code/CrudUP/CrudAPI
    - npm install
    - sails lift
    - browse to: http://localhost:1337/customer should see json but with no results
- cd ~/Code/CrudUP/CrudUI
    - npm install
    - gulp serve-dev
    - This should spin up browser with CRUD ui for customers http://localhost:3000/customer
- cd ~/Code/CrudUP/CrudQA
    - npm install
    - ./node_modules/.bin/webdriver-manager update
    - ./node_modules/.bin/webdriver-manager start
- cd ~/Code/CrudUP/CrudQA
    - npm test
    - This should spin up chrome and preforme the feature test and add a customer
    - http://localhost:3000/customer shold have

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

## Add JWT to CrudAPI 'From Scratch'
- https://ericswann.wordpress.com/2015/04/24/nozus-js-1-intro-to-sails-with-passport-and-jwt-json-web-token-auth/
- add to CrudAPI/package.json
    - jsonwebtoken
    - bcrypt-nodejs
    - passport
    - passport-jwt
    - passport-local
- npm install
- add CrudAPI/config/passport.js file (passport configs)
- add CrudAPI/api/services/CipherService.js (hash and token stuff)
- Create User API
    - sails generate api User
    - Modify CrudAPI/api/models/User.js to add toJSON function and beforeUpdate, beforeCreate
- Create Auth Controller
    - sails generate controller Auth
    - Modify CrudAPI/api/controllers/Auth.js to add signup and signin fuctions
- Create isAuthenticated in Policies
    - Add CrudAPI/api/policies/isAuthenticated.js
    - This enforces using the jwt strategy and add the token to the request
    - Modify CrudAPI/api/policies/policies.js to use isAuthenticated function
- Create Responses
    - Add CrudAPI/api/responses/created.js
    - Add CrudAPI/api/responses/unauthorized.js
- Blueprints ?? overridden ??
    - https://github.com/eswann/Nozus.Web.Api
- Cleanup...
    - add migrate: 'drop' to CrudAPI/config/models.js (so we have clean db)
    - set "hooks":{"grunt":false}} in CrudAPI/.sailssrc
- TEST
    - sails lift
    - post below to http://localhost:1337/auth/signup
'''
{
 "username":"testdude",
 "email":"test1@test.com",
 "password":"testdude"
}
'''
    - should get a json response
    - post below to http://localhost:1337/auth/signin
    - see README_restAPI.txt for postman type manual test
- See https://github.com/eswann/nozus-web/
- Mod DB connections
    - CrudAPI/config/models.js
    - CrudAPI/config/connections.js
- The End

## Add JWT to CrudUI 'From Scratch'
- Create login and signup page

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
- https://github.com/johnpapa/HotTowel-Angular
- https://gist.github.com/mvalipour/be43c798fc0f1e253185 (OAuth and JWT)
- https://www.npmjs.com/package/generator-hottowel
- https://www.npmjs.com/package/angular-jwt
- https://thinkster.io/angularjs-jwt-auth
- http://angular-js.in/angular-jwt/
- https://djds4rce.wordpress.com/2013/08/13/understanding-angular-http-interceptors/ (how interceptors work in Angular)
- http://code.tutsplus.com/tutorials/working-with-data-in-sailsjs--net-31525
- https://gist.github.com/mvalipour/be43c798fc0f1e253185
- https://djds4rce.wordpress.com/2013/08/13/understanding-angular-http-interceptors/

## add JWT to simple angular app
- https://github.com/Foxandxss/sails-angular-jwt-example
- https://github.com/auth0/angularjs-jwt-authentication-tutorial
- https://github.com/auth0/angular-jwt
- Start http://www.youtube.com/watch?v=lDb_GANDR8U&t=11m27s
- Login/Signup Page http://www.youtube.com/watch?v=lDb_GANDR8U&t=13m20s
    - Create login.html and signup.html (I used register.html)
    - https://github.com/auth0/angularjs-jwt-authentication-tutorial/blob/master/frontend/login/login.html
    - https://github.com/auth0/angularjs-jwt-authentication-tutorial/blob/master/frontend/signup/signup.html
- Login/Signup controller http://www.youtube.com/watch?v=lDb_GANDR8U&t=13m40s
    - Create login.js and signup.js
    - https://github.com/auth0/angularjs-jwt-authentication-tutorial/blob/master/frontend/login/login.js
    - https://github.com/auth0/angularjs-jwt-authentication-tutorial/blob/master/frontend/signup/signup.js
- Create signup function http://www.youtube.com/watch?v=lDb_GANDR8U&t=14m27s
    - http Post to http://localhost:3001/users (or what-ever API of choice)
    - Save token into localstorage using store 
- Final signup function http://www.youtube.com/watch?v=lDb_GANDR8U&t=17m57s
- Setup views to use ng-model http://www.youtube.com/watch?v=lDb_GANDR8U&t=18m08s
- On successfull user login go to page http://www.youtube.com/watch?v=lDb_GANDR8U&t=19m42s
- Add module references to app http://www.youtube.com/watch?v=lDb_GANDR8U&t=20m13s
- Test the signup UI http://www.youtube.com/watch?v=lDb_GANDR8U&t=22m12s
- Check token http://www.youtube.com/watch?v=lDb_GANDR8U&t=22m19s
    - Copy the token out of local storage (dev tools)
    - Paste token into http://jwt.io to see what it is.
- Test the login UI http://www.youtube.com/watch?v=lDb_GANDR8U&t=23m
- Test the TOKEN AUTHENICATION get http://www.youtube.com/watch?v=lDb_GANDR8U&t=23m44s
- Attache TOKEN to json request http://www.youtube.com/watch?v=lDb_GANDR8U&t=11m27s
    - use angular-jwt http request inteceptor
    - add angular-jwt to module import
    - add jwtInterceptorProvider and $httpProvider into the app config
    - config jwtInterceptorProvider.tokenGetter to fetch token from store
    - config jwtInterceptor to be pushed onto $httpProvider.interceptors.push('jwtInterceptor');
- Add page access control http://www.youtube.com/watch?v=lDb_GANDR8U&t=27m27s
- Add .run(function()) to angular.run() http://www.youtube.com/watch?v=lDb_GANDR8U&t=28m30s
    - pass in $state, store and $rootScope
    - listen to $rootScope.$on('$stateChangeStart', function(e, to) {}); and look for token is set
    - add data taggs to pages
- Display token info http://www.youtube.com/watch?v=lDb_GANDR8U&t=31m
- http://www.youtube.com/watch?v=lDb_GANDR8U&t=11m27s
- http://www.youtube.com/watch?v=lDb_GANDR8U&t=11m27s



## Longer... not worth it but lots of info
- https://www.youtube.com/watch?v=vIGZxeQUUFU
- https://github.com/kentcdodds/ng-jwt-workshop.git
- http://slides.com/kentcdodds/ng-jwt-workshop#/
- https://www.youtube.com/watch?v=vIGZxeQUUFU&t=11m40s
    - git clone https://github.com/kentcdodds/ng-jwt-workshop.git
    - cd ng-jwt-workshop/api
    - git checkout cookie
    - npm install
    - optionally copy user.json to a new user.local.json file and mod the user
    - node index.js
    - open http://localhost:3000
- https://www.youtube.com/watch?v=vIGZxeQUUFU&t=30m30s