//
//  ViewController.h
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import <Cocoa/Cocoa.h>
#import "Referencia.h"


@protocol ReferenciasStore <NSObject>

-(void)incluirReferencia:(Referencia *)r;
-(void)alterarReferencia:(Referencia *)r atIndice:(NSInteger)indice;

@end


@interface ListViewController : NSViewController <ReferenciasStore>

@property (strong) NSMutableArray *referencias;

@property (weak) IBOutlet NSTableView *refereciasTableView;

- (IBAction)editReferencia:(id)sender;
- (IBAction)deleteReferencia:(id)sender;
- (IBAction)refreshReferencias:(id)sender;

@end

