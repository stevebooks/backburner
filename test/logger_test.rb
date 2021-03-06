require File.expand_path('../test_helper', __FILE__)

describe "Backburner::Logger module" do
  include Backburner::Logger

  describe "for log_info method" do
    it "prints out to std out" do
      output = capture_stdout { log_info("foo") }
      assert_equal "foo\n", output
    end
  end # log_info

  describe "for log_error method" do
    it "prints out to std err" do
      output = capture_stdout { log_error("bar") }
      assert_equal "bar\n", output
    end
  end # log_error
end