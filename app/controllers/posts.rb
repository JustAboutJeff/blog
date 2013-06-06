get '/edit/:id' do
  @post = Post.find(params[:id])
  erb :edit
end