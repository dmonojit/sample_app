require_relative '../test_helper.rb'
# require_relative '../factories/savek_factory.rb'

# space for controller tests

class SavekControllerTest < ActionDispatch::IntegrationTest

  # include FactoryGirl::Syntax::Methods

  setup do
    @savek = saveks(:one)
  end

  test "should get index" do
    get '/saveks'
  assert_response :success
  end

  test "should get new" do
    get '/saveks/new'
    assert_response :success
  end

  test "should create savek" do
    assert_difference('Savek.count') do
      post '/saveks', :savek => @savek.attributes
    end
    assert_redirected_to savek_path(assigns(:savek))
  end

  test "should update savek" do
    url= "/saveks/#{@savek.id}"
    puts url
    puts "savek ID "+@savek.attributes.to_s
    put url, :savek => @savek.attributes
    assert_redirected_to savek_path(assigns(:savek))
  end

  test "should destroy savek" do
    url = "/saveks/#{@savek.id}"
    assert_difference('Savek.count', -1) do
      delete url
    end
  end

end
