# Rails Gym App

## Setup

To download the dependencies for backend, run:

```sh
bundle install
```

There is some starter code in the `db/seeds.rb` file so that once you've
generated the models, you'll be able to create data to test your application.

You can run your Rails API on [`localhost:3000`](http://localhost:3000) by running:

```sh
rails s
```
Check your progress by: Running the Rails server and using Postman make requests

## Introduction

We're going to build an app for a Gym create the following database structure:

- You will have three models (and their corresponding tables) `Gym`, `Client` and `Membership`
- A client `has_many` gyms and `has_many` memberships
- A gym `has_many` clients and `has_many` memberships
- A membership `belongs_to` a gym and `belongs_to` a client

## Instructions

### Migrations

Write migrations to create the following tables:

**Gyms**

| **id** | **name** |      **address**      | 
| :----: | :---------------------: | :----------------: |
|   1    | L.A.Fitness | Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979 |
|   2    | Planet Firness | 7768 David Avenue, Greenside, PA 67475-3655 |

**Clients**

| **id** |        **name**         | **age** |
| :----: | :---------------------: | :------------ |
|   1    | Casie Effertz | 18 |
|   2    | Dorris Bogan | 52 | 
|   3    | Bernie Schiller | 44 |
|   4    | Manie Dare | 29 |

**Note: Thinking through if there are more tables/migrations you need to add.**


### Deliverables:
> It may be helpful to write a list of the routes you'll need before you begin.

A user should be able to:

* **Create a new membership**
    * New membership require gym_id, client_id, and membership charge.
    * Validation: A client can have only one membership with gym

* **Gym show route**
    * if `Gym` exists, return JSON data for the gym
    * else return error with a status code

* **Delete a gym**
    * If the `Gym` exists, it should be removed from the database, along with
    any `Membership`s that are associated with it (a `Membership` belongs
    to a `Gym`, so you need to delete the `Membership`s before the
    `Gym` can be deleted).

    After deleting the `Gym`, return an _empty_ response body, along with the
    appropriate HTTP status code.

    If the `Gym` does not exist, return the following JSON data, along with
    the appropriate HTTP status code:

    ```json
    {
    "error": "Gym not found"
    }
    ```

* **Client show route**
    * if `Client` exists, return JSON data for the Client
    * else return error with a status code

### Bonus:

* On client show route, send response with total amount for all membership for that client.
* Create route for gym and client
# rails-gym-app-api
