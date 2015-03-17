//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "NotActivatedAssembly.h"
#import "ColorViewController.h"
#import "InjectedObject.h"
#import "TyphoonConfigPostProcessor.h"


@implementation NotActivatedAssembly {

}

- (ColorViewController *)viewControllerWithColor:(UIColor *)color {
    NSParameterAssert(color);
    return [TyphoonDefinition withClass:[ColorViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(color)
                                                    with:color];
                              // For step #4 uncomment
                              // This will be added by post processor
//                              [definition injectProperty:@selector(animateModalTransition)
//                                                    with:TyphoonConfig(@"animateModalTransition")];
                          }];
}

@end