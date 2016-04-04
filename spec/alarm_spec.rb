require 'spec_helper'
require 'alarm'

describe Alarm do
  context "#verify" do
    it "its not time to wake" do
      now = Timecop.freeze(Time.new(2016, 01, 01, 00, 00, 00))
      expect(subject.verify(now)).to eq(false)
      expect(subject.status).to eq(0)
    end
    it "its time to wake" do
      now = Timecop.freeze(Time.new(2016, 01, 01, 07, 00, 00))
      expect(subject.verify(now)).to eq(true)
      expect(subject.status).to eq(1)
    end
  end
end
