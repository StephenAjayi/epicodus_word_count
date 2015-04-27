require('sinatra')
require('sinatra/reloader')
require('./lib/word_counter')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/count') do
  user_string = params.fetch('user_input_string')
  word = params.fetch('word_to_count')
  @count = user_string.word_counter(word)
  erb(:count)
end
