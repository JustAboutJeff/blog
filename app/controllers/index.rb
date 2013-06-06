get '/' do
  @posts = Post.order('updated_at DESC')
  erb :index
end
