class Api::V1::CoreController < InheritedResources::Base
  respond_to :json
  actions :all
  #before_action :authenticate_user!
end
