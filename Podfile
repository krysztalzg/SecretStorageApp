#
#  Podfile
#
#  Copyright (c) 2019 Netguru Sp. z o.o. All rights reserved.
#

# Pod sources
source 'https://cdn.cocoapods.org/'

# Initial configuration
platform :ios, '11.0'
use_frameworks!
inhibit_all_warnings!

project 'SecretStorageApp'

target 'SecretStorageApp' do
  pod "ArkanaKeys", path: "ArkanaKeys/ArkanaKeys"
  pod "ArkanaKeysInterfaces", path: "ArkanaKeys/ArkanaKeysInterfaces"
end

plugin 'cocoapods-keys', {
    project: 'SecretStorageApp',
    keys: [
      'PODS_SECRET_KEY1',
      'PODS_SECRET_KEY2'
    ]
}

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |config|
      config.build_settings.delete 'IPHONEOS_DEPLOYMENT_TARGET'
     end
   end
end
