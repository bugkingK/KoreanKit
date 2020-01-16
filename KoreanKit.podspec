Pod::Spec.new do |s|

  s.name         = "KoreanKit"
  s.version      = "1.0.0"
  s.summary      = "You can separate the initial, neutral, and finalities of Hangul."
  s.description  = <<-DESC
You can separate the initial, neutral, and finalities of Hangul. You can check if the text is syllable
                   DESC

  s.homepage     = "https://github.com/bugkingK/KoreanKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "bugkingK" => "myway0710@naver.com" }
  s.swift_version = '5.0'
  s.osx.deployment_target = "10.10"
  s.ios.deployment_target = "10.0"
  s.watchos.deployment_target = "3.0"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/bugkingK/KoreanKit.git", :tag => "#{s.version}" }
  s.source_files = "Classes", "Sources/**/*.{swift}"

end