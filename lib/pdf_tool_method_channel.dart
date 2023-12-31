import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'pdf_tool_platform_interface.dart';

/// An implementation of [PdfToolPlatform] that uses method channels.
class MethodChannelPdfTool extends PdfToolPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('pdf_tool');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }
}
