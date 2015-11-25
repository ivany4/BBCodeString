//
//  BBCodeStringDelegate.h
//  BBCodeString
//
//  Created by Miha Rataj on 10. 03. 13.
//  Copyright (c) 2013 Miha Rataj. All rights reserved.
//

#import <Foundation/Foundation.h>

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
#import <UIKit/UIKit.h>
#else
#import <AppKit/AppKit.h>
#endif

@class BBElement;

@protocol BBCodeStringDelegate <NSObject>

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
- (UIFont *)getFont:(BBElement *)element;
- (UIColor *)getTextColor:(BBElement *)element;
#else
- (NSFont *)getFont:(BBElement *)element;
- (NSColor *)getTextColor:(BBElement *)element;
#endif
- (NSArray *)getSupportedTags;


@end
