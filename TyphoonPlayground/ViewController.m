//
//  ViewController.m
//  TyphoonPlayground
//
//  Created by Maciej Banasiewicz on 17/03/15.
//  Copyright (c) 2015 MB. All rights reserved.
//


#import <Typhoon/TyphoonConfigPostProcessor.h>
#import "ViewController.h"
#import "NotActivatedAssembly.h"
#import "TyphoonBlockComponentFactory.h"
#import "AObjectAssembly.h"
#import "ComposedAssembly.h"
#import "BObjectAssembly.h"
#import "CObjectAssembly.h"
#import "TyphoonAssemblyActivator.h"
#import "ComposedObject.h"
#import "AObjectAssemblyStub.h"

@interface ViewController ()
@property(nonatomic, strong) UIButton *presentModalViewControllerButton;
@end

@implementation ViewController

- (void)presentModalViewControllerButtonAction {
//    AObjectAssemblyStub *aObjectAssembly = [AObjectAssemblyStub assembly];
    AObjectAssembly *aObjectAssembly = [AObjectAssembly assembly];
    BObjectAssembly *bObjectAssembly = [BObjectAssembly assembly];
    CObjectAssembly *cObjectAssembly = [CObjectAssembly assembly];
    ComposedAssembly *assembly = [ComposedAssembly assembly];
    [[TyphoonAssemblyActivator withAssemblies:@[aObjectAssembly, bObjectAssembly, cObjectAssembly, assembly]] activate];
    ComposedObject *composedObject = [assembly composedObject];
    NSLog(@"composedObject = %@", composedObject);
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self createButton];
    self.view.backgroundColor = [UIColor whiteColor];
    NSLog(@"%s", sel_getName(_cmd));
    NSLog(@"UHU I'm alive!");

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}










// Nothing interesting below

















// Trust me














 // You nosey bastard :<









// Dont look there!!!
- (void)createButton {
    self.presentModalViewControllerButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [self.presentModalViewControllerButton setTitle:@"Compose"
                                           forState:UIControlStateNormal];

    self.presentModalViewControllerButton.translatesAutoresizingMaskIntoConstraints = NO;
    [self.presentModalViewControllerButton addTarget:self
                                              action:@selector(presentModalViewControllerButtonAction)
                                    forControlEvents:UIControlEventTouchUpInside];
    [self.presentModalViewControllerButton setTitleColor:[UIColor blackColor]
                                                forState:UIControlStateNormal];
    [self.view addSubview:self.presentModalViewControllerButton];
    NSLayoutConstraint *centerXConstraint = [NSLayoutConstraint constraintWithItem:self.presentModalViewControllerButton
                                                                         attribute:NSLayoutAttributeCenterX
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeCenterX
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    NSLayoutConstraint *centerYConstraint = [NSLayoutConstraint constraintWithItem:self.presentModalViewControllerButton
                                                                         attribute:NSLayoutAttributeCenterY
                                                                         relatedBy:NSLayoutRelationEqual
                                                                            toItem:self.view
                                                                         attribute:NSLayoutAttributeCenterY
                                                                        multiplier:1.0f
                                                                          constant:0.0f];
    [self.view addConstraints:@[centerXConstraint, centerYConstraint]];
}
@end