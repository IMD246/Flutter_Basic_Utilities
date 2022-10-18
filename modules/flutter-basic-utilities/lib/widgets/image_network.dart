import 'package:flutter/material.dart';
Image imageNetworkWidget(
    {required String? url,
    double scale = 1,
    BoxFit? fit,
    int? cacheWidth,
    int? cacheHeight}) {
  return Image.network(
    cacheWidth: cacheHeight,
    cacheHeight: cacheWidth,
    scale: scale,
    url ?? "https://demofree.sirv.com/nope-not-here.jpg",
    fit: fit,
    errorBuilder: (context, url, error) => const Icon(Icons.error),
  );
}
