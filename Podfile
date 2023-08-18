# Uncomment the next line to define a global platform for your project
# platform :ios, '9.0'

target 'nanuri-app-renewal' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!

  # Pods for nanuri-app-renewal
  pod 'Alamofire', '~> 5.5'
  pod 'SnapKit', '~> 5.0.0'
  pod 'IQKeyboardManagerSwift', '6.3.0'
  pod 'KakaoSDK'
  pod 'Starscream', '~> 4.0.0'
  pod 'SDWebImage', '~> 5.0'
post_install do |installer|
    installer.generated_projects.each do |project|
          project.targets.each do |target|
              target.build_configurations.each do |config|
                  config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '13.0'
               end
          end
   end
end
end
