//
//  ALAiPadViewController.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAiPadViewController.h"
#import "ALAiPadTableViewController.h"
#import "ALAiPadTableViewCell.h"
#import "ALAiPadDetailViewController.h"
#import "ALASoundCloudRequest.h"

@interface ALAiPadViewController () <UISplitViewControllerDelegate>

@end

@implementation ALAiPadViewController

{

    ALAiPadTableViewController * listVC;
    ALAiPadDetailViewController * detailVC;
    UINavigationController * nc;
}


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    
        detailVC = [[ALAiPadDetailViewController alloc] initWithNibName:nil bundle:nil];
        
        nc = [[UINavigationController alloc] initWithRootViewController:detailVC];
    
//        listVC = [[UITableViewController alloc] initWithStyle:UITableViewStylePlain];
        listVC = [[ALAiPadTableViewController alloc] initWithStyle:UITableViewStylePlain];

        listVC.detailVC = detailVC;
        
        self.viewControllers = @[listVC, nc];
        
        self.presentsWithGesture = YES;
     
        self.delegate = self;
     
        [ALASoundCloudRequest updateData];
        
    }
    return self;
    
}


-(void)splitViewController:(UISplitViewController *)svc willHideViewController:(UIViewController *)aViewController withBarButtonItem:(UIBarButtonItem *)barButtonItem forPopoverController:(UIPopoverController *)pc
{
    NSLog(@"Hide");
    
    barButtonItem.title = @"Button";
    detailVC.navigationItem.leftBarButtonItem = barButtonItem;
//    detailVC.navigationController.navigationBarHidden = NO;
    nc.navigationBarHidden = NO;
    
    
}


-(void)splitViewController:(UISplitViewController *)svc willShowViewController:(UIViewController *)aViewController invalidatingBarButtonItem:(UIBarButtonItem *)barButtonItem
{
    NSLog(@"Show");

    nc.navigationBarHidden = YES;

    
}


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}


- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}



@end
