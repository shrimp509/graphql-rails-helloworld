# GraphQL HelloWorld on Rails

## Model Relationship
> 3 models: `User`, `Post`, `Comment`

* `User` has many `posts` and has many `comments`
* `Post` has many `comments` and belongs to `user`
* `Comment` belongs to `user` and belongs to `post`  

## GraphQL query examples

* Get specific user with user_id
```
# GraphQL Query
{
  user(id: 1) {
    id
    name
    email
    password
    posts {
      title
    }
    comments {
      content
    }
  }
}

# Response Body
{
    "data": {
        "user": {
            "id": "1",
            "name": "Sam",
            "email": "sam@test.com",
            "password": "12345678",
            "posts": [
                {
                    "title": "Hi sam"
                }
            ],
            "comments": [
                {
                    "content": "Great!"
                }
            ]
        }
    }
}
```

* Get specific post with post_id
```
# GraphQL Query
{
  post(id: 1) {
    id
    title
    rating
    user {
      name
    }
    comments {
      content
      user {
        name
      }
    }
  }
}

# Response Body
{
    "data": {
        "post": {
            "id": "1",
            "title": "Hi sam",
            "rating": 10,
            "user": {
                "name": "Sam"
            },
            "comments": [
                {
                    "content": "Great!",
                    "user": {
                        "name": "Sam"
                    }
                }
            ]
        }
    }
}
```

* Get specific comment with comment_id
```
# GraphQL Query
{
  comment(id: 1) {
    id
    content
    user {
      name
    }
  }
}

# Response Body
{
    "data": {
        "comment": {
            "id": "1",
            "content": "Great!",
            "user": {
                "name": "Sam"
            }
        }
    }
}
```

## Screenshots
![user](https://github.com/shrimp509/graphql-rails-helloworld/blob/master/screenshots/graphql_user)
![post](https://github.com/shrimp509/graphql-rails-helloworld/blob/master/screenshots/graphql_post)
![comment](https://github.com/shrimp509/graphql-rails-helloworld/blob/master/screenshots/graphql_comment)
