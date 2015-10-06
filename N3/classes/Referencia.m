//
//  Referencia.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "Referencia.h"

@implementation Referencia

@synthesize autores;
@synthesize ano;

- (id)init
{
    self = [super init];
    if (self)
    {
        autores = [NSMutableArray new];
    }
    return self;
}

- (NSString *)description
{
    return [NSString stringWithFormat:@"Referencia: autor = %@, ano = %@", autores, ano];
}

- (NSString *)stringAutores
{
    NSMutableString *sAutores = [NSMutableString new];
    
    for (int i = 0; i < [autores count]; i++)
    {
        [sAutores appendString:[autores objectAtIndex:i]];
    }
    
    return sAutores;
}


@end
