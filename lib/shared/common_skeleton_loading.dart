import 'package:flutter/material.dart';
import 'package:skeletonizer/skeletonizer.dart';

enum SkeletonTypes {
  list,
  detail,
}

extension SkeletonTypesX on SkeletonTypes {
  bool get isList => this == SkeletonTypes.list;
  bool get isDetail => this == SkeletonTypes.detail;
}

const imageDetailHeight = 400.0;

const skeletonImage = Skeleton.replace(
  width: double.infinity,
  height: imageDetailHeight,
  child: SizedBox.shrink(),
);

const skeletonListTileIgnore = Card(
  child: Skeleton.ignore(
    child: SizedBox(height: 75.0),
  ),
);

final skeletonSubTitle = DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(15),
  ),
  child: const SizedBox(width: double.infinity, height: 20),
);

final skeletonSubTitleSmaller = DecoratedBox(
  decoration: BoxDecoration(
    color: Colors.grey,
    borderRadius: BorderRadius.circular(15),
  ),
  child: const SizedBox(width: 100.0, height: 20),
);

const skeletorSpaceSize = 15.0;

const skeletorSpace = SizedBox(
  width: skeletorSpaceSize,
  height: skeletorSpaceSize,
);

extension SkeletonContentX on SkeletonTypes {
  Widget getContent(int itemCount) {
    switch (this) {
      case SkeletonTypes.list:
        return ListView.separated(
          itemCount: itemCount,
          itemBuilder: (context, index) {
            return skeletonListTileIgnore;
          },
          separatorBuilder: (context, index) {
            return const SizedBox(height: 10.0);
          },
        );
      case SkeletonTypes.detail:
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            skeletonImage,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitleSmaller,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitle,
            skeletorSpace,
            skeletonSubTitle,
          ],
        );
    }
  }
}

const defaultItemCount = 15;
const defaultSkeletonType = SkeletonTypes.list;
const defaultPadding = EdgeInsets.symmetric(horizontal: 22.0);

/// Skeletonizer.of(context).enabled;

class CommonSkeletonLoading extends StatelessWidget {
  final int itemCount;
  final bool enabled;
  final SkeletonTypes type;
  final EdgeInsetsGeometry padding;
  final PaintingEffect? effect;
  final TextBoneBorderRadius? textBoneBorderRadius;
  final bool? ignoreContainers;
  final bool? justifyMultiLineText;

  const CommonSkeletonLoading({
    super.key,
    this.itemCount = defaultItemCount,
    this.enabled = true,
    this.type = defaultSkeletonType,
    this.padding = defaultPadding,
    this.effect,
    this.textBoneBorderRadius,
    this.ignoreContainers,
    this.justifyMultiLineText = false,
  });

  @override
  Widget build(BuildContext context) {
    Widget? child = type.getContent(itemCount);
    return Padding(
      padding: padding,
      child: Skeletonizer(
        enabled: enabled,
        effect: effect,
        textBoneBorderRadius: textBoneBorderRadius,
        ignoreContainers: ignoreContainers,
        justifyMultiLineText: justifyMultiLineText,
        child: child,
      ),
    );
  }
}
