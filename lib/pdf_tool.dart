
import 'pdf_tool_platform_interface.dart';

class PdfTool {
  Future<String?> getPlatformVersion() {
    return PdfToolPlatform.instance.getPlatformVersion();
  }
}
