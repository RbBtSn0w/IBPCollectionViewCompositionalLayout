#import "IBPNSCollectionLayoutBoundarySupplementaryItem.h"
#import "IBPNSCollectionLayoutItem_Private.h"
#import "IBPNSCollectionLayoutSupplementaryItem_Private.h"
#import "IBPNSRectAlignment.h"
#import "IBPNSCollectionLayoutAnchor_Private.h"

FOUNDATION_IMPORT BOOL const _IBPAvailable(void);
@interface IBPNSCollectionLayoutBoundarySupplementaryItem()

@property (nonatomic, readwrite) IBPNSRectAlignment alignment;
@property (nonatomic, readwrite) CGPoint offset;

@end

@implementation IBPNSCollectionLayoutBoundarySupplementaryItem

+ (instancetype)boundarySupplementaryItemWithLayoutSize:(IBPNSCollectionLayoutSize *)layoutSize
                                            elementKind:(NSString *)elementKind
                                              alignment:(IBPNSRectAlignment)alignment {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutBoundarySupplementaryItem") boundarySupplementaryItemWithLayoutSize:layoutSize
                                                                                                              elementKind:elementKind
                                                                                                                alignment:alignment
                                                                                                           absoluteOffset:CGPointZero];
    } else {
        return [self boundarySupplementaryItemWithLayoutSize:layoutSize
                                                 elementKind:elementKind
                                                   alignment:alignment
                                              absoluteOffset:CGPointZero];
    }
}

+ (instancetype)boundarySupplementaryItemWithLayoutSize:(IBPNSCollectionLayoutSize *)layoutSize
                                            elementKind:(NSString *)elementKind
                                              alignment:(IBPNSRectAlignment)alignment
                                         absoluteOffset:(CGPoint)absoluteOffset {
    if (_IBPAvailable()) {
        return [NSClassFromString(@"NSCollectionLayoutBoundarySupplementaryItem") boundarySupplementaryItemWithLayoutSize:layoutSize
                                                                                                              elementKind:elementKind
                                                                                                                alignment:alignment
                                                                                                           absoluteOffset:absoluteOffset];
    } else {
        return [[self alloc] initWithLayoutSize:layoutSize
                                    elementKind:elementKind
                                      alignment:alignment
                                 absoluteOffset:absoluteOffset];
    }
}

- (instancetype)initWithLayoutSize:(IBPNSCollectionLayoutSize *)layoutSize
                       elementKind:(NSString *)elementKind
                         alignment:(IBPNSRectAlignment)alignment
                    absoluteOffset:(CGPoint)absoluteOffset {
    return [self initWithSize:layoutSize
                contentInsets:IBPNSDirectionalEdgeInsetsZero
                  elementKind:elementKind
              containerAnchor:[IBPNSCollectionLayoutAnchor layoutAnchorWithAnchorPoint:CGPointZero]
                   itemAnchor:nil
                       zIndex:1
                    alignment:alignment
                       offset:absoluteOffset
              extendsBoundary:YES
           pinToVisibleBounds:NO];
}

- (instancetype)initWithSize:(IBPNSCollectionLayoutSize *)size
               contentInsets:(IBPNSDirectionalEdgeInsets)contentInsets
                 elementKind:(NSString *)elementKind
             containerAnchor:(IBPNSCollectionLayoutAnchor *)containerAnchor
                  itemAnchor:(nullable IBPNSCollectionLayoutAnchor *)itemAnchor
                      zIndex:(NSInteger)zIndex
                   alignment:(IBPNSRectAlignment)alignment
                      offset:(CGPoint)offset
             extendsBoundary:(BOOL)extendsBoundary
          pinToVisibleBounds:(BOOL)pinToVisibleBounds {
    self = [super initWithSize:size
                 contentInsets:contentInsets
                   elementKind:elementKind
               containerAnchor:containerAnchor
                    itemAnchor:itemAnchor
                        zIndex:zIndex];
    if (self) {
        self.alignment = alignment;
        self.offset = offset;
        self.extendsBoundary = extendsBoundary;
        self.pinToVisibleBounds = pinToVisibleBounds;
    }
    return self;
}

@end
