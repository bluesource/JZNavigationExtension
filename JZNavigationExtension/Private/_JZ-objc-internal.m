//
//  _JZ-objc-internal.m
//  
//
//  Created by Jazys on 04/11/2017.
//  Copyright © 2017 Jazys. All rights reserved.
//

#import "_JZ-objc-internal.h"

@implementation NSNumber (JZExtension)

- (CGFloat)jz_CGFloatValue {
#if CGFLOAT_IS_DOUBLE
    return [self doubleValue];
#else
    return [self floatValue];
#endif
}

@end

@implementation _JZValue
@synthesize weakObjectValue = _weakObjectValue;

+ (_JZValue *)valueWithWeakObject:(id)anObject {
    _JZValue *value = [[self alloc] init];
    value->_weakObjectValue = anObject;
    return value;
}

@end

@implementation UINavigationBar (JZExtension)

JZExtensionBarImplementation

@end

@implementation UIToolbar (JZExtension)

JZExtensionBarImplementation

- (UIView *)jz_backgroundView {
    return [self valueForKey:@"_backgroundView"];
}

@end
