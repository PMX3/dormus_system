class FoodPlan < ActiveRecord::Base
  belongs_to :applicant
	 def start_time
        self.food_plan_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end
