require_relative '../test_helper.rb'
# require_relative "../application_system_test_case"

class SavekTest < ActionDispatch::IntegrationTest

  test "should list stock prices" do
    get "/saveks"
    assert_select "h1", "Listing Stock Prices"
    assert_select "table" do
      assert_select "thead" do
        assert_select "tr" do
          assert_select "th" do |elements|
                assert_select elements, "<tr>Stock name</tr>", 1
                assert_select elements, "<tr>Stock nam</tr>", 0
                assert_select elements, "<tr>Stock name</tr>"
          end
        end
      end
    end
  end

  test "should list Saveks" do
    get "/saveks"
    assert_select "h1", "Listing Saveks"
    assert_select "table" do
      assert_select "thead" do
        assert_select "tr" do
          assert_select "th" do |elements|
            elements.each do |element|
              assert_select elements, "<tr>First name</tr>", 1
            end
          end
        end
      end
    end
  end

  test "should Create New Savek From UI" do
    get "/saveks"
    # unable to Click because of SystemTestCase class missing in ActionDispatch
    # click_on "New Savek"

    # end
  end

end
