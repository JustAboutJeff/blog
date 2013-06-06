get '/tag/:id' do
  @posts = Tag.find(params[:id]).posts.order('updated_at DESC')
  erb :index
end