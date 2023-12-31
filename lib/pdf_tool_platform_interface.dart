import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'pdf_tool_method_channel.dart';

abstract class PdfToolPlatform extends PlatformInterface {
  /// Constructs a PdfToolPlatform.
  PdfToolPlatform() : super(token: _token);

  static final Object _token = Object();

  static PdfToolPlatform _instance = MethodChannelPdfTool();

  /// The default instance of [PdfToolPlatform] to use.
  ///
  /// Defaults to [MethodChannelPdfTool].
  static PdfToolPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [PdfToolPlatform] when
  /// they register themselves.
  static set instance(PdfToolPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<String?> mergePDFDocuments(List<String> listOfPaths) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
