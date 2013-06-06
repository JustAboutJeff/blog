get '/solo/:id' do
  @post = Post.find(params[:id])
  erb :solo
end

get '/edit/:id' do
  @post = Post.find(params[:id])
  @tags = @post.tags.reduce("") { |memo,tag| memo += " #{tag.description},"}.chop
  erb :edit
end

post '/edit/:id' do
  @post = Post.find(params[:id])
  @post.update_attributes(params[:form])
  redirect to '/'
end

get '/create' do
  erb :create
end

post '/create' do
  @post = Post.create(params[:form])
  if @post.valid?
    redirect to '/'
  else
    redirect to '/create'
  end
end

post '/destroy/:id' do
  Post.find(params[:id]).destroy
  redirect to '/'
end

