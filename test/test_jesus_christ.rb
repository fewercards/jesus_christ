# frozen_string_literal: true

require_relative "test_helper"

class TestJesusChrist < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::JesusChrist::VERSION
  end

  def test_protect_prints_banner
    assert_output(/✝ This code is now protected by Jesus Christ\./) do
      JesusChrist.protect!
    end
  end

  def test_take_the_wheel_returns_block_value_when_successful
    result = JesusChrist.take_the_wheel(fallback: :rescued) do
      42
    end

    assert_equal 42, result
  end

  def test_take_the_wheel_rescues_error_and_returns_nil_by_default
    result = nil

    assert_output(/✝ Exception caught \(ZeroDivisionError: divided by 0\) — forgiven and rescued\./) do
      result = JesusChrist.take_the_wheel { 1 / 0 }
    end

    assert_nil result
  end

  def test_take_the_wheel_returns_custom_fallback_on_error
    result = nil

    assert_output(/✝ Exception caught \(RuntimeError: boom\)/) do
      result = JesusChrist.take_the_wheel(fallback: []) { raise "boom" }
    end

    assert_equal [], result
  end

  def test_take_the_wheel_reports_to_rails_error_when_defined
    reported = []
    fake_error_reporter = Object.new
    fake_error_reporter.define_singleton_method(:report) do |err, handled:, context:|
      reported << { error: err, handled: handled, context: context }
    end

    fake_rails = Module.new
    fake_rails.define_singleton_method(:error) { fake_error_reporter }

    Object.const_set(:Rails, fake_rails)

    assert_output(/forgiven and rescued/) do
      JesusChrist.take_the_wheel(fallback: :safe, context: { job: "sync" }) do
        raise ArgumentError, "bad input"
      end
    end

    assert_equal 1, reported.size
    assert_instance_of ArgumentError, reported.first[:error]
    assert_equal true, reported.first[:handled]
    assert_equal({ job: "sync" }, reported.first[:context])
  ensure
    Object.send(:remove_const, :Rails) if defined?(Rails)
  end

  def test_take_the_wheel_skips_rails_error_when_report_is_false
    called = false
    fake_error_reporter = Object.new
    fake_error_reporter.define_singleton_method(:report) { |*| called = true }

    fake_rails = Module.new
    fake_rails.define_singleton_method(:error) { fake_error_reporter }

    Object.const_set(:Rails, fake_rails)

    assert_output(/forgiven and rescued/) do
      JesusChrist.take_the_wheel(report: false) { raise "silent" }
    end

    refute called
  ensure
    Object.send(:remove_const, :Rails) if defined?(Rails)
  end

  def test_all_individual_prayer_methods_output_content
    JesusChrist::PRAYER_METHODS.each do |method_name|
      out, err = capture_io do
        JesusChrist.public_send(method_name)
      end

      assert_empty err
      assert_includes out, "✝", "Expected #{method_name} to include cross symbol"
      assert_includes out, "Amen.", "Expected #{method_name} to end with Amen."
    end
  end

  def test_pray_all_and_bless_all_run_all_prayers
    %i[pray_all bless_all].each do |method_name|
      out, _err = capture_io do
        JesusChrist.public_send(method_name)
      end

      assert_includes out, "This code is now protected by Jesus Christ."
      assert_includes out, "Our Father, who art in heaven"
      assert_includes out, "I believe in God, the Father almighty"
      assert_includes out, "High Priestly Prayer"
    end
  end

  def test_help_lists_methods_and_version
    out, _err = capture_io do
      JesusChrist.help
    end

    assert_includes out, JesusChrist::VERSION
    assert_includes out, "JesusChrist.take_the_wheel"
    assert_includes out, "JesusChrist.pray_all"
  end
end
