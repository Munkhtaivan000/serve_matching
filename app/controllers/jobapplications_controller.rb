# app/controllers/jobapplications_controller.rb
class JobapplicationsController < ApplicationController
    def index
      @jobrecruitments = JobRecruitment.all

    end  
    def new 
      @jobrecruitment = JobRecruitment.find(params[:jobrecruitmentid]) 
      end
    
    def apply_now
      @id = params[:id]
        @jobrecruitment = JobRecruitment.find(params[:id]) if params[:id].present?  
        respond_to do |format|
          format.html 
      end
    end
    
    def information
      @id = params[:id]
      @jobrecruitments = JobRecruitment.where(user_id: current_user.id)
    end

    def create
        user_id = current_user.id
        @params = jobapplication_params
        @params[:userid_id] = user_id
        puts @params 
        puts "abc"
        @jobapplications = JobApplication.create!(@params)
          redirect_to jobapplication_path notice: 'Application submitted successfully!'

        end
      
      private
    
    def jobapplication_params
        params.permit(:job_recruitments_id, :application_status, :userid_id, :location, :created_at )

      end
      
        
end
