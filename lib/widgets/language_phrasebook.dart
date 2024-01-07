import 'package:flutter/flutter.dart';
import 'package:flutter_material/flutter_material.dart';
import '../view_models/phrasebook_view_model.dart';
import '../widgets/phrasebook_item.dart';

class LanguagePHrasebook extends StatelessWidget {
  final PhrasebookViewModel viewModel;

  LanguagePHrasebook({Key? key, this.viewModel}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<PhrasebookItem>>(
      future: viewModel.getPhrasebook(),
      builder: (context, snapshot) {
        if (!snapshot.hasData) return Center(child: CircularProgressIndicator());
        return ListView.builder(
          itemCount: snapshot.data.length,
          itemBuilder: (context, index) {
            return PhrasebookItem(phrase: snapshot.data[index].phrase, translation: snapshot.data[index].translation);
          },
        );
      },
    );
  }
}
