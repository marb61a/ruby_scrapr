class PagesController < ApplicationController
    def index
        @newsscrapers = Newsscraper.all.first(4)
    end
end