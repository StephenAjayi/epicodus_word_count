require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  @count = params.fetch('user_input_string').word_counter('word_to_count')
  erb(:count)
end
