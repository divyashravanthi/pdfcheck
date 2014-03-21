class ViewController < ApplicationController
  # PDFkit check example
  def index
    html = render_to_string(:template => "/view/index.html.erb", :layout => false)
    pdf = PDFKit.new(html)
    pdf.stylesheets << "#{Rails.root}/app/assets/stylesheets/view.css"
    pdf = pdf.to_file("#{Rails.root}/app/assets/pdfs/order.pdf")
  end
end
