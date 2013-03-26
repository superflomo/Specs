Pod::Spec.new do |s|
  s.name         = "LightRest"
  s.version      = "0.0.1"
  s.summary      = "A short description of LightRest."
  s.homepage     = "http://superflomo.com"
  
  s.authors      = { "Florian Buerger" => "flo@superflomo.com", "Moritz Haarmann" => "mo@superflomo.com" }

  s.source       = { :git => "git@bitbucket.org:superflomo/lightrest.git" }
  s.platform     = :ios, '6.0'
  s.source_files = 'LightRest', 'LightRest/**/*.{h,m}'
  s.framework  = 'CoreData'
  s.requires_arc = true
  
  s.dependency 'AFNetworking'
  s.dependency 'MagicalRecord'
  s.dependency 'JSONKit'
  
end
