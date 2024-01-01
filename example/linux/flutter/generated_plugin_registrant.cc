//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <pdf_tool/pdf_tool_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) pdf_tool_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PdfToolPlugin");
  pdf_tool_plugin_register_with_registrar(pdf_tool_registrar);
}
