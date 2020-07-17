module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.

    field :post, PostType, null: true do
      description "Find a post by ID"
      argument :id, ID, required: true
    end

    def post(id:)
      Post.find(id)
    end

    field :comment, CommentType, null: true do
      argument :id, ID, required: true
    end

    def comment(id:)
      Comment.find(id)
    end


    field :user, UserType, null: true do
      argument :id, ID, required: true
    end

    def user(id:)
      User.find(id)
    end

    field :all, AllType, null: true

    def all()
      {
        hello: 'world',
        users: User.all,
        posts: Post.all,
        comments: Comment.all
      }
    end

  end
end
