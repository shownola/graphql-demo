module Mutations
  class CreatePostMutation < BaseMutation

    field :post, Types::PostType, null: false

    argument :title, String, required: true do
      description "The title field is a string type and is required for a new post to be created"
    end

    argument :body, String, required: true do
      description "This is the post's main content, seems strange that it is a string to me."
    end

    argument :author, Integer, required: true do
      description "This is the id of the post's author"
    end

    def resolve(title:, body:, author:)
      @post = Post.new(title: title, body: body, author: Author.find_by_id(author))

      if(@post.save)
        {
          post: @post,
          errors: []
        } else {
          post: nil,
          errors: @post.errors.full_messages
        }
      end
    end


  end
end


#  define return fields
# field :post, Types::PostType, null: false

#  define arguments
# argument :name, String, required: true

# define resolve method
# def resolve(name:)
#   { post: ... }
# end
