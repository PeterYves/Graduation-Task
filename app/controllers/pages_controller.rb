class PagesController < ApplicationController
    def home
        @course = Course.first
    end
end
