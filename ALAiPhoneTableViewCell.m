//
//  ALAiPhoneTableViewCell.m
//  AudioList
//
//  Created by Jeffery Moulds on 5/8/14.
//  Copyright (c) 2014 Jeffery Moulds. All rights reserved.
//

#import "ALAiPhoneTableViewCell.h"

@implementation ALAiPhoneTableViewCell

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
    

        // url image
//        NSData * imageData = [NSData dataWithContentsOfURL:[NSURL URLWithString:@"https://www.gravatar.com/avatar/44536a7c0d857d837d9f6ba1c2c7d0bc?s=32&d=identicon&r=PG"]];
//        UIImage *image = [[UIImage alloc] initWithData:imageData] ;
        
        // image from app directory
        UIImage *image = [UIImage imageNamed:@"DevoAlbumCover"];
        
        UIImageView *imageView = [[UIImageView alloc] initWithImage:image];
        imageView.frame = CGRectMake(10,10, 50,50);
        [self.contentView addSubview:imageView];
        
        
        
//        songImageView = [[UIImageView alloc] initWithFrame:CGRectMake(10, 10, 50, 50)];
//        songImageView.backgroundColor = [UIColor redColor];
//        [self.contentView addSubview:songImageView];

        
        
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
