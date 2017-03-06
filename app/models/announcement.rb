class Announcement < ActiveRecord::Base
		def start_time
        self.announcement_date ##Where 'start' is a attribute of type 'Date' accessible through MyModel's relationship
    end
end
