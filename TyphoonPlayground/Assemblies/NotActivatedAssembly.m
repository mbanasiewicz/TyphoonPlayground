//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "NotActivatedAssembly.h"
#import "ColorViewController.h"
#import "InjectedObject.h"


@implementation NotActivatedAssembly {

}

- (ColorViewController *)viewControllerWithColor:(UIColor *)color {
    NSParameterAssert(color);
    return [TyphoonDefinition withClass:[ColorViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(color)
                                                    with:color];
                          }];
}

@end