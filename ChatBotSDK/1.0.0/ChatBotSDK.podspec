Pod::Spec.new do |s|
  s.name             = 'ChatBotSDK'
  s.version          = '1.0.0'
  s.summary          = 'WotNot ChatBot SDK for iOS - A comprehensive chatbot integration framework'
  s.description      = <<-DESC
                       WotNot ChatBot SDK provides a complete solution for integrating chatbot functionality into iOS applications. 
                       Features include real-time messaging, file uploads, conversation management, and customizable UI components.
                       DESC
  s.homepage         = 'https://github.com/wotnot/chatbot-sdk-ios'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'WotNot' => 'support@wotnot.ai' }
  s.source           = { :git => 'https://github.com/MahekkumarChaniyara/PrivateSpecs.git', :tag => s.version.to_s }
  
  s.ios.deployment_target = '15.6'
  s.swift_version = '5.0'
  
  # Binary framework distribution
  s.vendored_frameworks = 'ChatBotSDK.xcframework'
  
  # Dependencies
  s.dependency 'Socket.IO-Client-Swift', '~> 16.0'
  s.dependency 'Starscream', '~> 4.0'
  
  # Framework requirements
  s.frameworks = 'Foundation', 'UIKit', 'Combine'
  s.requires_arc = true
  
  # Privacy and security
  s.pod_target_xcconfig = {
    'BUILD_LIBRARY_FOR_DISTRIBUTION' => 'YES',
    'SWIFT_COMPILATION_MODE' => 'wholemodule'
  }
end
