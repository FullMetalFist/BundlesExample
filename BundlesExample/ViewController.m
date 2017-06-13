//
//  ViewController.m
//  BundlesExample
//
//  Created by Michael Vilabrera on 6/6/17.
//  Copyright © 2017 Michael Vilabrera. All rights reserved.
//

#import "ViewController.h"

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSBundle *mainBundle = [NSBundle mainBundle];
    
    // logo
    NSString *rypressLogoPath = [mainBundle pathForResource:@"rypress-logo" ofType:@"png"];
    NSLog(@"File path for the RyPress logo: %@", rypressLogoPath);
    
    // terms
    NSString *termsPath = [mainBundle pathForResource:@"EnglishTC" ofType:@"txt"];
    NSLog(@"File path for the terms: %@", termsPath);
    
    // place logo
    NSImage *rypressLogo = [[NSImage alloc] initWithContentsOfFile:rypressLogoPath];
    self.logoImageView.image = rypressLogo;
    
    // place terms
    NSError *error;
    NSString *terms = [[NSString alloc] initWithContentsOfFile:termsPath encoding:NSUTF8StringEncoding error:&error];
    if (terms == nil) {
        NSLog(@"Error loading terms: %@", error);
    } else {
        self.termsTextView.string = terms;
    }
}


- (void)setRepresentedObject:(id)representedObject {
    [super setRepresentedObject:representedObject];

    // Update the view, if already loaded.
}


@end
