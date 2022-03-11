import 'package:employee_app/models/leaves.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';

class IsarInstance {
  static initialiseIsar() async {
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final isar = await Isar.open(
      schemas: [
        LeavesSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
  }
}
