# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
Spree::HtmlInvoice::Config.set(html_invoice_logo_path: 'logo/invoice_logo.png')
Spree::HtmlInvoice::Config.set(:print_buttons => "invoice,packaging_slip")