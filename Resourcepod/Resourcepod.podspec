Pod::Spec.new do |s|
  s.name             = 'Resourcepod'
  s.version          = '1.0'
  s.summary          = 'Resourcepod'

  s.homepage         = 'https://cocoapods.com'
  s.license          = { type: 'MIT' }
  s.author           = { 'VoidLess' => '' }
  s.source           = { git: 'https://github.com/CocoaPods/CocoaPods.git', branch: 'master' }

  s.platform = :ios
  s.ios.deployment_target = '10.0'

  s.ios.resource_bundle = { 'ResourcepodResources' => 'Resources/*' }
end
