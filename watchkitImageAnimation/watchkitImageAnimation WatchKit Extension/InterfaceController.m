//
//  InterfaceController.m
//  watchkitImageAnimation WatchKit Extension
//
//  Created by JAVIER CALATRAVA LLAVERIA on 10/01/15.
//  Copyright (c) 2015 JAVIER CALATRAVA LLAVERIA. All rights reserved.
//

#import "InterfaceController.h"


@interface InterfaceController()
@property (weak, nonatomic) IBOutlet WKInterfaceImage *imgSpriteAnimation;


@end


@implementation InterfaceController

- (void)awakeWithContext:(id)context {
    [super awakeWithContext:context];
    // Initialize variables here.
    // Configure interface objects here.
    NSLog(@"%@ awakeWithContext", self);
}

- (void)willActivate {
    // This method is called when watch view controller is about to be visible to user
    
    [self.imgSpriteAnimation setImageNamed:@"dragon-"];
    [self.imgSpriteAnimation startAnimatingWithImagesInRange:NSMakeRange(0, 60) duration:1.0 repeatCount:0];
    
    NSLog(@"%@ will activate", self);
}

- (void)didDeactivate {
    // This method is called when watch view controller is no longer visible
    NSLog(@"%@ did deactivate", self);
}

@end



