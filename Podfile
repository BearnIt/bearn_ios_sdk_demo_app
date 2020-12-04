# Uncomment this line to define a global platform for your project
source 'https://git-codecommit.ap-southeast-1.amazonaws.com/v1/repos/myfiziq-sdk-podrepo'
source 'https://github.com/BearnIt/bearn_ios_sdk_podrepo.git'
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.1'

# Comment this line if you're not using Swift and don't want to use dynamic frameworks
use_frameworks!
inhibit_all_warnings!

target 'DemoBearnSDK' do
  pod "BearnSDK"
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings['BUILD_LIBRARY_FOR_DISTRIBUTION'] = 'YES'
      if config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'].to_f < 12.0
         config.build_settings['IPHONEOS_DEPLOYMENT_TARGET'] = '12.0'
      end
    end
  end
end
