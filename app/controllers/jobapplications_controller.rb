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

    def create
        user_id = current_user.id
        jobapplication_params[:jobid] = user_id
        jobapplication_params[:userid_id] = 3
        puts jobapplication_params 
        puts "abc"
        @jobapplications = JobApplication.create!(jobapplication_params)
          redirect_to jobapplication_path notice: 'Application submitted successfully!'

        end
      
      private
    
    def jobapplication_params
        params.permit(:jobrecruitment_id, :application_status, :location, :created_at )

      end
        
end
