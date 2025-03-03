import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tile_flow/config/constants/app_images.dart';
import 'package:tile_flow/config/constants/dimensions.dart';
import 'package:tile_flow/config/l10n/app_localizations.dart';
import 'package:tile_flow/core/di/service_locator.dart';
import 'package:tile_flow/features/home/items_bloc/items_bloc.dart';
import 'package:tile_flow/generla_app/auth/auth_bloc.dart';
import 'package:tile_flow/widgets/tile_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final locale = AppLocalizations.of(context);
    final size = MediaQuery.of(context).size;

    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        leading: IconButton(
          onPressed: () => sl<AuthBloc>().add(
            const AuthEvent.loggingOut(),
          ),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        title: Text(locale.homeScreenTitle),
        actions: [
          IconButton(
            onPressed: () => context.read<ItemsBloc>().add(
                  const ItemsEvent.decrement(),
                ),
            icon: const Icon(Icons.remove),
          ),
          IconButton(
            onPressed: () => context.read<ItemsBloc>().add(
                  const ItemsEvent.increment(),
                ),
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) =>
              BlocBuilder<ItemsBloc, List<String>>(
            builder: (context, items) => SingleChildScrollView(
              child: Column(
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: Dimensions.imageSizeM,
                      maxHeight: max(
                        Dimensions.imageSizeM,
                        constraints.maxHeight -
                            _calculateUsedSpace(
                                items.length, constraints.maxWidth),
                      ),
                      maxWidth: Dimensions.imageSizeL,
                    ),
                    child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(Dimensions.marginL),
                        padding: const EdgeInsets.all(Dimensions.paddingXS),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.black87),
                          borderRadius:
                              BorderRadius.circular(Dimensions.radiusL),
                        ),
                        child: SvgPicture.asset(
                          AppImages.logo,
                          width: _isVertical(size.width, size.height)
                              ? size.width.clamp(0, Dimensions.imageSizeL)
                              : size.height.clamp(0, Dimensions.imageSizeL),
                        ),
                      ),
                    ),
                  ),
                  GridView.builder(
                    padding: const EdgeInsets.symmetric(
                        horizontal: Dimensions.paddingM),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: Dimensions.itemsCount,
                      childAspectRatio: Dimensions.aspectRatioL,
                      crossAxisSpacing: Dimensions.spacerXS,
                      mainAxisSpacing: Dimensions.spacerXS,
                    ),
                    itemCount: items.length,
                    itemBuilder: (context, index) => TileCard(
                      title: items[index],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  bool _isVertical(double width, double height) => width < height;

  double _calculateUsedSpace(int itemCount, double maxWidth) {
    final rows = (itemCount / Dimensions.itemsCount).ceil();
    final itemHeight =
        (maxWidth / Dimensions.itemsCount) / Dimensions.aspectRatioL;
    return rows * itemHeight + (rows - 1) * Dimensions.spacerXS;
  }
}
