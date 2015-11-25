//
//  BBCodeString_OSX.m
//  BBCodeString_OSX
//
//  Created by Ivan on 27/07/15.
//  Copyright (c) 2015 Miha Rataj. All rights reserved.
//

#import <XCTest/XCTest.h>
#import <AppKit/AppKit.h>
#import "BBCodeStringDelegate.h"
#import "BBCodeString.h"
#import "BBElement.h"

@interface BBCodeStringTests : XCTestCase <BBCodeStringDelegate> {
    BOOL _userTagFontRequested;
    BOOL _fileTagFontRequested;
    BOOL _userTagColorRequested;
    BOOL _fileTagColorRequested;
}

@end

@implementation BBCodeStringTests

#define kUserTag @"user"
#define kFileTag @"file"

- (void)tearDown
{
    [super tearDown];
    
    XCTAssertTrue(_userTagFontRequested, @"User font not requested");
    XCTAssertTrue(_fileTagFontRequested, @"File font not requested");
    XCTAssertTrue(_userTagColorRequested, @"User color not requested");
    XCTAssertTrue(_fileTagColorRequested, @"File color not requested");
}

- (void)testMakeAttributedString
{
    NSString *bbCode = @"[user id=\"42\"]Mary Jones[/user] sent file [file id=\"23\"]Report.pdf[/file].";
    
    BBCodeString *bbCodeString = [[BBCodeString alloc] initWithBBCode:bbCode andLayoutProvider:self];
    XCTAssertNotNil(bbCodeString, @"Cannot be nil");
    
    NSString *expectedString = @"Mary Jones sent file Report.pdf.";
    XCTAssertTrue([bbCodeString.attributedString.string isEqualToString:expectedString], @"Invalid string");
}

- (NSFont *)getFont:(BBElement *)element
{
    if ([element.tag isEqualToString:kUserTag])
        _userTagFontRequested = YES;
    
    if ([element.tag isEqualToString:kFileTag])
        _fileTagFontRequested = YES;
    
    return [NSFont systemFontOfSize:16.0];
}

- (NSColor *)getTextColor:(BBElement *)element
{
    if ([element.tag isEqualToString:kUserTag])
        _userTagColorRequested = YES;
    
    if ([element.tag isEqualToString:kFileTag])
        _fileTagColorRequested = YES;
    
    return [NSColor darkGrayColor];
}

- (NSArray *)getSupportedTags
{
    return [NSArray arrayWithObjects:
            kUserTag,
            kFileTag,
            nil];
}
@end
