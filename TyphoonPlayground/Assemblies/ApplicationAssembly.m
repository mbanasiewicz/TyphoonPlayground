//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "ApplicationAssembly.h"
#import "AppDelegate.h"
#import "ViewController.h"
#import "InjectedObject.h"
#import "NotActivatedAssembly.h"


@implementation ApplicationAssembly {

}

// When injecting by type,
// Typhoon searches within the bounds of the TyphoonComponentFactory,
// so it can match components declared in other assemblies
// Typhoon will find the component that matches the required type
- (AppDelegate *)appDelegate {
    return [TyphoonDefinition withClass:[AppDelegate class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition injectProperty:@selector(window) with:[self mainWindow]];
                              // This will crash the app
                              //[definition injectProperty:@selector(object)];
                              [definition injectProperty:@selector(object) with:[self objectInitialized]];
                              // Injecting assembly
//                               [definition injectProperty:@selector(assembly)];
                          }];
}
// Inject root view controller into main window
// Use custom initializer for UIWindow
// CGRect rect = [UIScreen mainScreen].bounds;
- (UIWindow *)mainWindow {
    return [TyphoonDefinition withClass:[UIWindow class]
                          configuration:^(TyphoonDefinition *definition) {
                              [definition useInitializer:@selector(initWithFrame:) parameters:^(TyphoonMethod *initializer) {
                                  CGRect rect = [UIScreen mainScreen].bounds;
                                  [initializer injectParameterWith:[NSValue valueWithCGRect:rect]];
                              }];
                              [definition injectProperty:@selector(rootViewController) with:[self rootViewController]];

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

- (InjectedObject *)object {
    return [TyphoonDefinition withClass:[InjectedObject class]];
}

- (InjectedObject *)objectInitialized {
    return [TyphoonDefinition withClass:[InjectedObject class] configuration:^(TyphoonDefinition *definition) {
        [definition useInitializer:@selector(initWithInjectedString:) parameters:^(TyphoonMethod *initializer) {
            [initializer injectParameterWith:@"Hey! I was injected"];
        }];
    }];
}
@end