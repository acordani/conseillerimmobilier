class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :sales
  has_many :experiences, dependent: :destroy
  has_many :user_competences
  has_many :competences, through: :user_competences

  has_attachment :picture
end
