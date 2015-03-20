//
//  Objetos.m
//  Navigation
//
//  Created by Rafael Cavalcante Ferreira Santos Matos on 3/17/15.
//  Copyright (c) 2015 Vinicius Miana. All rights reserved.
//

#import "Objetos.h"

@implementation Objetos

@synthesize palavra,foto,letra;
-(id)initWithPalavra:(NSString*)pal image:(UIImage*)image{
    
      self = [super init];
    if(self){
        palavra = pal;
        foto = image;
    }
    return self;
}
@end
