//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <file_selector_windows/file_selector_windows.h>
#include <multi_chip_picker/multi_chip_picker_plugin_c_api.h>

void RegisterPlugins(flutter::PluginRegistry* registry) {
  FileSelectorWindowsRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("FileSelectorWindows"));
  MultiChipPickerPluginCApiRegisterWithRegistrar(
      registry->GetRegistrarForPlugin("MultiChipPickerPluginCApi"));
}
