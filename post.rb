require "cuba/render"

class Post < Cuba
  Cuba.plugin Cuba::Render


Post.define do
  on get do
    on "posts" do
      res.write "Post List"
    end

    on "post" do
      on "new" do
        res.write render("new_post.haml")
      end
    end
  end


end
end
