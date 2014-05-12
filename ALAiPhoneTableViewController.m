//
//  ALAiPhoneTableViewController.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAiPhoneTableViewController.h"
#import "ALAiPhoneTableViewCell.h"
#import "ALADataSingleton.h"

@interface ALAiPhoneTableViewController ()

@end

@implementation ALAiPhoneTableViewController

{
//    NSMutableArray *listItems;


}

- (id)initWithStyle:(UITableViewStyle)style
{
    self = [super initWithStyle:style];
    if (self) {
        // Custom initialization
        
        
        // observer listening to be fired
//        NSNotificationCenter * nCenter = [NSNotificationCenter defaultCenter];
//        
//        [nCenter addObserverForName:@"dataUpdated" object:nil queue:nil usingBlock:^(NSNotification *note) {
//
//            
//        [self.tableView reloadData];
//            
//        }];
        
        
//        self.tableView.rowHeight = 100;

        
        
//        listItems =[@[
//                    @{@"songName" : @"La La La", @"songImage" : [UIImage imageNamed:@"DevoAlbumCover"], @"timesPlayed" : @"248", @"likesDislikes":@"Likes 239, Dislikes 2"}
//                    
////                    @{@"songName" : @"La La La", @"songImage" : [UIImage imageNamed:@"DevoAlbumCover"], @"timesPlayed" : @"248", @"likesDislikes":@"Likes 239, Dislikes 2"}
//                    
//                    ] mutableCopy];
//                           
//                           
//                    listItems = [@[] mutableCopy];
        
        
    }
    return self;
}










- (void)viewDidLoad
{
    [super viewDidLoad];
    
    // Uncomment the following line to preserve selection between presentations.
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
    // self.navigationItem.rightBarButtonItem = self.editButtonItem;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

//- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
//{
//    // Return the number of sections.
//    return 0;
//}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    // Return the number of rows in the section.
    return 3;
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    ALAiPhoneTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    
    if (cell == nil) cell = [[ALAiPhoneTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    
    cell.index = indexPath.row;
    
    return cell;
}


/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath
{
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath
{
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath
{
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
