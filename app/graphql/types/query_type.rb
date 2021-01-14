module Types
  class QueryType < Types::BaseObject
    # Add root-level fields here.
    # They will be entry points for queries on your schema.
    field :posts, [Types::PostType], null: false do
      description "Query that selects all posts"
    end

    field :postsCount, Integer, null: false do
      description "Query that returns the todal number of posts."
    end

    def posts
      return Post.all
    end

    def postsCount
      return Post.count
    end

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
