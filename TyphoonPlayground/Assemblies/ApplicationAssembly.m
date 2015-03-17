//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"
#import "ViewController.h"


@implementation ApplicationAssembly {

}
- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(window) with:[self mainWindow]];
                          }];
}
// Inject root view controller into main window
// Use custom initializer for UIWindow
// CGRect rect = [UIScreen mainScreen].bounds;
- (UIWindow *)mainWindow {
    return [TyphoonDefinition withClass:[UIWindow class]
                          configuration:^(TyphoonDefinition *definition) {

                          }];
}

- (ViewController *)rootViewController {
    return [TyphoonDefinition withClass:[ViewController class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(initWithNibName:bundle:)
                                              parameters:^(TyphoonMethod *initializer) {
                                                  [initializer injectParameterWith:nil];
                                                  [initializer injectParameterWith:[NSBundle mainBundle]];
                                              }];
                          }];
}

@end