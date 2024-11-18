// To parse this JSON data, do
//
//     final gifResponse = gifResponseFromJson(jsonString);

import 'dart:convert';

GifResponse gifResponseFromJson(String str) => GifResponse.fromJson(json.decode(str));

class GifResponse {
    List<Gif> data;

    GifResponse({
        required this.data,
    });

    factory GifResponse.fromJson(Map<String, dynamic> json) => GifResponse(
        data: List<Gif>.from(json["data"].map((x) => Gif.fromJson(x))),
    );

}

class Gif {

    Images images;

    Gif({
        required this.images,
    });

    factory Gif.fromJson(Map<String, dynamic> json) => Gif(
        images: Images.fromJson(json["images"]),
    );

}


class Images {
    FixedHeight original;
    The480WStill downsized;
    The480WStill downsizedLarge;
    The480WStill downsizedMedium;
    DownsizedSmall downsizedSmall;
    The480WStill downsizedStill;
    FixedHeight fixedHeight;
    FixedHeight fixedHeightDownsampled;
    FixedHeight fixedHeightSmall;
    The480WStill fixedHeightSmallStill;
    The480WStill fixedHeightStill;
    FixedHeight fixedWidth;
    FixedHeight fixedWidthDownsampled;
    FixedHeight fixedWidthSmall;
    The480WStill fixedWidthSmallStill;
    The480WStill fixedWidthStill;
    The480WStill originalStill;
    DownsizedSmall originalMp4;
    DownsizedSmall preview;
    The480WStill previewGif;
    The480WStill previewWebp;
    The480WStill the480WStill;

    Images({
        required this.original,
        required this.downsized,
        required this.downsizedLarge,
        required this.downsizedMedium,
        required this.downsizedSmall,
        required this.downsizedStill,
        required this.fixedHeight,
        required this.fixedHeightDownsampled,
        required this.fixedHeightSmall,
        required this.fixedHeightSmallStill,
        required this.fixedHeightStill,
        required this.fixedWidth,
        required this.fixedWidthDownsampled,
        required this.fixedWidthSmall,
        required this.fixedWidthSmallStill,
        required this.fixedWidthStill,
        required this.originalStill,
        required this.originalMp4,
        required this.preview,
        required this.previewGif,
        required this.previewWebp,
        required this.the480WStill,
    });

    factory Images.fromJson(Map<String, dynamic> json) => Images(
        original: FixedHeight.fromJson(json["original"]),
        downsized: The480WStill.fromJson(json["downsized"]),
        downsizedLarge: The480WStill.fromJson(json["downsized_large"]),
        downsizedMedium: The480WStill.fromJson(json["downsized_medium"]),
        downsizedSmall: DownsizedSmall.fromJson(json["downsized_small"]),
        downsizedStill: The480WStill.fromJson(json["downsized_still"]),
        fixedHeight: FixedHeight.fromJson(json["fixed_height"]),
        fixedHeightDownsampled: FixedHeight.fromJson(json["fixed_height_downsampled"]),
        fixedHeightSmall: FixedHeight.fromJson(json["fixed_height_small"]),
        fixedHeightSmallStill: The480WStill.fromJson(json["fixed_height_small_still"]),
        fixedHeightStill: The480WStill.fromJson(json["fixed_height_still"]),
        fixedWidth: FixedHeight.fromJson(json["fixed_width"]),
        fixedWidthDownsampled: FixedHeight.fromJson(json["fixed_width_downsampled"]),
        fixedWidthSmall: FixedHeight.fromJson(json["fixed_width_small"]),
        fixedWidthSmallStill: The480WStill.fromJson(json["fixed_width_small_still"]),
        fixedWidthStill: The480WStill.fromJson(json["fixed_width_still"]),
        originalStill: The480WStill.fromJson(json["original_still"]),
        originalMp4: DownsizedSmall.fromJson(json["original_mp4"]),
        preview: DownsizedSmall.fromJson(json["preview"]),
        previewGif: The480WStill.fromJson(json["preview_gif"]),
        previewWebp: The480WStill.fromJson(json["preview_webp"]),
        the480WStill: The480WStill.fromJson(json["480w_still"]),
    );
}

class The480WStill {
    String height;
    String width;
    String size;
    String url;

    The480WStill({
        required this.height,
        required this.width,
        required this.size,
        required this.url,
    });

    factory The480WStill.fromJson(Map<String, dynamic> json) => The480WStill(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
    };
}

class DownsizedSmall {
    String height;
    String width;
    String mp4Size;
    String mp4;

    DownsizedSmall({
        required this.height,
        required this.width,
        required this.mp4Size,
        required this.mp4,
    });

    factory DownsizedSmall.fromJson(Map<String, dynamic> json) => DownsizedSmall(
        height: json["height"],
        width: json["width"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "mp4_size": mp4Size,
        "mp4": mp4,
    };
}

class FixedHeight {
    String height;
    String width;
    String size;
    String url;
    String? mp4Size;
    String? mp4;
    String webpSize;
    String webp;
    String? frames;
    String? hash;

    FixedHeight({
        required this.height,
        required this.width,
        required this.size,
        required this.url,
        this.mp4Size,
        this.mp4,
        required this.webpSize,
        required this.webp,
        this.frames,
        this.hash,
    });

    factory FixedHeight.fromJson(Map<String, dynamic> json) => FixedHeight(
        height: json["height"],
        width: json["width"],
        size: json["size"],
        url: json["url"],
        mp4Size: json["mp4_size"],
        mp4: json["mp4"],
        webpSize: json["webp_size"],
        webp: json["webp"],
        frames: json["frames"],
        hash: json["hash"],
    );

    Map<String, dynamic> toJson() => {
        "height": height,
        "width": width,
        "size": size,
        "url": url,
        "mp4_size": mp4Size,
        "mp4": mp4,
        "webp_size": webpSize,
        "webp": webp,
        "frames": frames,
        "hash": hash,
    };
}

