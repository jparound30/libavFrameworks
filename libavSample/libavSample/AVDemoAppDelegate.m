//
//  AVDemoAppDelegate.m
//  libavSample
//
//  Created by Nico on 11/12/11.
//  Copyright (c) 2011 Nico
//

#import "AVDemoAppDelegate.h"

#import <libavformat/avformat.h>

@implementation AVDemoAppDelegate

@synthesize window = _window;
@synthesize textField = _textField;

- (void)dealloc
{
    [super dealloc];
}

- (void)applicationDidFinishLaunching:(NSNotification *)aNotification
{
    // Insert code here to initialize your application
	av_register_all();
	const char *aaaa = avformat_license();
    //NSTextFieldCell *textFieldCell;
    [_textField setStringValue:[NSString stringWithCString:aaaa encoding: NSASCIIStringEncoding]];
    //[textField setStringValue:@"aaa"];
	NSLog(@"%s",aaaa);
}

@end
