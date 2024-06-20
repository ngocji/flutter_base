
class UrlSchemeExtractor {
  final String customScheme;

  UrlSchemeExtractor({required this.customScheme});

  AppUrlScheme appUrlScheme(Uri uri) {
    AppUrlScheme urlScheme = (() {
      switch (uri.scheme.toLowerCase()) {
        case "http":
        case "https":
          return AppUrlScheme.Http;
        case "mailto":
          return AppUrlScheme.MailTo;
        case "tel":
          return AppUrlScheme.Tel;
        default:
          return AppUrlScheme.CustomScheme;
      }
    })();

    if (urlScheme == AppUrlScheme.Http) {
      String? ext = uri.pathSegments.last.toLowerCase();
      switch (ext) {
        case "pdf":
          return AppUrlScheme.HttpPdf;
        case "jpg":
        case "jpeg":
          return AppUrlScheme.HttpJpg;
        case "png":
          return AppUrlScheme.HttpPng;
        default:
          return urlScheme;
      }
    }

    if (urlScheme != AppUrlScheme.CustomScheme) {
      return urlScheme;
    }

    List<String> segments = uri.pathSegments;
    if (segments.length >= 2 && segments[0] == "chat") {
      return AppUrlScheme.CustomSchemeChat;
    } else if (segments.length >= 2 &&
        segments[0] == "user" &&
        segments[1] == "authenticated") {
      return AppUrlScheme.CustomSchemeLoginService;
    } else if (segments.length >= 2 &&
        segments[0] == "user" &&
        segments[1] == "logout") {
      return AppUrlScheme.CustomSchemeLogoutService;
    } else if (segments.length >= 2 &&
        segments[0] == "user" &&
        segments[1] == "auth") {
      return AppUrlScheme.CustomSchemeLogin;
    } else if (segments.length == 2 &&
        segments[0] == "util" &&
        segments[1] == "open") {
      return AppUrlScheme.CustomSchemeUtilOpen;
    } else if (segments.length >= 3 &&
        segments[0] == "user" &&
        segments[1] == "web" &&
        segments[2] == "auth") {
      return AppUrlScheme.CustomSchemeWebAuth;
    } else {
      return AppUrlScheme.Unknown;
    }
  }
}

enum AppUrlScheme {
  Http,
  HttpPdf,
  HttpJpg,
  HttpPng,
  MailTo,
  Tel,
  CustomScheme,
  CustomSchemeChat,
  CustomSchemeLoginService,
  CustomSchemeLogoutService,
  CustomSchemeLogin,
  CustomSchemeLogout,
  CustomSchemeUtilOpen,
  CustomSchemeWebAuth,
  Unknown,
}

class CustomUrlScheme {
  static String groupChat(String appliCode, String url) {
    return '$appliCode:///user/web/auth?redirect_url=${Uri.encodeFull(url)}';
  }
}