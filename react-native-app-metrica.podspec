require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-app-metrica"
  s.version      = package["version"]
  s.summary      = package["description"]
  s.authors      = { "Yandex LLC" => "appmetrica@yandex-team.com" }
  s.homepage     = package["homepage"]
  s.license      = package["license"]
  s.platform     = :ios, "7.0"
  s.source       = { :git => "https://github.com/tvilteam/react-native-app-metrica", :tag => "v#{s.version}" }

  s.source_files = "ios/**/*.{h,m,swift}"
  s.requires_arc = true

  s.dependency "React"
  s.dependency 'YandexMobileMetrica', '3.9.4'
end
