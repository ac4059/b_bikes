require 'bike'

describe Bike do
  it 'responds to working' do
    expect(Bike.new).to respond_to (:working?)
  end
  it 'works' do
    expect(Bike.new).to be_working
  end
end
