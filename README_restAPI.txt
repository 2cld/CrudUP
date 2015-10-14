Post to: http://localhost:1337/auth/signup
{
 "username":"testdude",
 "email":"test1@test.com",
 "password":"testdude"
}
Response sb: 201-Created
{
  "code": "CREATED",
  "message": "The request has resulted in a new resource being created",
  "data": {
    "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjp7InVzZXJuYW1lIjoidGVzdGR1ZGUzIiwiZW1haWwiOiJ0ZXN0M0B0ZXN0LmNvbSIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwicGhvdG8iOiIiLCJjcmVhdGVkQXQiOiIyMDE1LTEwLTEwVDIyOjU2OjU2LjA4NloiLCJ1cGRhdGVkQXQiOiIyMDE1LTEwLTEwVDIyOjU2OjU2LjA4NloiLCJpZCI6MX0sImlhdCI6MTQ0NDUxNzgxNiwiZXhwIjoxNDQ0NjA0MjE2LCJhdWQiOiJub3p1cy5jb20iLCJpc3MiOiJub3p1cy5jb20ifQ.OLEdvyEG3rgdJxkvefDkiGd4wpoLu-1-ip6P8Wp8zJ8",
    "user": {
      "username": "testdude",
      "email": "test1@test.com",
      "firstName": "",
      "lastName": "",
      "photo": "",
      "createdAt": "2015-10-10T22:56:56.086Z",
      "updatedAt": "2015-10-10T22:56:56.086Z",
      "id": 1
    }
  }
}

Post to: http://localhost:1337/auth/signin
{
 "email":"test1@test.com",
 "password":"testdude"
}
Response sb: 200-OK
{
  "token": "eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJ1c2VyIjp7InVzZXJuYW1lIjoidGVzdGR1ZGUzIiwiZW1haWwiOiJ0ZXN0M0B0ZXN0LmNvbSIsImZpcnN0TmFtZSI6IiIsImxhc3ROYW1lIjoiIiwicGhvdG8iOiIiLCJjcmVhdGVkQXQiOiIyMDE1LTEwLTEwVDIyOjU2OjU2LjA4NloiLCJ1cGRhdGVkQXQiOiIyMDE1LTEwLTEwVDIyOjU2OjU2LjA4NloiLCJpZCI6MX0sImlhdCI6MTQ0NDUxODMyMSwiZXhwIjoxNDQ0NjA0NzIxLCJhdWQiOiJub3p1cy5jb20iLCJpc3MiOiJub3p1cy5jb20ifQ.mNPYxBaXZLS6mq0rFNlM9FQ9cEbKfd64ZhfhxbTURIQ",
  "user": {
    "username": "testdude",
    "email": "test1@test.com",
    "firstName": "",
    "lastName": "",
    "photo": "",
    "createdAt": "2015-10-10T22:56:56.086Z",
    "updatedAt": "2015-10-10T22:56:56.086Z",
    "id": 1
  }
}

Get to: http://localhost:1337/user
(no token)
Response sb: 401-Unauthorized
{
  "code": "E_UNAUTHORIZED",
  "message": "No auth token",
  "data": {}
}

Get to: http://localhost:1337/user
Headers:
Header: Authorization
Value: JWT thelongtokenstringfromaboveremembertheJWTthenaspace
Response sb: 200-OK
{
  "total": 1,
  "results": [
    {
      "username": "testdude3",
      "email": "test3@test.com",
      "firstName": "",
      "lastName": "",
      "photo": "",
      "createdAt": "2015-10-10T22:56:56.086Z",
      "updatedAt": "2015-10-10T22:56:56.086Z",
      "id": 1
    }
  ]
}