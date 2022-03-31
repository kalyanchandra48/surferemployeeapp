import 'package:employee_app/models/leaves.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:employee_app/models/food/item.dart';

class IsarInstance {
  static initialiseIsar() async {
    final dir = await getApplicationSupportDirectory(); // path_provider package
    final isar = await Isar.open(
      schemas: [
        LeavesSchema,
        ItemSchema,
      ],
      directory: dir.path,
      inspector: true,
    );
  }

//   static Future<List<Leaves>> getLeaveData() async {
//     final dir = await getApplicationSupportDirectory(); // path_provider package
//     final isar = await Isar.open(
//       schemas: [
//         LeavesSchema,
//       ],
//       directory: dir.path,
//       inspector: true,
//     );
//     final List<Leaves> leaves = await isar.leavess.where().findAll();
//     print('LEAVE FROM TEST FUNTION');
//     print(leaves);
//     return leaves;
//   }
}
