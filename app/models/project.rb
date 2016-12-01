class Project < ApplicationRecord
  has_many :tasks
  # Has to be here to assoicate tasks with projects
  after_initialize :set_defaults
  # Integrate validations
  validates_presence_of :title, :description, :percent_complete
   # Custom scopes
  scope :almost_completed, -> { where('percent_complete > 75.0') }
  scope :still_needs_some_work, -> { where('percent_complete < 75.0') }
  # Add defaults
  def set_defaults
    self.percent_complete ||= 0.0
  end
  # Integrate callbacks
  # Integrate database relationships
end