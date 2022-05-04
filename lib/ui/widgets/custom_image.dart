import 'package:flutter/material.dart';

import 'package:flutter_arch_sample/core/constants/index.dart';

import 'package:flutter_arch_sample/ui/styles/index.dart';

class CustomImage extends StatelessWidget {
  final double? width;
  final double? height;
  final String imageUrl;

  const CustomImage(
    this.imageUrl, {
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Image.asset(
        imageUrl,
        fit: BoxFit.cover,
        width: width ?? double.infinity,
        height: height ?? double.infinity,
        errorBuilder: _buildError,
        frameBuilder: _buildFrame,
      ),
    );
  }

  Widget _buildFrame(
    BuildContext context,
    Widget child,
    int? frame,
    bool isSync,
  ) {
    if (isSync) return child;
    return frame != null
        ? child
        : Container(
            width: double.infinity,
            height: double.infinity,
            color: AppColors.onBackground.withOpacity(0.1),
            padding: const EdgeInsets.all(12.0),
            child: const Center(
              child: CircularProgressIndicator(
                strokeWidth: 2.0,
                valueColor: AlwaysStoppedAnimation<Color>(AppColors.disabled),
              ),
            ),
          );
  }

  Widget _buildError(
    BuildContext context,
    Object exception,
    StackTrace? stackTrace,
  ) {
    return Image.asset(
      AppImages.defaultUser,
      fit: BoxFit.cover,
      width: width ?? double.infinity,
      height: height ?? double.infinity,
    );
  }
}
