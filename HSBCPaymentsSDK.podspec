Pod::Spec.new do |s|
    s.name         = "HSBCPaymentsSDK"
    s.version      = "1.0.2"
    s.summary      = "Hyper visualization and payment processing."
    s.description  = <<-DESC
                    Create payment experiences for user to improve conversion and success rate.
                    DESC

    s.homepage     = 'https://juspay.io/'
    s.author       = { "PP" => "pp-sdk@juspay.in" }

    s.license      = { :type => "LGPL", :file => "LICENSE" }

    s.platform     = :ios, "12.0"
    
    s.source       = { :git => "https://github.com/juspay/hsbc-ios.git", :tag => "v#{s.version}" }

    s.source_files = 'Sources/HSBCPaymentsSDK/**/*.{h,m}'
    s.resources    = ['Fuse.rb']

    # default dependency
    s.dependency 'HyperSDK', '2.2.4.3'
end
