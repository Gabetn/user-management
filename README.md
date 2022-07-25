# README
A repo containing an example User management API in Ruby on Rails.

Exposes the `/api/v1/users` endpoint through localhost:3000 when ran via `rails s`. 
- GET `/api/v1/users` - returns all users
    - User Query Params:
        - `first_name`
        - `last_name`
        - `email`
        - `gov_id_number`
        - `gov_id_type`
    - Optional Param `exact` restricts results to a unique match
- POST /api/v1/users - creates a new user
- POST `/api/v1/users/delete` - deletes a single user if a unique match is found from the user query params.

