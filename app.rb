require 'sinatra'

get '/*' do
  "Hello World! From Sinatra! Im running on platform: #{RUBY_PLATFORM}"
end