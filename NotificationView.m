//
//  NotificationView.m
//  gestures
//
//  Created by New User on 10/16/16.
//  Copyright © 2016 Will Garner. All rights reserved.
//

#import "NotificationView.h"

@implementation NotificationView

-(id) initWithCoder:(NSCoder *)aDecoder
{
    
    self = [super initWithCoder:aDecoder];
    return self;
}
//
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    self.layer.cornerRadius = self.cornerRadius;
    self.layer.masksToBounds = YES;
}


@end
