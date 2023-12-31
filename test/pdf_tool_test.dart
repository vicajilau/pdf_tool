import 'package:flutter_test/flutter_test.dart';
import 'package:pdf_tool/pdf_tool.dart';
import 'package:pdf_tool/pdf_tool_platform_interface.dart';
import 'package:pdf_tool/pdf_tool_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockPdfToolPlatform
    with MockPlatformInterfaceMixin
    implements PdfToolPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final PdfToolPlatform initialPlatform = PdfToolPlatform.instance;

  test('$MethodChannelPdfTool is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelPdfTool>());
  });

  test('getPlatformVersion', () async {
    PdfTool pdfToolPlugin = PdfTool();
    MockPdfToolPlatform fakePlatform = MockPdfToolPlatform();
    PdfToolPlatform.instance = fakePlatform;

    expect(await pdfToolPlugin.getPlatformVersion(), '42');
  });
}
