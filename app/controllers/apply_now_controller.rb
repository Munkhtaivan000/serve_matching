class ApplyNowController < ApplicationController
    def index
    end
    
    def apply
        @jobrecruitment = Jobrecruitment.find(params[:id]) if params[:id].present?
      end
end
