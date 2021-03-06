//
//  Money.h
//  Wallet
//
//  Created by Ricardo Maqueda Martinez on 14/12/14.
//  Copyright (c) 2014 Molestudio. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Money : NSObject

+(id)euroWithAmount:(NSInteger)amount;
+(id)dollarWithAmount:(NSInteger)amount;

-(instancetype)initWithAmount:(NSInteger)amount;

-(instancetype)time:(NSInteger)multiplication;

@end
