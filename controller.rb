require ('sinatra')
require ('sinatra/contrib/all') if development?
require ('pry')

require_relative('./models/film.rb')
also_reload('./models/*')


get '/films' do
    @films = Film.all()
    erb(:index)
end


get '/test' do
    erb(:testing)
end




