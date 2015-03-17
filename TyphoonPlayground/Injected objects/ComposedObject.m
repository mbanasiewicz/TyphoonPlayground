//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "ComposedObject.h"
#import "AObject.h"
#import "BObject.h"
#import "CObject.h"


@implementation ComposedObject {

}
- (instancetype)initWithAObject:(AObject *)aObject bObject:(BObject *)bObject cObject:(CObject *)cObject {
    self = [super init];
    if (self) {
        self.aObject = aObject;
        self.bObject = bObject;
        self.cObject = cObject;
    }

    return self;
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString stringWithFormat:@"<%@: ", NSStringFromClass([self class])];
    [description appendFormat:@"self.aObject=%@", self.aObject];
    [description appendFormat:@", self.bObject=%@", self.bObject];
    [description appendFormat:@", self.cObject=%@", self.cObject];
    [description appendString:@">"];
    return description;
}

@end