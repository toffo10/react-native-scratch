require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "RNScratch"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.description  = package['description']
  s.homepage     = "https://github.com/ConduitMobileRND/react-native-scratch"
  s.license      = package['license']
  # s.license    = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author       = { "author" => "author@domain.cn" }
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/ConduitMobileRND/react-native-scratch.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,m}"
  s.requires_arc = true

  s.dependency "React"
end

