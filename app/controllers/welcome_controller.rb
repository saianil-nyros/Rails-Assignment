class WelcomeController < ApplicationController
  def index
  end
   def page 
   	puts 'hello'
   	
  end
  def second
  	puts 'second method'
  	@sample='second'

  end
    def third
  	puts 'third method'
  	@sample='third'
  	
  end
end
