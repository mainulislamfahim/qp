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

  /// File path: assets/images/avatar.png
  AssetGenImage get avatar => const AssetGenImage('assets/images/avatar.png');

  /// File path: assets/images/bookmark.png
  AssetGenImage get bookmark =>
      const AssetGenImage('assets/images/bookmark.png');

  /// File path: assets/images/cart.png
  AssetGenImage get cart => const AssetGenImage('assets/images/cart.png');

  /// File path: assets/images/chancal.png
  AssetGenImage get chancal => const AssetGenImage('assets/images/chancal.png');

  /// File path: assets/images/home.png
  AssetGenImage get home => const AssetGenImage('assets/images/home.png');

  /// File path: assets/images/image.png
  AssetGenImage get image => const AssetGenImage('assets/images/image.png');

  /// File path: assets/images/logoHome.png
  AssetGenImage get logoHome =>
      const AssetGenImage('assets/images/logoHome.png');

  /// File path: assets/images/message.png
  AssetGenImage get message => const AssetGenImage('assets/images/message.png');

  /// File path: assets/images/notification.png
  AssetGenImage get notification =>
      const AssetGenImage('assets/images/notification.png');

  /// File path: assets/images/people.png
  AssetGenImage get people => const AssetGenImage('assets/images/people.png');

  /// File path: assets/images/qp_logo.svg
  String get qpLogo => 'assets/images/qp_logo.svg';

  /// File path: assets/images/qp_logo_1.png
  AssetGenImage get qpLogo1 =>
      const AssetGenImage('assets/images/qp_logo_1.png');

  /// File path: assets/images/reg.png
  AssetGenImage get reg => const AssetGenImage('assets/images/reg.png');

  /// File path: assets/images/video.png
  AssetGenImage get video => const AssetGenImage('assets/images/video.png');

  /// List of all assets
  List<dynamic> get values => [
        avatar,
        bookmark,
        cart,
        chancal,
        home,
        image,
        logoHome,
        message,
        notification,
        people,
        qpLogo,
        qpLogo1,
        reg,
        video
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
