//
//  Euro.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Euro.h"

@interface Euro ()

@property (nonatomic) NSInteger amount;

@end

@implementation Euro

-(instancetype)initWithAmount:(NSInteger)amount
{
    if (self = [super init]) {
        _amount = amount;
    }

    return self;
}

-(void)time:(NSInteger)multiplication
{
    self.amount *= multiplication;
}

@end
