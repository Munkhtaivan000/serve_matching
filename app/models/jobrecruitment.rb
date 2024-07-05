
class JobRecruitment < ApplicationRecord
    belongs_to :user
    has_many :job_applications
    mount_uploader :image, ImageUploader
  end

  