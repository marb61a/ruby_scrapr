class PagesController < ApplicationController
    def index
        @newsscrapers = Newsscraper.all.first(4)
        @comments = Comment.last(30)
    end
end