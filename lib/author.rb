class Author
  attr_accessor :name, :posts

  def initialize(name)
    @name = name
    @posts = []
  end

  def add_post(post)
    post.author = self
    @posts << post
  end

  def add_post_by_title(post)
    new_post = Post.new(post)
    new_post.author = self
    @posts << post
  end

  def author_name
  end
end
