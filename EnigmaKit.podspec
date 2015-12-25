Pod::Spec.new do |s|
  s.name             = "EnigmaKit"
  s.version          = "0.1.0"
  s.summary          = "Enigma encryption in Swift."
  s.description      = <<-DESC
  Enigma encryption/decryption in Swift.
                       DESC

  s.homepage         = "https://github.com/mikaoj/EnigmaKit"
  s.license          = 'MIT'
  s.author           = { "Joakim Gyllström" => "joakim@backslashed.se" }
  s.source           = { :git => "https://github.com/mikaoj/EnigmaKit.git", :tag => s.version.to_s }

  s.platform     = :ios, '8.0'
  s.requires_arc = true

  s.source_files = 'Pod/Classes/**/*'
end
