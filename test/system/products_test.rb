require "application_system_test_case"

class ProductsTest < ApplicationSystemTestCase
  setup do
    @product = products(:first)
  end

  test "create a new product" do
    visit products_path
    assert_selector "h1", text: "Products"

    click_on 'new product'
    assert_selector "h1", text: "new product"

    fill_in 'name', with: "good product"
    click_on "save"

    assert_selector "h1", text: "Products"
    assert_text "good product"
  end

  test 'show a product' do
    visit products_path
    click_link @product.product_upc

    assert_selector "h1", text: @product.product_upc
  end

  test 'Update a product' do
    visit products_path
    assert_selector 'h1', text: "Products"

    click_on 'Edit', match: :first
    assert_selector 'h1', text: "edit product"

    fill_in "Name", with: "updated good product name"
    click_on "save"

    assert_selector "h1", text: "Products"
    assert_text "updated good product name"
  end

  test "Destroying a product" do
    visit products_path
    assert_text @product.product_upc

    click_on "Delete", match: :first
    assert_no_text @product.product_upc
  end
end
