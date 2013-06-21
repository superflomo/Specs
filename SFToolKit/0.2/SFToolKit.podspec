Pod::Spec.new do |s|
  s.name         = 'SFToolKit'
  s.version      = '0.2'
  s.summary      = 'Collection of useful cocoa classes & categories.'
  s.homepage     = 'https://github.com/superflomo/SFToolKit'
  s.author       = { 'Florian Buerger' => 'flo@superflomo.com', 'Moritz Haarmann' => 'mo@superflomo.com' }
  
  s.license      = 'MIT'
  s.source       = { :git => 'git@github.com:superflomo/SFToolKit.git' }
  
  s.platform     = :ios, '6.0'
  s.source_files = 'SFToolKit'
  s.requires_arc = true
  
  def s.post_install(target)
    prefix_header = config.project_pods_root + target.prefix_header_filename
    prefix_header.open('a') do |file|
      file.puts(%{#ifdef __OBJC__\n#import "SFToolKit.h"\n#endif})
    end
  end

end
