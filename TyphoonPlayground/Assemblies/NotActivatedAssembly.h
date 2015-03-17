//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <Typhoon/TyphoonAssembly.h>

@class ColorViewController;


@interface NotActivatedAssembly : TyphoonAssembly


- (ColorViewController *)viewControllerWithColor:(UIColor *)color;
@end