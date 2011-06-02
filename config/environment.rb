# Load the rails application
require File.expand_path('../application', __FILE__)
# require 'cached_model'

# Initialize the rails application
Rewrite::Application.initialize!

# memcache_options = {
#   :c_threshold => 10_000,
#   :compression => true,
#   :debug =>false,
#   :namespace => 'Rewrite',
#   :readonly => false,
#   :urlencode =>false
# }
#  
# CACHE = MemCache.new memcache_options
# CACHE.servers = 'localhost:11211'

# unless defined? MEMCACHE_OPTIONS then
# 　　MEMCACHE_OPTIONS = {
# 　　:debug => false,
# 　　:namespace => ‘my_memcache’,
# 　　:readonly => false
# 　　}
# end
# 
# unless defined? MEMCACHE_CONFIG then
# 　　File.open "#{RAILS_ROOT}/config/memcache.yml" do |memcache|
# 　　MEMCACHE_CONFIG = YAML::load memcache
# 　　end
# end
# 
# unless defined? CACHE then
# 　　CACHE = MemCache.new MEMCACHE_OPTIONS
# 　　CACHE.servers = MEMCACHE_CONFIG[RAILS_ENV]
# end
# 
# ActionController::CgiRequest::DEFAULT_SESSION_OPTIONS.update(
# 　　:database_manager => CGI::Session::MemCacheStore,
# 　　:cache => CACHE, :expires => 3600 * 12)

