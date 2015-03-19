//
//  Singleton.h
//  Navigation
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Objetos.h"

@interface Singleton : NSObject

@property NSArray * letra;
@property NSArray * palavra;
@property NSArray * foto;
@property NSMutableArray * geral;

+ (Singleton*)sharedInstance;
-(NSMutableArray*)test;
@end
