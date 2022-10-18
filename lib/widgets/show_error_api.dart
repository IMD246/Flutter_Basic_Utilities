import 'package:flutter_basic_utilities/constants.dart';
import 'package:flutter_basic_utilities/widgets/text_widget.dart';
import 'package:flutter/material.dart';

import 'image_asset_widget.dart';

class ShowErrorAPI extends StatelessWidget {
  const ShowErrorAPI({
    Key? key,
    this.isShowImage = true,
    this.message,
    this.isShowBackButton = false,
    this.backButton,
    required this.reloadFunc,
    this.isShowReload = true,
    required this.urlImageError,
    required this.urlImageReload,
  }) : super(key: key);
  final bool isShowImage;
  final String? message;
  final bool isShowBackButton;
  final Widget? backButton;
  final VoidCallback reloadFunc;
  final bool isShowReload;
  final String urlImageError;
  final String urlImageReload;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Visibility(
              visible: isShowImage,
              child: Image.asset(
                urlImageError,
                package: packageName,
                width: size.width * 0.6,
                height: size.height * 0.3,
              ),
            ),
            textWidget(
              text: message ??
                  "Dịch vụ không thực hiện được lúc này.\nQuý khách vui lòng thử lại sau!",
              textAlign: TextAlign.center,
              color: Colors.red,
            ),
            Visibility(
              visible: isShowReload,
              child: InkWell(
                onTap: reloadFunc,
                child: SizedBox(
                  width: size.width * 0.25,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      imageAssetWidget(
                        packageName: packageName,
                        urlImage: urlImageReload,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      textWidget(
                        text: "Thử lại!",
                        color: Colors.red,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Visibility(
              visible: isShowBackButton,
              child: backButton != null
                  ? backButton!
                  : TextButton.icon(
                      label: textWidget(
                        text: "Quay lại!",
                        color: Colors.red,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(Icons.arrow_back, color: Colors.red),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
