require 'sinatra'
require 'data_mapper'
require 'rack-flash'
require 'sinatra/partial'
require_relative 'models/user'
require_relative 'models/message'
require_relative 'helpers/application'
require_relative 'data_mapper_setup'

require_relative 'controllers/application'
require_relative 'controllers/users'
require_relative 'controllers/sessions'
require_relative 'controllers/messages'

set :public_dir, Proc.new { File.join(root, "public")}
set :public_folder, 'public'
enable :sessions
set :session_secret, "secret"
use Rack::Flash
set :partial_template_engine, :erb




