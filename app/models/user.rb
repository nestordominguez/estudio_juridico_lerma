class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :set_abogado

  private
  def set_abogado
   if  User.count == 1
     User.first.update_attribute(:abogado, true)
   else
     return true
   end
  end   
end
