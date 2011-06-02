require 'rack-rewrite'

config.middleware.insert_before(Rack::Lock, Rack::Rewrite) do
  # r301 '/wiki/(.*)', 'http://www.google.com/?q=$1'
  r301    '/s/all_scenes',       '/interface/scenes/list'       #GET   LIST
  rewrite %r{/s/scene/(\d+)\.u}, '/interface/scenes/$1/change'  #POST  UPDATE
  rewrite %r{/s/scene/add},      '/interface/scenes/add'        #POST  CREATE 
  rewrite %r{/s/scene/(\d+)\.r}, '/interface/scenes/$1/remove'  #POST  DELETE
end 