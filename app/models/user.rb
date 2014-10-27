class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  after_create :set_abogado
  before_destroy :ensure_an_superuser


  private
  def set_abogado
    user ||= User.first.update_attributes(:abogado => true, :superuser => true)
    return true
  end

  def ensure_an_superuser
    raise 'No puede borrar este usuario' if self.superuser == true && self.id == 1
    return true
  end
end
