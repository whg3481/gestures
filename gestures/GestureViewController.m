//
//  GestureViewController.m
//  gestures
//
//  Created by New User on 10/10/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import "GestureViewController.h"

@interface GestureViewController ()

@end

@implementation GestureViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    UIView *blueView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 100, 100)];
    blueView.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:blueView];
    
 //   UITapGestureRecognizer *tap =
   // [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapped:)];
    
    UISwipeGestureRecognizer *swipeDown =
    [[UISwipeGestureRecognizer alloc] initWithTarget:self action:@selector(swipeDown:)];
    
    swipeDown.direction = UISwipeGestureRecognizerDirectionDown;
    
    [self.view addGestureRecognizer:swipeDown];
    
   // [blueView addGestureRecognizer:tap];
 //   [blueView addGestureRecognizer:swipeUp];
    
    //animation moment
    [UIView animateWithDuration:5.0 animations:^
     {
         
         
         
        blueView.center = CGPointMake(100, 600);
         blueView.alpha = 0.0;
     }];
    
    
}

-(void) swipeDown:(UISwipeGestureRecognizer *) recognizer {
    
    [UIView animateWithDuration:2.0 animations:^{
        
        notificationView.center = CGPointMake(self.view.center.x , self.view.frame.size.height);
        
    }];
    
}

-(void) swipeUp:(id) sender {
    
    UISwipeGestureRecognizer *recognizer  = (UISwipeGestureRecognizer *) sender;
    
    NSLog(@"swipe up!");
}

/*-(void) tapped:(id) sender
{
    NSLog(@"tapped");
    
}
*/
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
