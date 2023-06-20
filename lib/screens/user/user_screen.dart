import 'package:butler_admin/common/constants.dart';
import 'package:butler_admin/screens/components/scanfllod.dart';
import 'package:flutter/material.dart';

class UserScreen extends StatelessWidget {
  const UserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const rowCount = 100;

    return CommonScaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 10, 20, 20),
          child: Stack(
            children: [
              SizedBox(
                width: double.infinity,
                child: DataTableTheme(
                  data: const DataTableThemeData(
                    columnSpacing: Style.defaultPadding,
                    dataTextStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 14,
                    ),
                  ),
                  child: PaginatedDataTable(
                    showFirstLastButtons: true,
                    onPageChanged: (value) {
                      print(value);
                    },
                    onRowsPerPageChanged: (value) {
                      print(value);
                    },
                    onSelectAll: (value) {
                      print(value);
                    },
                    actions: [
                      SizedBox(
                        width: 200,
                        height: 50,
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: 'Search',
                            suffixIcon: const Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                    ],
                    availableRowsPerPage: const [10, 20, 50, 100],
                    header: Text(
                      '유저관리',
                      style: Theme.of(context).textTheme.titleLarge,
                    ),
                    rowsPerPage: 50,
                    columns: dataColums,
                    source: _DataSource(
                      dataRows: List.generate(
                        100,
                        (index) => recentFileDataRow(),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  List<DataColumn> get dataColums {
    return [
      for (var value in [
        "회원번호",
        "이름",
        "이메일",
        "가입일",
        "최근 접속일",
      ])
        DataColumn(
          onSort: (columnIndex, ascending) {
            print('$columnIndex $ascending');
          },
          label: Text(value),
        ),
    ];
  }
}

class _DataSource extends DataTableSource {
  final List<DataRow> dataRows;

  _DataSource({required this.dataRows});

  @override
  DataRow? getRow(int index) {
    if (index >= dataRows.length) {
      return null;
    }
    return dataRows[index];
  }

  @override
  int get rowCount => dataRows.length;

  @override
  bool get isRowCountApproximate => true;

  @override
  int get selectedRowCount => 0;
}

DataRow recentFileDataRow() {
  return DataRow(
    cells: [
      DataCell(
        const Text("10000001"),
        onTap: () {
          print("onTap");
        },
      ),
      const DataCell(Text("김철수")),
      const DataCell(Text("docs@kakao.com")),
      const DataCell(Text("2022.06.18 12:00:00")),
      const DataCell(Text("2022.06.18 12:00:00")),
    ],
  );
}
