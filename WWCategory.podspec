Pod::Spec.new do |s|
	
	s.name         = 'WWCategory'
	s.version      = '0.8.6'
	s.summary      = 'The iOS development simple and useful category.'
	s.homepage     = 'https://github.com/wonwoooochoi/WWCategory.git'
	s.license      = 'MIT'
	s.author       = { 'Won Woo Choi' => 'wonwoooochoi@gmail.com' }
	s.source       = { :git => "https://github.com/wonwoooochoi/WWCategory.git" }
	s.public_header_files = 'Category/WWCategory.h'
	s.source_files = 'Category/WWCategory.h'
	s.requires_arc = true
	s.ios.deployment_target = '7.0'
	
	s.subspec 'Foundation' do |ss|
		
		ss.source_files = 'Category/Foundation/FoundationCategory.h'
		ss.ios.framework = 'Foundation'
		
		ss.subspec 'NSArray' do |sss|
			
			sss.source_files = 'Category/Foundation/NSArray/*.{h,m}', 'Category/Foundation/NSObject/NSObject+PrintUicode.{h,m}'
			
		end
		
		ss.subspec 'NSData' do |sss|
			
			sss.source_files = 'Category/Foundation/NSData/*.{h,m}', 'Category/Foundation/NSString/NSString+JSON.{h,m}'
			sss.ios.frameworks = 'Security'
			
		end
		
		ss.subspec 'NSDictionary' do |sss|
			
			sss.source_files = 'Category/Foundation/NSDictionary/*.{h,m}', 'Category/Foundation/NSObject/NSObject+PrintUicode.{h,m}'
			
		end
		
		ss.subspec 'NSFileManager' do |sss|
			
			sss.source_files = 'Category/Foundation/NSFileManager/*.{h,m}'
			
		end
		
		ss.subspec 'NSNotificationCenter' do |sss|
			
			sss.source_files = 'Category/Foundation/NSNotificationCenter/*.{h,m}'
			
		end
		
		ss.subspec 'NSObject' do |sss|
			
			sss.source_files = 'Category/Foundation/NSObject/*.{h,m}'
			
		end
		
		ss.subspec 'NSSet' do |sss|
			
			sss.source_files = 'Category/Foundation/NSSet/*.{h,m}', 'Category/Foundation/NSObject/NSObject+PrintUicode.{h,m}'
			
		end
		
		ss.subspec 'NSString' do |sss|
			
			sss.source_files = 'Category/Foundation/NSString/*.{h,m}', 'Category/Foundation/NSData/NSData+AES.{h,m}'
			sss.ios.frameworks = 'Security'
			
		end
		
	end
	
	s.subspec 'UIKit' do |ss|
		
		ss.source_files = 'Category/UIKit/UIKitCategory.h'
		ss.ios.framework = 'Foundation', 'UIKit'
		
		ss.subspec 'UIApplication' do |sss|
			
			sss.source_files = 'Category/UIKit/UIApplication/*.{h,m}'
			
		end
		
		ss.subspec 'UIBarButtonItem' do |sss|
			
			sss.source_files = 'Category/UIKit/UIBarButtonItem/*.{h,m}'
			
		end
		
		ss.subspec 'UIBezierPath' do |sss|
			
			sss.source_files = 'Category/UIKit/UIBezierPath/*.{h,m}'
			
		end
		
		ss.subspec 'UIButton' do |sss|
			
			sss.source_files = 'Category/UIKit/UIButton/*.{h,m}'
			
		end
		
		ss.subspec 'UICollectionView' do |sss|
			
			sss.source_files = 'Category/UIKit/UICollectionView/*.{h,m}'
			
		end
		
		ss.subspec 'UIColor' do |sss|
			
			sss.source_files = 'Category/UIKit/UIColor/*.{h,m}'
			
		end
		
		ss.subspec 'UIImage' do |sss|
			
			sss.source_files = 'Category/UIKit/UIImage/*.{h,m}'
			sss.ios.framework = 'AssetsLibrary'
			
		end
		
		ss.subspec 'UIImageView' do |sss|
			
			sss.source_files = 'Category/UIKit/UIImageView/*.{h,m}', 'Category/UIKit/UIImage/UIImage+CreateImage.{h,m}'
			
		end
		
		ss.subspec 'UIScreen' do |sss|
			
			sss.source_files = 'Category/UIKit/UIScreen/*.{h,m}'
			
		end
		
		ss.subspec 'UIStoryboard' do |sss|
			
			sss.source_files = 'Category/UIKit/UIStoryboard/*.{h,m}'
			
		end
		
		ss.subspec 'UITableView' do |sss|
			
			sss.source_files = 'Category/UIKit/UITableView/*.{h,m}'
			
		end
		
		ss.subspec 'UITextField' do |sss|
			
			sss.source_files = 'Category/UIKit/UITextField/*.{h,m}'
			
		end
		
		ss.subspec 'UIView' do |sss|
			
			sss.source_files = 'Category/UIKit/UIView/*.{h,m}'
			
		end
		
		ss.subspec 'UIViewController' do |sss|
			
			sss.source_files = 'Category/UIKit/UIViewController/*.{h,m}'
			
		end
		
	end
	
	s.subspec 'CoreGraphics' do |ss|
		
		ss.source_files = 'Category/CoreGraphics/CoreGraphicsCategory.h'
		ss.source_files = 'Category/CoreGraphics/*.{h,m}'
		ss.ios.framework = 'CoreGraphics'
		
	end
	
end
