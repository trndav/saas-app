class Project < ApplicationRecord
    validates_uniqueness_of :title
    validate :free_plan_can_only_have_one_project

    def free_plan_can_only_have_one_project
    end
end
