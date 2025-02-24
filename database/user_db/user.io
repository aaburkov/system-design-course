Table User {
  id uuid [primary key]
  name text
  bio text
  avatar text
  created_at timestamp [default: `now()`]
  updated_at timestamp
}

Table Subscriptions {
  id uuid [primary key]
  userId uuid
  subscriberId uuid
  created_at timestamp [default: `now()`]

  Indexes {
    (userId, subscriberId) [name:"userToSubscriber"]
    id [unique]
  }
}