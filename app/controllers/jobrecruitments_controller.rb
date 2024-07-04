class JobrecruitmentsController < ApplicationController
    
    def index
        @jobrecruitments = JobRecruitment.all
          
    end
    def new 
        @jobrecruitments = JobRecruitment.new
    end


  
    def create
        @jobrecruitments = JobRecruitment.create!(jobrecruitments_params)
        redirect_to jobrecruitments_path
        
    end
      
    private
      
    def jobrecruitments_params
        params.permit(:title, :description, :status, :location, :datetime, :endtime, :created_at, :image )
    end
      
end

