Table Post {
  id uuid [primary key]
  userId uuid
  locationId uuid
  title text
  content text
  created_at timestamp [default: `now()`]
  updated_at timestamp
}

Table PostPhotos {
  id uuid [primary key]
  postId uuid
  photoId uuid
  created_at timestamp [default: `now()`]
}