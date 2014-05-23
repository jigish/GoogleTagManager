Pod::Spec.new do |s|
  s.name = 'GoogleTagManager'
  s.version = '3.06'
  s.summary = 'Google Tag Manager SDK.'
  s.description = 'Google Tag Manager enables developers to change configuration values in their mobile applications using the Google Tag Manager interface without having to rebuild and resubmit application binaries to app marketplaces.'
  s.homepage = 'http://developers.google.com/tag-manager/ios'
  s.license = {
    :type => 'Copyright',
    :text => <<-LICENSE
Copyright 2013 Google, Inc. All rights reserved.
LICENSE
  }

  s.author = 'Google Inc.'
  s.source = { :git => 'https://github.com/jigish/GoogleTagManager' }
  s.platform = :ios
  s.source_files = 'GoogleTagManager/Library/*.h'
  s.preserve_paths = 'libGoogleAnalyticsServices.a'
  s.library = 'GoogleAnalyticsServices', 'z', 'sqlite3.0'
  s.framework = 'CFNetwork', 'CoreData', 'SystemConfiguration', 'AdSupport'
  s.xcconfig = { 'OTHER_LDFLAGS' => '-ObjC' , 'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/GoogleTagManager"'}
  s.requires_arc = false
end
