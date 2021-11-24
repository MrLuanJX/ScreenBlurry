
Pod::Spec.new do |spec|  

  spec.name         = "YJScreenBlurry"
  spec.version      = "0.0.1"
  spec.summary      = "A short description of YJScreenBlurry."

  spec.description  = <<-DESC
			A short description of CustomAlertView and CustomActionSheetView .
                   DESC

  spec.homepage     = "https://github.com/MrLuanJX/ScreenBlurry.git"

  spec.license      = { :type => "MIT", :file => "LICENSE" }

  spec.author             = { "MrLuanJX" => "22392372@qq.com" }

  spec.platform     = :ios, "9.0"

 spec.source       = { :git => "https://github.com/MrLuanJX/ScreenBlurry.git", :tag => "#{spec.version}" }



  spec.source_files  = "ScreenBlurry/ScreenBlurry/LJXScreenBlurry/**/*.{h,m}"
  spec.exclude_files = "ScreenBlurry/Exclude"

  # spec.resource  = "icon.png"
  # spec.resources = "Resources/*.png"

  # spec.preserve_paths = "FilesToSave", "MoreFilesToSave"

  # spec.framework  = "SomeFramework"
  # spec.frameworks = "SomeFramework", "AnotherFramework"

  # spec.library   = "iconv"
  # spec.libraries = "iconv", "xml2"

  # spec.requires_arc = true

  # spec.xcconfig = { "HEADER_SEARCH_PATHS" => "$(SDKROOT)/usr/include/libxml2" }
  # spec.dependency "JSONKit", "~> 1.4"

end
