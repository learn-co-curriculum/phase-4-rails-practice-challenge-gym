# Rails Practice Challenge - Gym

## Setup

To download the dependencies for backend, run:

```console
$ bundle install
```

There is some starter code in the `db/seeds.rb` file so that once you've
generated the models, you'll be able to create data to test your application.
You can run your Rails API on [`localhost:3000`](http://localhost:3000) by running:

```console
$ rails s
```

There are no tests for this application, so you'll need to check your progress
by running the server and using Postman to make requests.

## Introduction

We're going to build an app for a Gym create the following database structure.
You will have three models (and their corresponding tables), `Gym`, `Client` and
`Membership`, with the following relationships:

- A client has many gyms and has many memberships
- A gym has many clients and has many memberships
- A membership belongs to a gym and belongs to a client

### Migrations

Write migrations to create the following tables:

**Gyms** Table:

| **id** |    **name**    |                       **address**                       |
| :----: | :------------: | :-----------------------------------------------------: |
|   1    |  L.A.Fitness   | Suite 981 1795 Leida Fords, Nataliemouth, TN 14377-4979 |
|   2    | Planet Fitness |       7768 David Avenue, Greenside, PA 67475-3655       |

**Clients** Table:

| **id** |    **name**     | **age** |
| :----: | :-------------: | :-----: |
|   1    |  Casie Effertz  |   18    |
|   2    |  Dorris Bogan   |   52    |
|   3    | Bernie Schiller |   44    |
|   4    |   Manie Dare    |   29    |

**Memberships** Table:

| **id** | **gym_id** | **client_id** | **charge** |
| :----: | :--------: | :-----------: | :--------: |
|   1    |     1      |       1       |     40     |
|   2    |     1      |       2       |     40     |
|   3    |     2      |       1       |     50     |
|   4    |     2      |       3       |     60     |

### Deliverables

> It may be helpful to write a list of the routes you'll need before you begin.

A user should be able to:

- **Create a new membership**

  - New membership require a gym_id, client_id, and membership charge.
  - Validation: A client can have only one membership with gym

- **View one specific gym**

  - if `Gym` exists, return JSON data for the gym
  - else return error with a status code

- **Delete a gym**

  - If the `Gym` exists, it should be removed from the database, along with
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

- **View one specific client**

  - if `Client` exists, return JSON data for the Client
  - else return error with a status code

### Bonus

- On client show route, send response that includes total amount for all
  membership for that client.
- Create index and update routes for gym and client
