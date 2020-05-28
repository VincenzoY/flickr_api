class HomepageController < ApplicationController

    def index
    end

    def create
        @flickr = Flickr.new ENV['KEY'], ENV['SECRET']
        begin
            @id = (@flickr.people.findByUsername :username => params["user"]["id"])["id"] 
            @photos = @flickr.people.getPublicPhotos :user_id => @id
        rescue
            flash.alert = "Not a valid User"
        end
        render :index
    end

end
