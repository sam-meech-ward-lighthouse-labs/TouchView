//
//  TouchViewDelegate.h
//  Delegates
//
//  Created by Sam Meech-Ward on 2016-11-14.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TouchView;

@protocol TouchViewDelegate <NSObject>

- (void)touchView:(TouchView *)view didReleaseWithTimeInterval:(NSTimeInterval)timeInterval;

@end
