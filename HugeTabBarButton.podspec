Pod::Spec.new do |s|
  s.name         = "HugeTabBarButton"
  s.version      = "0.2"
  s.summary      = "HugeTabBarButton for huge UITabBar button images"
  s.description  = <<-DESC
  HugeTabBarButton lets you create a tab bar button with as huge of an image as you want
                   DESC

  s.homepage      = "https://github.com/fortmarek/HugeTabBarButton"
  s.license       = { :type => "MIT", :file => "LICENSE" }
  s.author        = { 'Marek Fort' => 'marekfort@me.com' }
  s.source        = { :git => "https://github.com/fortmarek/HugeTabBarButton.git", :tag => s.version.to_s }
  s.source_files  = "HugeTabBarButton/**/*"
  s.exclude_files = "HugeTabBarButton/*.plist"
  s.swift_version = "4.2"
  s.ios.deployment_target = "9.0"
  
end
