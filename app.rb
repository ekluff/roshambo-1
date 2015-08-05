require('sinatra')
require('sinatra/reloader')
require('./lib/roshambo')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/results') do
  @results = params.fetch('user_input').roshambo()
  erb(:results)
end
