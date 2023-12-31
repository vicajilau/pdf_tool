#include "include/pdf_tool/pdf_tool_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pdf_tool_plugin.h"

void PdfToolPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pdf_tool::PdfToolPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
