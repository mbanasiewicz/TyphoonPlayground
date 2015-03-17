//
//  ViewController.m
//  TyphoonPlayground
//
//  Created by Maciej Banasiewicz on 17/03/15.
//  Copyright (c) 2015 MB. All rights reserved.
//


#import "ViewController.h"
#import "NotActivatedAssembly.h"
#import "TyphoonAssemblyActivator.h"


@interface ViewController ()
@property(nonatomic, strong) UIButton *presentModalViewControllerButton;
@end

@implementation ViewController

// Activate the assembly!
// Key Concept: Before activation each method returns in a TyphoonAssembly returns a TyphoonDefinition.
// After activation we'll use the same interface to return built instances.
// Since the main use for your assembly interfaces will be emitting built components,
// you can declare the return type as the type being built.
- (void)presentModalViewControllerButtonAction {
    NotActivatedAssembly *assembly = [NotActivatedAssembly assembly];
    NSLog(@"PRE ACTIVATION");
    NSLog(@"assembly = %@", assembly);
    NSLog(@"assembly.col = %@", [assembly viewControllerWithColor:[UIColor redColor]]);

//    [[TyphoonAssemblyActivator withAssembly:assembly] activate];
//    // [[TyphoonAssemblyActivator withAssemblies:@[assembly]] activate]; -> this same
//    NSLog(@"POST ACTIVATION");
//    NSLog(@"assembly = %@", assembly);
//    ColorViewController *controller = [assembly viewControllerWithColor:[UIColor redColor]];
//    NSLog(@"assembly.col = %@", controller);
//    [self presentViewController:controller
//                       animated:YES
//                     completion:nil];
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


















// Dont look there :P
- (void)createButton {
    self.presentModalViewControllerButton = [[UIButton alloc] initWithFrame:CGRectZero];
    [self.presentModalViewControllerButton setTitle:@"Present modal!"
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