//
// Created by Maciej Banasiewicz on 17/03/15.
// Copyright (c) 2015 MB. All rights reserved.
//

#import "InjectedObject.h"


@implementation InjectedObject {

}
- (instancetype)initWithInjectedString:(NSString *)injectedString {
    self = [super init];
    if (self) {
        self.injectedString = injectedString;
    }

    return self;
}

- (NSString *)description {
    NSMutableString *description = [NSMutableString stringWithFormat:@"<%@: ", NSStringFromClass([self class])];
    [description appendFormat:@"self.injectedString=%@", self.injectedString];
    [description appendString:@">"];
    return description;
}

@end