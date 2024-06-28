class JobrecruitmentsController < ApplicationController
    def index
        @jobrecruitment = JobRecruitment.all
          
    end
    def new 
        @jobrecruitment = JobRecruitment.new
    end


  
    def create
        @jobrecruitment = JobRecruitment.create!(jobrecruitment_params)
      
        redirect_to jobrecruitments_path
    end
      
    private
      
    def jobrecruitment_params
        params.permit(:description, :jobrecruitment)
    end
      
end

