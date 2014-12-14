//
//  Dolar.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Dolar.h"

@interface Dolar ()

@property (nonatomic) NSInteger amount;

@end

@implementation Dolar

-(instancetype)initWithAmount:(NSInteger)amount
{
    if (self = [super init]) {
        _amount = amount;
    }

    return self;
}

-(instancetype)time:(NSInteger)multiplication
{
    return [self initWithAmount:self.amount * multiplication];
}

-(BOOL)isEqual:(id)object
{
    if ([object isKindOfClass:[self class]]) {
        Dolar *euro = (Dolar *)object;

        if (euro.amount == self.amount) {
            return YES;
        }
    }

    return NO;
}


-(NSUInteger)hash
{
    return (NSUInteger) self.amount;
}

@end
