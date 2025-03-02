#import "IBPNSCollectionLayoutSupplementaryItem_Private.h"
#import "IBPNSCollectionLayoutItem_Private.h"

FOUNDATION_IMPORT BOOL const _IBPAvailable(void);
@implementation IBPNSCollectionLayoutSupplementaryItem

+ (instancetype)supplementaryItemWithLayoutSize:(IBPNSCollectionLayoutSize *)layoutSize
                                    elementKind:(NSString *)elementKind
                                containerAnchor:(IBPNSCollectionLayoutAnchor *)containerAnchor {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutSupplementaryItem") supplementaryItemWithLayoutSize:layoutSize
                                                                                              elementKind:elementKind
                                                                                          containerAnchor:containerAnchor];
    } else {
        return [[self alloc] initWithSize:layoutSize
                            contentInsets:IBPNSDirectionalEdgeInsetsZero
                              elementKind:elementKind
                          containerAnchor:containerAnchor
                               itemAnchor:nil
                                   zIndex:1];
    }
}

+ (instancetype)supplementaryItemWithLayoutSize:(IBPNSCollectionLayoutSize *)layoutSize
                                    elementKind:(NSString *)elementKind
                                containerAnchor:(IBPNSCollectionLayoutAnchor *)containerAnchor
                                     itemAnchor:(IBPNSCollectionLayoutAnchor *)itemAnchor {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutSupplementaryItem") supplementaryItemWithLayoutSize:layoutSize
                                                                                              elementKind:elementKind
                                                                                          containerAnchor:containerAnchor
                                                                                               itemAnchor:itemAnchor];
    } else {
        return [[self alloc] initWithSize:layoutSize
                            contentInsets:IBPNSDirectionalEdgeInsetsZero
                              elementKind:elementKind
                          containerAnchor:containerAnchor
                               itemAnchor:itemAnchor
                                   zIndex:1];
    }
}

- (instancetype)initWithSize:(IBPNSCollectionLayoutSize *)size
               contentInsets:(IBPNSDirectionalEdgeInsets)contentInsets
                 elementKind:(NSString *)elementKind
             containerAnchor:(IBPNSCollectionLayoutAnchor *)containerAnchor
                  itemAnchor:(nullable IBPNSCollectionLayoutAnchor *)itemAnchor
                      zIndex:(NSInteger)zIndex {
    self = [super initWithLayoutSize:size supplementaryItems:@[]];
    if (self) {
        self.elementKind = elementKind;
        self.contentInsets = contentInsets;
        self.containerAnchor = containerAnchor;
        self.itemAnchor = itemAnchor;
        self.zIndex = zIndex;
    }
    return self;
}

@end
