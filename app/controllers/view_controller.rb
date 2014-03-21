class ViewController < ApplicationController
  # PDFkit check example
  def index
    # Load the html to convert to PDF
    html = File.read("#{Rails.root}/public/jdbfjgndjkfg.html")
    # Create a new kit and define page size to be US letter
    kit = PDFKit.new(html, :page_size => 'Letter')
    # Load our stylesheet into the kit to have colors & formatting
    kit.stylesheets << "#{Rails.root}/public/styles.css"
    # Save the html to a PDF file
    kit.to_file("#{Rails.root}/public/sdfsdfsdfsf.pdf")
    # Render the html
    render :text => html
  end
end
