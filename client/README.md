

        index
          |
          App (nav routes)
Home    About   Blog    NoMatch
                /\
   (new)BlogForm  BlogList
                      \
              (own page) Blog (update, delete)
                      (update) BlogForm
                          |
                          Posts
              PostForm         PostList
                               Post
                               (update) PostForm
                               |
                               Comments
                        CommentForm   CommentList
                               Comments
                               (update) CommentForm
