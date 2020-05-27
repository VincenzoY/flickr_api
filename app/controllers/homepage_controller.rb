class HomepageController < ApplicationController

    def index
    end

    def create
        @id ||= params["user"]["id"] unless params["user"] == nil
        @flickr = Flickr.new ENV['KEY'], ENV['SECRET']
        begin
            @photos = @flickr.people.getPublicPhotos :user_id => @id
        rescue
            redirect_to :root, notice: "User not found"
        end
    end

    private

    
    
end
