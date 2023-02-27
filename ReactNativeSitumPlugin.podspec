require "json"
package = JSON.parse(File.read('package.json'))

Pod::Spec.new do |s|
  s.name          = "ReactNativeSitumPlugin"
  s.version       = package['version']
  s.summary       = "Situm react native plugin"
  s.homepage     = "https://github.com/author/situm-react-native-plugin.git"
  s.license      = "../LICENSE"
  s.author       = { "Situm Technologies S.L." => "situm@situm.com" }
  s.platform     = :ios, "8.0"
  s.source       = { :http => 'file:' + __dir__ + '/' } 
  s.source_files  = "ios/*.{h,m}"
  s.requires_arc = true


  s.dependency "React"
  s.dependency "SitumSDK", package['sdkVersions']["ios"]

end

  
