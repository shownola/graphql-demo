module Types
  class PostType < Types::BaseObject
    field :id, ID, null: false do
      description "This post's id."
    end
    field :title, String, null: true do
      description "This is the post's title"
    end
    field :body, String, null: true do
      description "This is the post's body, The main content of the post"
    end
    field :created_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time the post was created"
    end
    field :updated_at, GraphQL::Types::ISO8601DateTime, null: false do
      description "The date/time of updated post"
    end
    field :author_id, Integer, null: false do
      description "The author's id"
    end
    field :author, AuthorType, null: true do
      description "This is the author of the post's name"
    end
  end
end
