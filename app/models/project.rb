class Project < ApplicationRecord
    validates_uniqueness_of :title
    validate :free_plan_can_only_have_one_project
    has_many :artifacts, dependent: :destroy

    has_many :user_projects
    has_many :users, through: :user_projects

    def free_plan_can_only_have_one_project
    end
end
