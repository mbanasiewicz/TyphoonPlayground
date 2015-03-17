//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"


@implementation ApplicationAssembly {

}
- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class]
                          configuration:^(TyphoonDefinition *definition) {
                              CGRect rect = [UIScreen mainScreen].bounds;
                              [definition injectProperty:@selector(window) with:[[UIWindow alloc] initWithFrame:rect]];
                          }];
}

@end