//
//  Dolar.m
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import "Dollar.h"

@interface Dollar ()

@property (nonatomic) NSInteger amount;

@end

@implementation Dollar

-(instancetype)time:(NSInteger)multiplication
{
    return [self initWithAmount:self.amount * multiplication];
}

@end
