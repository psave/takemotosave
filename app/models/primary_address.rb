class PrimaryAddress < ActiveRecord::Base

  belongs_to :guest

  # self.table_name = "primary_address"

end