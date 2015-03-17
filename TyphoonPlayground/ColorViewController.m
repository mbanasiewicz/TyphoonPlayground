//
//  ColorViewController.m
//  TyphoonPlayground
//
//  Created by Maciej Banasiewicz on 17/03/15.
//  Copyright (c) 2015 MB. All rights reserved.
//

#import "ColorViewController.h"

@implementation ColorViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"self.color = %@", self.color);
    self.view.backgroundColor = self.color ? self.color : [UIColor whiteColor];
}


@end
