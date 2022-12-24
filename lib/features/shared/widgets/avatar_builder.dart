import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';

class AvatarBuilder extends StatelessWidget {
  final String imgUrl;
  const AvatarBuilder({
    super.key,
    required this.imgUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
      child: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          image: DecorationImage(
            image: CachedNetworkImageProvider(imgUrl),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
