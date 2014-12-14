//
//  Money.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Money.h"
#import "NSObject+GNUStepsAddons.h"
#import "Euro.h"
#import "Dollar.h"

@interface Money ()

@property (nonatomic) NSInteger amount;

@end

@implementation Money

+(id)euroWithAmount:(NSInteger)amount
{
    return [[Euro alloc] initWithAmount:amount];
}

+(id)dollarWithAmount:(NSInteger)amount
{
    return [[Dollar alloc] initWithAmount:amount];
}

-(instancetype)initWithAmount:(NSInteger)amount
{
    if (self = [super init]) {
        _amount = amount;
    }

    return self;
}

-(instancetype)time:(NSInteger)multiplication
{
    //No debería llamarsee, sino que se debería de usar el de la subclase
    return [self subclassResponsibility:_cmd];
}

-(BOOL)isEqual:(id)object
{
    return [self amount] == [object amount];
}

-(NSUInteger)hash
{
    return (NSUInteger) self.amount;
}

@end
