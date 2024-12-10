require 'sinatra'
require 'builder'

post '/hello' do
  content_type 'text/xml'
  builder :hello
end

get '/index.html' do
  send_file 'index.html'
end

get '/swagger.yml' do
  send_file 'swagger.yml'
end

get '/' do
  send_file 'hello.html'
end

__END__

@@ hello
xml.instruct!
xml.Envelope('xmlns:soap' => 'http://schemas.xmlsoap.org/soap/envelope/') do
  xml.Body do
    xml.HelloResponse do
end
      xml.Message 'Hola Mundo!'
    end
  end
end

__END__

@@ hello
xml.instruct!
xml.Envelope('xmlns:soap' => 'http://schemas.xmlsoap.org/soap/envelope/') do
  xml.Body do
    xml.HelloResponse do
      xml.Message 'Hola Mundo!'
    end
  end
end