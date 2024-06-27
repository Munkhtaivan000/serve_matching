class JobrecruitmentsController < ApplicationController
    def index
    end
    def create
        @jobapprecruitments = Jobrecruitment.create (comments_params)

        redirect_to root_path
    end
    private 

    def comments_params
        params.require(:jobrecruitments).permit(:text)
    end
    
end
