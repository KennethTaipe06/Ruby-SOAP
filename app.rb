require 'sinatra' # Requiere la gema Sinatra para crear aplicaciones web
require 'builder' # Requiere la gema Builder para construir XML

# Define una ruta POST en '/hello'
post '/hello' do
  content_type 'text/xml' # Establece el tipo de contenido de la respuesta a 'text/xml'
  # Ruta que maneja solicitudes SOAP POST a /hello y responde con XML
  builder :hello # Usa la plantilla Builder llamada :hello para generar la respuesta XML
end

# Define una ruta GET en '/index.html'
get '/index.html' do
  send_file 'index.html' # Envía el archivo 'index.html' como respuesta
end

# Define una ruta GET en '/swagger.yml'
get '/swagger.yml' do
  send_file 'swagger.yml' # Envía el archivo 'swagger.yml' como respuesta
end

# Define una ruta GET en la raíz '/'
get '/' do
  send_file 'hello.html' # Envía el archivo 'hello.html' como respuesta
end

__END__

@@ hello
# Plantilla Builder para construir la respuesta SOAP en XML
xml.instruct! # Instrucción XML estándar
xml.Envelope('xmlns:soap' => 'http://schemas.xmlsoap.org/soap/envelope/') do # Define el elemento Envelope con el namespace SOAP
  xml.Body do # Define el elemento Body
    xml.HelloResponse do # Define el elemento HelloResponse
      xml.Message 'Hola Mundo!' # Define el elemento Message con el contenido 'Hola Mundo!'
    end
  end
end