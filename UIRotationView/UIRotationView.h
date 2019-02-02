//
//  UIRotationView.h
//  CinCer
//
//  Created by Kid Young on 1/25/16.
//  Copyright © 2016 Yang XiHong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIRotationView : UIView

- (instancetype)init NS_UNAVAILABLE;
- (instancetype)initWithFrame:(CGRect)frame NS_UNAVAILABLE;

/**
 The total duration of the view rotate one circle, measured in seconds. If you specify a negative value or 0, the changes are made without animating them.
 */
@property (nonatomic, assign) IBInspectable double duration;

/**
 default = NO. rotate the view in clockwise or anticlockwise.
 */
@property (nonatomic, assign) IBInspectable BOOL clockwise;

@end
