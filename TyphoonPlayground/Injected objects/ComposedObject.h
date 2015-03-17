//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import <Foundation/Foundation.h>

@class AObject;
@class BObject;
@class CObject;


@interface ComposedObject : NSObject
@property(nonatomic, strong) AObject *aObject;
@property(nonatomic, strong) BObject *bObject;
@property(nonatomic, strong) CObject *cObject;

- (instancetype)initWithAObject:(AObject *)aObject bObject:(BObject *)bObject cObject:(CObject *)cObject;

- (NSString *)description;

@end