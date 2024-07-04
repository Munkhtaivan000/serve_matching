class HomeController < ApplicationController
    def index 
        @jobrecruitments = JobRecruitment.all
    end
    
end
