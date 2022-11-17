import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../Widgets/base_layout.dart';
import '../Widgets/box_components.dart';
import '../viewModel/Boxes_provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;

    return BaseLayout(
      widget: ChangeNotifierProvider<BoxesProvider>(
        create: (_) => BoxesProvider(),
        child: Builder(
          builder: (context) {
            return Consumer<BoxesProvider>(
              builder: (context, provider, child) {
                return SizedBox(
                  width: width,
                  child: Stack(
                    children: [
                      BoxComponents(
                        image: 'assets/images/smartcities.png',
                        description: 'Smart Cities',
                        index: provider.getSmartCitiesIndex,
                        topp: provider.getSmartCitiesTop,
                        leftt: provider.getSmartCitiesLeft,
                        visible: provider.getSmartVisible,
                        onTapped: provider.smartcities,
                      ),
                      BoxComponents(
                        image: 'assets/images/digitaltrans.png',
                        description: 'Digital Transformation',
                        index: provider.getDigitalTransIndex,
                        topp: provider.getDigitalTransTop,
                        leftt: provider.getDigitalTransLeft,
                        visible: provider.getDigitalVisible,
                        onTapped: provider.digitaltrans,
                      ),
                      BoxComponents(
                        image: 'assets/images/security.png',
                        description: 'Security',
                        index: provider.getSecurityIndex,
                        topp: provider.getSecurityTop,
                        leftt: provider.getSecurityLeft,
                        visible: provider.getSecurityVisible,
                        onTapped: provider.security,
                      ),
                      BoxComponents(
                        image: 'assets/images/health.png',
                        description: 'Health',
                        index: provider.getHealthIndex,
                        topp: provider.getHealthTop,
                        leftt: provider.getHealthLeft,
                        visible: provider.getHealthVisible,
                        onTapped: provider.health,
                      ),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }
}
