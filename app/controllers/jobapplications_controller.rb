class JobapplicationsController < ApplicationController
    def index
      @jobrecruitments = JobRecruitment.all
     puts @jobrecruitments
    end
    def new 
        @jobrecruitments = JobRecruitment.new
    end
end
  