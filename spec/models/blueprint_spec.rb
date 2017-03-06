require 'rails_helper'

describe Blueprint do
  it { should have_many :stories }
  it { should belong_to :user}
end