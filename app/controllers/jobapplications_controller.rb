class JobapplicationsController < ApplicationController
    def index
      @jobrecruitments = JobRecruitments.all
     puts @jobrecruitments
    end
    def new 
        @jobrecruitments = Jobrecruitments.new
    end
end
  