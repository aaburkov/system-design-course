Table Location {
  id uuid [primary key]
  lat number
  lon number
  title text
  description text
  created_at timestamp [default: `now()`]
  updated_at timestamp
}