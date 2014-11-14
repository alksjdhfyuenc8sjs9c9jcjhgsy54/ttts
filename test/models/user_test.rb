=begin rdoc
=userモデルのテスト	
=end
require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  # すべてのフィールドにデータがはいっていること
  test "data wrong" do
  	usr = User.new({})
  	assert !usr.save, "Succeeded to save"
  end
  
   すべてのフィールドにデータがはいっていること
  test "data aaaa" do
  	usr = User.new({})
  	assert !usr.save, "Succeeded to save"
  end
end
