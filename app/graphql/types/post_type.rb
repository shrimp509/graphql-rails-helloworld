module Types
  class PostType < Types::BaseObject
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
    field :rating, Integer, null: true
    field :comment, [Types::Comment], null: true, description: "This post's comments, or null if this post has comments disabled."
  end
end
