//
//  ViewController.m
//  SimpleUICollectionViewSelfSizing
//
//  Created by nil on 6/9/16.
//  Copyright © 2016 Sample. All rights reserved.
//

#import "ViewController.h"
#import "CollectionViewCell.h"

@interface ViewController ()
@property (weak, nonatomic) IBOutlet UICollectionViewFlowLayout *flowLayout;
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.flowLayout.estimatedItemSize = CGSizeMake(100, 100);
}

#pragma mark - UICollectionView Datasource & Delegate

- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return 5;
}

- (NSInteger)numberOfSectionsInCollectionView:(UICollectionView *)collectionView {
    return 1;
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    CollectionViewCell *cell = (CollectionViewCell *)[collectionView dequeueReusableCellWithReuseIdentifier:@"MyReuseIdentifier" forIndexPath:indexPath];
    if (indexPath.row == 0)
        cell.myLabel.text = @"0";
    else if (indexPath.row == 1)
        cell.myLabel.text = @"First";
    else if (indexPath.row == 2)
        cell.myLabel.text = @"Second Element";
    else if (indexPath.row == 3)
        cell.myLabel.text = @"Three";
    else
        cell.myLabel.text = @"Other other other";
    return cell;
}

@end
