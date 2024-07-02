# app/controllers/jobapplications_controller.rb
class JobapplicationsController < ApplicationController
    def index
      @jobrecruitments = JobRecruitment.all
    end
  
    def new 
      @jobrecruitment = JobRecruitment.find(params[:jobrecruitmentid]) 
      end
    
    def apply_now
        @jobrecruitment = JobRecruitment.find(params[:id]) if params[:id].present?  
        respond_to do |format|
          format.html 
        end
  end
end
