# pdf_tool Flutter Plugin

pdf_tool is a Flutter plugin that provides low-level PDF document manipulation capabilities using Foreign Function Interface (FFI) and third-party C libraries. This plugin allows developers to perform various operations on PDF documents, such as merging, splitting, and extracting pages.

## Features

- **PDF Merging:** Combine multiple PDF documents into a single file.
- **PDF Splitting:** Extract specific pages or ranges from a PDF document.
- **PDF Page Extraction:** Extract individual pages from a PDF file.
- **Low-Level Manipulation:** Direct access to PDF internals for advanced customization.

## Getting Started

To use pdf_tool in your Flutter project, add it to your `pubspec.yaml` file:

```yaml
dependencies:
  pdf_tool: ^1.0.0
```

Then, run:

```bash
flutter pub get
```

### Android

No additional setup is required for Android.

### iOS

For iOS, you may need to add the following entry to your Info.plist file to enable the use of FFI:

```xml
<key>io.flutter.embedded_views_preview</key>
<true/>
```

## Usage

### Import the Package

```dart
import 'package:pdf_tool/pdf_tool.dart';
```

### Example: Merge PDFs

```dart
// Specify input PDF files
List<String> inputPaths = ['path/to/file1.pdf', 'path/to/file2.pdf'];

// Specify the output path for the merged PDF
String outputPath = 'path/to/merged.pdf';

// Merge PDFs
try {
  await PdfTool.mergePdfs(inputPaths, outputPath);
  print('PDFs merged successfully!');
} catch (e) {
  print('Error merging PDFs: $e');
}
```

### Example: Split PDF

```dart
// Specify the input PDF file
String inputPath = 'path/to/source.pdf';

// Specify the output path for the split PDFs
String outputDir = 'path/to/split/';

// Specify the page range to extract (e.g., '1-3' for pages 1 to 3)
String pageRange = '1-3';

// Split PDF
try {
  await PdfTool.splitPdf(inputPath, outputDir, pageRange);
  print('PDF split successfully!');
} catch (e) {
  print('Error splitting PDF: $e');
}
```

## API Reference

### `PdfTool.mergePdfs(List<String> inputPaths, String outputPath)`

Merges multiple PDF files into a single PDF.

- `inputPaths`: List of paths to the input PDF files.
- `outputPath`: Path to the output merged PDF file.

### `PdfTool.splitPdf(String inputPath, String outputDir, String pageRange)`

Splits a PDF into multiple files based on the specified page range.

- `inputPath`: Path to the input PDF file.
- `outputDir`: Directory path where the split PDFs will be saved.
- `pageRange`: Page range to extract (e.g., '1-3' for pages 1 to 3).

## Contributions and Issues

Contributions and bug reports are welcome! Please create issues for any bugs or feature requests. Pull requests are encouraged.

## License

This plugin is released under the [MIT License](LICENSE).

---

Feel free to customize this README according to the specific details and features of your pdf_tool Flutter plugin. Update the version numbers, usage examples, and API reference as needed.