require 'helper'

class TestNoData < Minitest::Test

  context 'parse a product without data' do
    setup do
      message = ONIX::ONIXMessage.new
      message.parse("test/fixtures/product_without_data.xml")
      @product = message.products.first
    end

    should "have a record reference" do
      assert_equal '9782707154298', @product.record_reference
    end

    should "have an EAN13" do
      assert_equal "9782707154298", @product.ean
    end

    should "have a nil title" do
      assert_nil @product.title
    end

    should "have a nil subtitle" do
      assert_nil @product.subtitle
    end

    should "have a nil edition_number" do
      assert_nil @product.edition_number
    end

    should "have a default language_of_text" do
      assert_nil @product.language_of_text
    end

    should "have a default language_code_of_text" do
      assert_nil @product.language_code_of_text
    end

    should "have a default language_name_of_text" do
      assert_nil @product.language_name_of_text
    end

    should "have a nil publisher_collection_title" do
      assert_nil @product.publisher_collection_title
    end

    should "have a nil subjects" do
      assert_nil @product.subjects
    end

    should "have an empty bisac_categories" do
      assert_equal [], @product.bisac_categories
    end

    should "have an empty clil_categories" do
      assert_equal [], @product.bisac_categories
    end

    should "have a nil keywords" do
      assert_nil @product.keywords
    end

    should "have a nil protection_type" do
      assert_nil @product.protection_type
    end

    should "have a nil protections" do
      assert_nil @product.protections
    end

    should "have a nil digital?" do
      assert_nil @product.digital?
    end

    should "have a nil audio?" do
      assert_nil @product.audio?
    end

    should "have a nil streaming?" do
      assert_nil @product.streaming?
    end

    should "have a nil bundle?" do
      assert_nil @product.bundle?
    end

    should "have an empty parts" do
      assert_equal [], @product.parts
    end

    should "have a nil filesize" do
      assert_nil @product.filesize
    end

    should "have an empty audio_formats" do
      assert_equal [], @product.audio_formats
    end

    should "have a nil audio_format" do
      assert_nil @product.audio_format
    end

    should "have a nil file_format" do
      assert_nil @product.file_format
    end

    should "have a nil form_details" do
      assert_nil @product.form_details
    end

    should "have a nil reflowable?" do
      assert_nil @product.reflowable?
    end

    should "have a nil file_mimetype" do
      assert_nil @product.file_mimetype
    end

    should "have a nil file_description" do
      assert_nil @product.file_description
    end

    should "have a nil raw_file_description" do
      assert_nil @product.raw_file_description
    end

    should "have a nil pages" do
      assert_nil @product.pages
    end

    should "have a nil contributors" do
      assert_nil @product.contributors
    end

    should "have an empty onix_outlets_values" do
      assert_equal [], @product.onix_outlets_values
    end

  end
end
