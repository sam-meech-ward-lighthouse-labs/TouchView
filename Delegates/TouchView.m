//
//  TouchView.m
//  Delegates
//
//  Created by Sam Meech-Ward on 2016-11-14.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "TouchView.h"

@interface TouchView()

@property (nonatomic, strong) NSDate *touchesBeganTime;

@end

@implementation TouchView

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    self.touchesBeganTime = [NSDate date];
}

- (void)touchesEnded:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    NSDate *currentTime = [NSDate date];
    
    NSTimeInterval timeInterval = [currentTime timeIntervalSinceDate:self.touchesBeganTime];
    
    [self.delegate touchView:self didReleaseWithTimeInterval:timeInterval];
}

@end
