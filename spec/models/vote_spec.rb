require 'rails_helper'

describe Vote do
  it "has a valid factory" do
    expect(build(:vote)).to be_valid
  end

  it 'returns a Vote object' do
    expect(build(:vote)).to be_a(Vote)
  end

  it "has a votable_id that is a Fixnum" do
    expect(build(:vote)[:votable_id]).to be_an_instance_of(Fixnum)
  end

  it "has a votable_type that is a question" do
    expect(build(:vote)[:votable_type]).to satisfy { |value| value == 'question' || value == 'answer'}
  end

  it "has a user_id that is a Fixnum" do
    expect(build(:vote)[:user_id]).to be_an_instance_of(Fixnum)
  end
end
