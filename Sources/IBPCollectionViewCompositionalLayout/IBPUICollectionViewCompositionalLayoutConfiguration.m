#import "IBPUICollectionViewCompositionalLayoutConfiguration_Private.h"

BOOL const _IBPAvailable(void) {
    if (@available(iOS 13, *)) {
        return YES;
    } else {
        return NO;
    }
}

@implementation IBPUICollectionViewCompositionalLayoutConfiguration

+ (instancetype)defaultConfiguration {
    return [[self alloc] init];
}

- (instancetype)initWithScrollDirection:(UICollectionViewScrollDirection)scrollDirection
                    interSectionSpacing:(CGFloat)interSectionSpacing
             boundarySupplementaryItems:(NSArray<IBPNSCollectionLayoutBoundarySupplementaryItem *> *)boundarySupplementaryItems {
    IBPUICollectionViewCompositionalLayoutConfiguration *configuration = [self.class defaultConfiguration];
    configuration.scrollDirection = scrollDirection;
    configuration.interSectionSpacing = interSectionSpacing;
    configuration.boundarySupplementaryItems = boundarySupplementaryItems;
    return configuration;
}

- (instancetype)init {
    if (_IBPAvailable()) {
        return [[NSClassFromString(@"UICollectionViewCompositionalLayoutConfiguration") alloc] init];
    } else {
        self = [super init];
        if (self) {
            self.scrollDirection = UICollectionViewScrollDirectionVertical;
            self.interSectionSpacing = 0;
            self.boundarySupplementaryItems = @[];
        }
        return self;
    }
}

- (nonnull id)copyWithZone:(nullable NSZone *)zone {
    return [[self.class alloc] initWithScrollDirection:self.scrollDirection
                                   interSectionSpacing:self.interSectionSpacing
                            boundarySupplementaryItems:self.boundarySupplementaryItems];
}

@end
