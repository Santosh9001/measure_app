import 'package:flutter/material.dart';
import 'package:measure_app/components/common_components.dart';
import 'package:measure_app/utilities/styles.dart';

class HeaderView extends StatelessWidget {
  String? imageUrl;
  HeaderView({super.key, imageUrl});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ImageComponent(url: imageUrl),
        const SizedBox(
          width: 8.0,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Back',
                style: DesignTheme.lightTheme.titleSmall!
                    .copyWith(color: DesignColors.gray600),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                'Dr. Jonhson',
                style: DesignTheme.lightTheme.titleLarge!,
              )
            ],
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Monday',
              style: DesignTheme.lightTheme.titleSmall!
                  .copyWith(color: DesignColors.gray600),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              '16 April, 2024',
              style: DesignTheme.lightTheme.titleLarge!,
            )
          ],
        )
      ],
    );
  }
}

class ImageComponent extends StatelessWidget {
  String? url;
  ImageComponent({super.key, required String? url});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(DesignDimensions.roundedCorner),
      child: getNetworkImage(
        url,
      ),
    );
  }
}
