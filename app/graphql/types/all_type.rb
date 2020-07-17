module Types
  class AllType < Types::BaseObject
    field :id, ID, null: true
    field :posts, [PostType], null: true
    field :comments, [CommentType], null: true
    field :users, [UserType], null: true
  end
end
