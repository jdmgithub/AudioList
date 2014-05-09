//
//  ALAiPadTableViewCell.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAiPadTableViewCell.h"

@implementation ALAiPadTableViewCell


{
    UILabel * songNameLable;
    UILabel * timesPlayedLabel;
    UILabel * likeDislikeLable;
    UIImageView * songImageView;
    UIButton * likeButton;
    UIButton * dislikeButton;
    

}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        // Initialization code

        songNameLable = [[UILabel alloc] initWithFrame:CGRectMake(70, 10, 200, 20)];
        songNameLable.backgroundColor = [UIColor yellowColor];
        [self.contentView addSubview:songNameLable];
        
        timesPlayedLabel = [[UILabel alloc] initWithFrame:CGRectMake(290, 70, 15, 15)];
        timesPlayedLabel.backgroundColor = [UIColor greenColor];
        [self.contentView addSubview:timesPlayedLabel];
        
        likeDislikeLable = [[UILabel alloc] initWithFrame:CGRectMake(270, 70, 15, 15)];
        likeDislikeLable.backgroundColor = [UIColor blackColor];
        [self.contentView addSubview:likeDislikeLable];
    
        songImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
        songImageView.backgroundColor = [UIColor redColor];
        [self.contentView addSubview:songImageView];
        
        likeButton = [[UIButton alloc] initWithFrame:CGRectMake(25, 70, 15, 15)];
        likeButton.backgroundColor = [UIColor blueColor];
        [likeButton setTitle:@"L" forState:UIControlStateNormal];
        [self.contentView addSubview:likeButton];
    
        dislikeButton = [[UIButton alloc] initWithFrame:CGRectMake(50, 70, 15, 15)];
        dislikeButton.backgroundColor = [UIColor magentaColor];
        [dislikeButton setTitle:@"D" forState:UIControlStateNormal];
        [self.contentView addSubview:dislikeButton];
        
    
    
    }
    return self;
}

- (void)awakeFromNib
{
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated
{
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

@end
