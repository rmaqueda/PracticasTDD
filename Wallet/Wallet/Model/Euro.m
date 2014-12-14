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


-(instancetype)time:(NSInteger)multiplication
{
   return [self initWithAmount:self.amount * multiplication];
}

@end
