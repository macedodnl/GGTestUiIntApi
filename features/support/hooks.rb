require "report_builder"
require 'selenium-webdriver'
require_relative '../support/pages/ClassBaseTest.rb'

at_exit do
  ReportBuilder.input_path = "log/report.json"
  ReportBuilder.configure do |config|
    config.report_types = [:json, :html]
    options = {
        report_title: "Automação de testes",
    }
    ReportBuilder.build_report options
  end
end