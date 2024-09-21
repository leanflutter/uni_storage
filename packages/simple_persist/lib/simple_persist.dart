library simple_persist;

export 'src/file_storage_stub.dart'
    if (dart.library.io) 'src/file_storage.dart';
export 'src/local_storage_stub.dart'
    if (dart.library.js_interop) 'src/local_storage.dart';
export 'src/persistor.dart';
export 'src/session_storage_stub.dart'
    if (dart.library.js_interop) 'src/session_storage.dart';
export 'src/storage.dart';
