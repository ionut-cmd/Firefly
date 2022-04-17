require "test_helper"

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  test " Dont Save empty User" do # DOESNT SAVE EMPTY USER
    user1 = User.new
    user1.save
    refute user1.valid?
  end
  test " Save Valid User" do # saves valid user
    user1 = User.new
    user1.email = 'course@work.com'
    user1.password = 'Bfdsugusgisogh123'
    user1.firstname = 'course'
    user1.lastname = 'work'
    user1.thumbnail = 'img7.jpg'
    user1.save
    assert user1.valid?
  end
  test " No Users with same email" do # no users with same email
    user1 = User.new
    user1.email = 'course@work.com'
    user1.password = 'Bfdsugusgisogh123'
    user1.firstname = 'course'
    user1.lastname = 'work'
    user1.thumbnail = 'img7.jpg'
    user1.save
    user2 = User.new
    user2.email = 'course@work.com'
    user2.password = 'Bfdsugusgisogh123'
    user2.firstname = 'course'
    user2.lastname = 'work'
    user2.thumbnail = 'img7.jpg'
    user2.save
    refute user2.valid?
  end
  test " Doesnot save User with password less than 6 or more than 40 digits" do # saves valid user
    user1 = User.new
    user1.email = 'course@work.com'
    user1.password = '1234'
    user1.firstname = 'course'
    user1.lastname = 'work'
    user1.thumbnail = 'img7.jpg'
    user1.save
  end
end
