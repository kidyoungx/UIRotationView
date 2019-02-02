Pod::Spec.new do |s|
  s.name         = "UIRotationView"
  s.version      = "1.0.1"
  s.summary      = "A rotating view with duration and clockwise properties."

  s.description  = <<-DESC
                    A rotating view with duration and clockwise properties usually use as UIActivityIndicatorView.
                   DESC

  s.homepage     = "https://github.com/kidyoungx/UIRotationView"

  s.license      = "MPL-2.0"

  s.author             = { "Kid Young" => "kidyoungx@gmail.com" }

  s.platform     = :ios, "5.0"

  s.source       = { :git => "https://github.com/kidyoungx/UIRotationView.git", :tag => "#{s.version}" }

  s.source_files  = "UIRotationView", "UIRotationView/**/*.{h,m}"
  s.exclude_files = "SampleUIRotationView"

  s.public_header_files = "UIRotationView/**/*.h"

  s.requires_arc = true

end
