class DestinationsController < ApplicationController 

    def index 
        @destinations = Destination.all 
    end 
    
    def show
        @destination = Destination.find(params[:id])
        # @most_likes = 
        @last_posts = @destination.posts.last(5)
      
        max = @destination.posts.map{|p|p.likes}.max_by{|l|l}
        @most_liked = @destination.posts.find{|p|p.likes == max}
        
    end 
    
    






end 
