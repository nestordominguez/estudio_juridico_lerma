class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
   # file _links in devise info
   #<%- if devise_mapping.registerable? && controller_name != 'registrations' %>
   #<%= link_to "Sign up", new_registration_path(resource_name) %><br />
   #<% end -%>
end
