#ifndef FLUTTER_PLUGIN_PDF_TOOL_PLUGIN_H_
#define FLUTTER_PLUGIN_PDF_TOOL_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace pdf_tool {

class PdfToolPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PdfToolPlugin();

  virtual ~PdfToolPlugin();

  // Disallow copy and assign.
  PdfToolPlugin(const PdfToolPlugin&) = delete;
  PdfToolPlugin& operator=(const PdfToolPlugin&) = delete;

  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace pdf_tool

#endif  // FLUTTER_PLUGIN_PDF_TOOL_PLUGIN_H_
