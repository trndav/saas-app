class Project < ApplicationRecord
    validates_uniqueness_of :title
    validate :free_plan_can_only_have_one_project

    def free_plan_can_only_have_one_project
        if self.new_record? && (project.count > 0) && (tenant.plan == "free" )
            errors.add(:base, "Free plan can have only 1 project")
        end
    end
end
