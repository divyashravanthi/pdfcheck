# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Pdfcheck::Application.initialize!

PDFKit.configure do |config|
  config.default_options = {
    :encoding      => 'UTF-8',
    :page_size     => 'Letter',
    :margin_top    => '0.5in',
    :margin_right  => '0.5in',
    :margin_bottom => '0.7in',
    :margin_left   => '0.5in'
  }
end