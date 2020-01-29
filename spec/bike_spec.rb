require 'bike'

describe Bike do
  describe 'initialization' do
  end
  it 'responds to working' do
    expect(Bike.new).to respond_to (:working?)
  end
  it 'works' do
    expect(Bike.new).to be_working
  end
  it 'can be reported broken' do
    subject.report_broken
    expect(subject).to be_broken
  end
end
