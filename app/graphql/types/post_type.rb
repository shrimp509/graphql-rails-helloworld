module Types
  class PostType < Types::BaseObject
    description "A blog post"
    field :id, ID, null: false
    field :title, String, null: false
    field :rating, Integer, null: true
    field :comments, [CommentType], null: true
    field :user, UserType, null: true
  end
end
