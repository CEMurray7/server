require 'sinatra'
# get '/' do
#   "Hello Wyncode"
# end

get '/' do
  File.read(File.join('public', 'hello.txt'))
end

# get '/' do
#   File.read(File.join('public', 'index.html'))
# end
