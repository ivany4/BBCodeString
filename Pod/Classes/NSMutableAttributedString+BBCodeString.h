//
//  NSMutableAttributedString+BBCodeString.h
//  MRAttributedStringRendering
//
//  Created by Miha Rataj on 2. 03. 13.
//  Copyright (c) 2013 Miha Rataj. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NSMutableAttributedString (BBCodeString)

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
- (void)setFont:(UIFont *)font;
- (void)setColor:(UIColor *)color;
#else
- (void)setFont:(NSFont *)font;
- (void)setColor:(NSColor *)color;
#endif

@end
