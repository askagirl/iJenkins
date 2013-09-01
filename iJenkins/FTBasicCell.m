//
//  FTBasicCell.m
//  iJenkins
//
//  Created by Ondrej Rafaj on 30/08/2013.
//  Copyright (c) 2013 Fuerte Innovations. All rights reserved.
//

#import "FTBasicCell.h"


@implementation FTBasicCell


#pragma mark Layout

- (void)layoutSubviews {
    [super layoutSubviews];
    
    if (_layoutType == FTBasicCellLayoutTypeSmall) {
        [self.textLabel setFont:[UIFont systemFontOfSize:16]];
        [self.textLabel setYOrigin:(self.textLabel.yOrigin + 2)];
        
        [self.detailTextLabel setFont:[UIFont systemFontOfSize:10]];
        [self.detailTextLabel setYOrigin:(self.detailTextLabel.yOrigin - 2)];
    }
    [self.textLabel setTextColor:[UIColor colorWithHexString:@"454545"]];
    [self.detailTextLabel setTextColor:[UIColor colorWithHexString:@"6C6C6C"]];
    [self.textLabel sizeToFit];
}

#pragma mark Creating elements

- (void)createAllElements {
    
}

#pragma mark Initialization

- (void)setupView {
    
}

- (id)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if (self) {
        [self setupView];
        [self createAllElements];
    }
    return self;
}

#pragma mark Settings

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];
}


@end
