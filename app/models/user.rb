class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  validate :superuser, :uniqueness => {:message => "no pude haber mas de uno"}
  after_create :set_abogado
  after_destroy :ensure_an_superuser

  private
  def set_abogado
   if  User.count == 1
     User.first.update_attributes(:abogado => true, :superuser => true)
   else
     return true
   end
  end
  def ensure_an_superuser
    users = User.all.select {|user| user.superuser == true}
    if users.count.zero?
      raise 'No puede borrar este usuario'
    end
  end
end
