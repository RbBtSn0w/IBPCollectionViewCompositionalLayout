#import "IBPUICollectionViewCompositionalLayoutConfiguration.h"

NS_ASSUME_NONNULL_BEGIN

FOUNDATION_EXTERN BOOL const _IBPAvailable(void);

@interface IBPUICollectionViewCompositionalLayoutConfiguration()

+ (instancetype)defaultConfiguration;
- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
                    interSectionSpacing:(CGFloat)interSectionSpacing
             boundarySupplementaryItems:(NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *)boundarySupplementaryItems;

@end

NS_ASSUME_NONNULL_END
