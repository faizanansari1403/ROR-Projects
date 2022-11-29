class Mark < ApplicationRecord
  belongs_to :student

  validates :student_id, uniqueness:true
  before_save:merge_marks
  before_save:stud_percentage
  def merge_marks
    self.total = self.m1+self.m2+self.m3+self.m4+self.m5
  end

  def stud_percentage
    self.percentage = (self.m1+self.m2+self.m3+self.m4+self.m5)/5
  end
end
