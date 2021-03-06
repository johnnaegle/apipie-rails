require "spec_helper"

describe ExtendedController do

  it 'should include params from both original controller and extending concern' do
    user_param = Apipie["extended#create"].params[:user]
    expect(user_param.validator.params_ordered.map(&:name)).to eq [:name, :password, :from_concern]
  end
end

