//
//  ViewController.m
//  N3
//
//  Created by Gielez Feldhaus Goulart on 9/22/15.
//  Copyright (c) 2015 Gielez Feldhaus Goulart. All rights reserved.
//

#import "ListViewController.h"
#import "EditViewController.h"
#import "Referencia.h"

@implementation ListViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    Referencia *r1 = [[Referencia alloc] init];
    
    [r1.autores addObject: [NSString stringWithFormat:@"Gielez"]];
    r1.ano = [NSNumber numberWithInt:2010];
    
    NSMutableString *s = [NSMutableString stringWithFormat:@"Nova string com float %g", 2.90];
    
    [s appendString:@" para teste"];
    
    NSLog(@"%@", s);
    
    self.referencias = [NSMutableArray arrayWithObjects:r1, nil];
}

- (void)reloadTableData
{
    [self.refereciasTableView reloadData];
}

- (NSView *)tableView:(NSTableView *)tableView viewForTableColumn:(NSTableColumn *)tableColumn row:(NSInteger)row
{
    NSTableCellView *cellView = [tableView makeViewWithIdentifier:tableColumn.identifier owner:self];
    
    Referencia *r = [self.referencias objectAtIndex:row];
    
    if ([tableColumn.identifier isEqualToString:@"AutorColumn"])
    {
        if (r.autores)
            cellView.textField.stringValue = r.stringAutores;
    }
    
    if ([tableColumn.identifier isEqualToString:@"AnoColumn"])
    {
        if (r.ano)
            cellView.textField.stringValue = [r.ano stringValue];
    }
    
    return cellView;
}

- (NSInteger)numberOfRowsInTableView:(NSTableView *)tableView
{
    return [self.referencias count];
}

- (Referencia *)selectedReferencia
{
    NSInteger selectedRow = [self.refereciasTableView selectedRow];
    if (selectedRow >= 0 && self.referencias.count > selectedRow)
        return [self.referencias objectAtIndex:selectedRow];
    
    return nil;
}

- (NSInteger)selectedIndice
{
    NSInteger selectedRow = [self.refereciasTableView selectedRow];
    if (selectedRow >= 0 && self.referencias.count > selectedRow)
        return selectedRow;
    
    return -1;
}

- (void)prepareForSegue:(NSStoryboardSegue *)segue sender:(id)sender
{
    if ([segue.destinationController isKindOfClass:[EditViewController class]])
    {
        EditViewController *edit = [segue destinationController];
        
        edit.store = self;
        
        if ([segue.identifier isEqual: @"editarReferencia"])
        {
            if ([self selectedReferencia])
            {
                edit.referencia = [self selectedReferencia];
                edit.indice = [self selectedIndice];
            }
        }
        
        if ([segue.identifier isEqual: @"incluirReferencia"])
        {
            edit.referencia = [Referencia new];
            edit.indice = -1;
        }
    }
}

- (IBAction)editReferencia:(id)sender
{
    if (self.selectedReferencia)
    {
        [self performSegueWithIdentifier:@"editarReferencia" sender:nil];
    }
}

- (IBAction)deleteReferencia:(id)sender
{
    if ([self selectedReferencia])
    {
        NSAlert *alert = [[NSAlert alloc] init];
        
        [alert addButtonWithTitle:@"Sim"];
        [alert addButtonWithTitle:@"Não"];
        [alert setMessageText:@"Excluir a referência ?"];
        [alert setInformativeText:@"A exclusão da referência não poderá ser desfeita."];
        [alert setAlertStyle:NSWarningAlertStyle];
        
        if ([alert runModal] == NSAlertFirstButtonReturn)
        {
            [self.referencias removeObjectAtIndex:[self selectedIndice]];
            
            [self reloadTableData];
        }
    }
}

- (IBAction)refreshReferencias:(id)sender {
}

-(void)incluirReferencia:(Referencia *)r
{
    [self.referencias addObject:r];
    
    [self reloadTableData];
}

-(void)alterarReferencia:(Referencia *)r atIndice:(NSInteger)indice
{
    [self.referencias setObject:r atIndexedSubscript:indice];
    
    [self reloadTableData];
}

@end
