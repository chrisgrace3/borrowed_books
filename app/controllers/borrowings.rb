get '/borrowings' do
  @borrowing = Borrowing.all
  erb 'borrowings/index'
end

get '/borrowings/new' do
  authenticate!
  @borrowing = Borrowing.new
  erb :"borrowings/new"
end

post '/borrowings' do
  authenticate!
  @borrowing = Borrowing.new(params[:borrowing])

  if @borrowing.save
    current_user.borrowings << @borrowing
    redirect '/borrowings'
  else
    @errors = @borrowing.errors.full_messages
    erb :"borrowings/new"
  end
end

get '/borrowings/:id' do
  @borrowing = Borrowing.find_by(id: params[:id])
  erb :"borrowings/show"
end

get '/borrowings/:id/edit' do
  authenticate!
  @borrowing = Borrowing.find_by(id: params[:id])
  authorize!(@borrowing.user)
  erb :"borrowings/edit"
end

put '/borrowings/:id' do
  authenticate!
  @borrowing = Borrowing.find_by(id: params[:id])
  authorize!(@borrowing.user)

  if @borrowing.update(params[:borrowing])
    redirect '/borrowings'
  else
    @errors = @borrowing.errors.full_messages
    erb :"borrowings/edit"
  end
end

delete '/borrowings/:id' do
  authenticate!
  @borrowing = Borrowing.find_by(id: params[:id])
  authorize!(@borrowing.user)
  @borrowing.destroy
  redirect '/borrowings'
end
