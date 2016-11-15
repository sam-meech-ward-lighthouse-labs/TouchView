//
//  ViewController.m
//  Delegates
//
//  Created by Sam Meech-Ward on 2016-11-14.
//  Copyright © 2016 Sam Meech-Ward. All rights reserved.
//

#import "ViewController.h"
#import "TouchView.h"
#import "Sam.h"

@interface ViewController () <TouchViewDelegate>

@property (weak, nonatomic) IBOutlet TouchView *touchView;
@property (weak, nonatomic) IBOutlet TouchView *touchView2;

@property (nonatomic) Sam *sam;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
//    self.sam = [[Sam alloc] init];
//    self.touchView2.delegate = self.sam;
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Touch View

- (void)touchView:(TouchView *)touchView didReleaseWithTimeInterval:(NSTimeInterval)timeInterval {
    
    if ([touchView isEqual:self.touchView]) {
        
        self.view.backgroundColor = [UIColor colorWithRed:timeInterval/10.0 green:1.0 blue:timeInterval alpha:1.0];
        
    } else if ([touchView isEqual:self.touchView2]) {
        
        [self presentAlertWithTime:timeInterval];
        
    }
    
}





- (void)presentAlertWithTime:(NSTimeInterval)timeInterval {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Time" message:[NSString stringWithFormat:@"%f", timeInterval] preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *cancelAction = [UIAlertAction actionWithTitle:@"Cancel" style:UIAlertActionStyleCancel handler:nil];
    
    [alert addAction:cancelAction];
    
    [self presentViewController:alert animated:YES completion:nil];
}

@end
