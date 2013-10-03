require 'sinatra'
require 'dalli'
load 'config.rb'

get '/' do
  @cache = get_cache
  
  unless @cache.nil?
    @res = ''
    begin
      @cache.get('a') 
      case params[:a]
        when 'set'
          @res = @cache.set('foo', 'bar')
        when 'get'
          @res = @cache.get('foo')
        when 'stats'
	  @res = @cache.stats()        
      end    
    rescue => e
      puts e.message
      @res = nil
    end
  
    @cache.close()
  end
  erb :index
end


