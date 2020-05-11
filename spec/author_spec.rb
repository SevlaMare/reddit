require 'rails_helper'

describe Author do
  user1 = Author.new(
    username: 'user1',
    password: '123456', 
    email: 'abc@abc.com', 
    created_at: DateTime.now, 
    updated_at: DateTime.now
  )

  it "Accept new user" do
    expect(user1).to be_valid
  end

  it "Reject new user with null fields" do
    expect(Author.new).to_not be_valid
  end
end
