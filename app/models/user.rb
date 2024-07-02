class User < ApplicationRecord
  rolify

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :students, foreign_key: 'teacher_id'
  has_many :teachers, through: :students

  after_create :assign_default_role

  def assign_default_role
    self.add_role(:student) if self.roles.blank?
  end

  def teacher?
    has_role?(:teacher)
  end

  def student?
    has_role?(:student)
  end
end
