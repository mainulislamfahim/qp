import 'package:flutter/cupertino.dart';
import 'package:vs_story_designer/vs_story_designer.dart';

class VSStoryDesignerView extends StatelessWidget {
  const VSStoryDesignerView({super.key, this.media});
final String? media;
  @override
  Widget build(BuildContext context) {
    return VSStoryDesigner(
      centerText: "Start Creating Your Story",
      // fontFamilyList: const [
      //   FontType.abrilFatface,
      //   FontType.alegreya,
      //   FontType.typewriter
      // ],
      // middleBottomWidget: const SizedBox(),
      themeType: ThemeType
          .light, // OPTIONAL, Default ThemeType.dark
      galleryThumbnailQuality: 250,
      onDone: (uri) {
        debugPrint(uri);
        // Share.shareFiles([uri]);
      },
      mediaPath: media,
    );
  }
}
