/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/bubble_1.png
  AssetGenImage get bubble1 =>
      const AssetGenImage('assets/images/bubble_1.png');

  /// File path: assets/images/dollar.png
  AssetGenImage get dollar => const AssetGenImage('assets/images/dollar.png');

  /// File path: assets/images/dollar_bubbles.png
  AssetGenImage get dollarBubbles =>
      const AssetGenImage('assets/images/dollar_bubbles.png');

  /// File path: assets/images/earth.png
  AssetGenImage get earth => const AssetGenImage('assets/images/earth.png');

  /// File path: assets/images/earth_bubbles.png
  AssetGenImage get earthBubbles =>
      const AssetGenImage('assets/images/earth_bubbles.png');

  /// File path: assets/images/faded_dollar.png
  AssetGenImage get fadedDollar =>
      const AssetGenImage('assets/images/faded_dollar.png');

  /// File path: assets/images/login_bubbles.png
  AssetGenImage get loginBubbles =>
      const AssetGenImage('assets/images/login_bubbles.png');

  /// File path: assets/images/love.png
  AssetGenImage get love => const AssetGenImage('assets/images/love.png');

  /// File path: assets/images/love_bubbles.png
  AssetGenImage get loveBubbles =>
      const AssetGenImage('assets/images/love_bubbles.png');

  /// File path: assets/images/phone.png
  AssetGenImage get phone => const AssetGenImage('assets/images/phone.png');

  /// File path: assets/images/phone_bubbles.png
  AssetGenImage get phoneBubbles =>
      const AssetGenImage('assets/images/phone_bubbles.png');

  /// File path: assets/images/plus1_bubbles.png
  AssetGenImage get plus1Bubbles =>
      const AssetGenImage('assets/images/plus1_bubbles.png');

  /// File path: assets/images/plus_1.png
  AssetGenImage get plus1 => const AssetGenImage('assets/images/plus_1.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        bubble1,
        dollar,
        dollarBubbles,
        earth,
        earthBubbles,
        fadedDollar,
        loginBubbles,
        love,
        loveBubbles,
        phone,
        phoneBubbles,
        plus1Bubbles,
        plus1
      ];
}

class Assets {
  Assets._();

  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
