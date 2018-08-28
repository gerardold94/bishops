$LOAD_PATH.unshift File.expand_path("../../lib", __FILE__)
require "bishop"

require "minitest/autorun"
require "minitest-spec-context"
require "minitest/reporters"
require "color_pound_spec_reporter"

Minitest::Reporters.use! [ColorPoundSpecReporter.new]
