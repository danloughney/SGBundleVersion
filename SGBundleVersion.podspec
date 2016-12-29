Pod::Spec.new do |s|
    s.name         = "SGBundleVersion"
    s.version      = "0.0.1"
    s.summary                     = "Write app version into Settings.bundle"
    s.description                 = <<-DESC
    Write your app version into your Settings.bundle. Useful for troubleshooting customer issues.
    DESC
    s.homepage                    = "https://github.com/danloughney/SGBundleVersion"
    s.license                     = { :type => "MIT", :file => "LICENSE" }
    s.author                      = { "Daniel Loughney" => "danloughney@gmail.com" }
    s.social_media_url            = "http://twitter.com/dcloughney"
    s.platform                    = :ios
    s.ios.deployment_target       = "8.0"
    s.source                      = { :git => "https://github.com/danloughney/SGBundleVersion.git", :tag => "0.0.1" }
    s.source_files                = "Classes", "SGBundleVersion/*.{h,m}"
    s.public_header_files         = "SGBundleVersion/*.h"
    s.requires_arc                = true
end
