class JobApplication < ApplicationRecord
    belongs_to :job_recruitment
    belongs_to :user
    

    
end
