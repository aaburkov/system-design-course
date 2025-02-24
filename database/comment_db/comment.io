Table Comment {
  id uuid [primary key]
  parentCommentId uuid
  userId uuid
  postId uuid
  message text
  created_at timestamp [default: `now()`]
}

Table PostReaction {
  id uuid [primary key]
  userId uuid
  postId uuid
  reactionId uuid
  created_at timestamp [default: `now()`]
}

Table Reaction {
  id uuid [primary key]
  title text
  image string
  created_at timestamp [default: `now()`]
  updated_at timestamp
}