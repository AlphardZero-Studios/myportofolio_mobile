import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:myportofolio_mobile/main.dart';

void main() {
  testWidgets('menampilkan profil dan menu portofolio', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('2506632910'), findsOneWidget);
    expect(find.text('Alphard Qodaruddin'), findsOneWidget);
    expect(find.text('PBP F'), findsOneWidget);
    expect(find.text('Lihat Proyek'), findsOneWidget);
    expect(find.text('Tambah Proyek'), findsOneWidget);
    expect(find.text('Logout'), findsOneWidget);
  });

  testWidgets('menampilkan warna unik dan SnackBar untuk setiap menu', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(
      find.byWidgetPredicate(
        (Widget widget) => widget is Material && widget.color == Colors.blue,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget widget) => widget is Material && widget.color == Colors.green,
      ),
      findsOneWidget,
    );
    expect(
      find.byWidgetPredicate(
        (Widget widget) => widget is Material && widget.color == Colors.red,
      ),
      findsOneWidget,
    );

    for (final String item in ['Lihat Proyek', 'Tambah Proyek', 'Logout']) {
      await tester.pumpWidget(const MyApp());
      await tester.tap(find.text(item));
      await tester.pump();

      expect(find.text('Kamu telah menekan tombol $item!'), findsOneWidget);
      await tester.pumpWidget(const SizedBox());
    }
  });
}
