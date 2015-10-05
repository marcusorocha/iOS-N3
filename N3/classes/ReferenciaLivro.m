//
//  ReferenciaLivro.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "ReferenciaLivro.h"

@implementation ReferenciaLivro

@synthesize nomeAutor;
@synthesize sobrenomeAutor;
@synthesize ano;
@synthesize titulo;
@synthesize pagina;

- (NSString *)description
{
    return [NSString stringWithFormat:@"Referencia: %@,%@, %@,%@, pag. %@", sobrenomeAutor, nomeAutor, titulo, ano, pagina];
}


@end
