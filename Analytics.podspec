Pod::Spec.new do |s|
  s.name            = "Analytics"
  s.version         = "0.10.1"
  s.summary         = "Segment.io analytics and marketing tools library for iOS."
  s.homepage        = "https://segment.io/libraries/ios"
  s.license         = { :type => "MIT", :file => "License.md" }
  s.author          = { "Segment.io" => "friends@segment.io" }
  s.source          = { :git => 'https://github.com/ozinc/analytics-ios.git' }
  s.platform        = :ios, "6.0"
  s.source_files    = "Analytics/**/*.{h,m,c}"
  s.resources       = ["Analytics.framework/Versions/A/Resources/*"]
  s.frameworks      = "Analytics", "Foundation", "UIKit", "CoreData", "SystemConfiguration", 
                      "QuartzCore", "CFNetwork", "CoreTelephony", "Security", "CoreGraphics"
  s.libraries       = "sqlite3", "z"
  s.xcconfig        = { "OTHER_LDFLAGS" => "-ObjC", "FRAMEWORK_SEARCH_PATHS" => '"$(PODS_ROOT)/Analytics"' }
end
