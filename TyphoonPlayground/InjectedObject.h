//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface InjectedObject : NSObject
@property(nonatomic, copy) NSString *injectedString;

- (instancetype)initWithInjectedString:(NSString *)injectedString;

- (NSString *)description;

@end