### Rails API


* * *
### Endpoints

* * *

#### Public (without token)
**POST /sign_up**

data-form body:
```
{
  user[username]: "something",
  user[email]: "something@yopmail.com",
  user[password]: "something"
}
```

After sign-up, user needs to sign-in to get token


**POST /sign_in**

data-form body:
```
{
  user[email]: "something@yopmail.com",
  user[password]: "something"
}
```
Token is in the "Authorization" header

* * *

#### Private (token mandatory)

the following requests need authorization header

**DELETE /sign_out**
no body

**GET /users**
visualize public info for all users

**GET /users/id**
visualize public info for specified user

**GET /api/v1/profile**
visualize own profile, all info except for password

**DELETE /api/v1/profile**

answer 
```{
  id: 3
  status: 'user deleted'
}
```

**PATCH or PUT /api/v1/profile**

data-form body:
```
{
  user[username]: "something"
}
```
