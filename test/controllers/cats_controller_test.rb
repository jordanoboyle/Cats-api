require "test_helper"

class CatsControllerTest < ActionDispatch::IntegrationTest
  # test "the truth" do
  #   assert true
  # end
  test "index" do
    get "/cats.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal Cat.count, data.length
  end
  
  test "create" do
    assert_difference "Cat.count", 1 do
      post "/cats.json", params: { 
        name: "test product", 
        color: "blue", 
        weigth: 3,  
        price: 10,
         }
    end
  end
  
  test "show" do
    get "/cats/#{Cat.first.id}.json"
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal [
    "id", 
    "name", 
    "color", 
    "weight", 
    "metric_wt", 
    "price", 
    "tax", 
    "total_price", 
    "created_at", 
    "updated_at"], data.keys
  end
  
  test "update" do
    photo = Photo.first
    patch "/photos/#{photo.id}.json", params: { name: "Updated name" }
    assert_response 200
  
    data = JSON.parse(response.body)
    assert_equal "Updated name", data["name"]
  end
  
  test "destroy" do
    assert_difference "Photo.count", -1 do
      delete "/photos/#{Photo.first.id}.json"
      assert_response 200
    end
  end
end
