//
//  TouchView.h
//  Delegates
//
//  Created by Sam Meech-Ward on 2016-11-14.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "TouchViewDelegate.h"

@interface TouchView : UIView

@property (nonatomic, weak) IBOutlet id <TouchViewDelegate> delegate;

@end
