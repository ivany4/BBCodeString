//
//  NSMutableAttributedString+BBCodeString.m
//  MRAttributedStringRendering
//
//  Created by Miha Rataj on 2. 03. 13.
//  Copyright (c) 2013 Miha Rataj. All rights reserved.
//

#import "NSMutableAttributedString+BBCodeString.h"

@implementation NSMutableAttributedString (BBCodeString)

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
- (void)setFont:(UIFont *)font
#else
- (void)setFont:(NSFont *)font
#endif
{
    NSRange range = NSMakeRange(0, [self.string length]);
    [self addAttribute:NSFontAttributeName
                 value:font
                 range:range];
}

#if TARGET_OS_IPHONE || TARGET_IPHONE_SIMULATOR
- (void)setColor:(UIColor *)color
#else
- (void)setColor:(NSColor *)color
#endif
{
    NSRange range = NSMakeRange(0, [self.string length]);
    [self addAttribute:NSForegroundColorAttributeName
                 value:color
                 range:range];    
}

@end
