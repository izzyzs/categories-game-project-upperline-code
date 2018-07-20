require './config/environment'
require './app/models/sample_model'
#require './app/models/States.rb'


class ApplicationController < Sinatra::Base
  @@category = nil
  
  
  configure do
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  get '/' do
    @list = ""
    return erb :index
  end
  
  post '/results' do
     
     @category = params["categories"]
     @list = setCategory(@category)
     @computerresults = choose_word_from_category(@list)
     @chosenCategory = @computerresults[0]
     @list = @computerresults[1]
     @string = stringify(@list)
     puts @string
     
     return erb :results
  end
  
   post '/reresults' do
     @string = params["string"]
     @list = unstringify(@string)
     print @list
     @playersWord = params["playerAnswer"]
     @playerresults = player_chooses_word(@playersWord, @list)
     @does_it_belong = @playerresults[0]
     @list = @playerresults[1]
     @computerresults = choose_word_from_category(@list)
     print @computerresults
     @chosenCategory = @computerresults[0]
     @list = @computerresults[1]
     print @list
     @string = stringify(@list)
     puts @string
     return erb :results
  end
end



# require './config/environment'
# require './app/models/sample_model'

# class ApplicationController < Sinatra::Base
#   configure do
#     set :public_folder, 'public'
#     set :views, 'app/views'
#   end

#   get '/' do
#     @theList = ""
#     return erb :index
#   end
  
#   post '/results' do
#     @theList = params["currentList"] + params["newListItem"]
#     return erb :index
#   end
# end