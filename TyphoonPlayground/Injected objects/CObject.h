//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface CObject : NSObject
@property(nonatomic, strong) NSString *createdBy;

- (NSString *)description;
@end