require "cuba/render"

class Post < Cuba
  Cuba.plugin Cuba::Render


  Post.define do
    on "posts" do
      on get do
        on root do
          res.write "Post List"
        end

        on "new" do
          res.write render("new_post.haml")
        end

        on "show" do
          res.write render("show_post.haml")
        end
      end

      on post do
        #save your stuff
        res.redirect "/posts"
      end
    end
  end
end
