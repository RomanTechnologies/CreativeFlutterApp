import 'package:flutter/flutter.dart';
import '../widgets/travel_tip_item.dart';
import '../view_models/travel_tips_view_model.dart';

class TravelTipsView extends StatelessWidget {
  final TravelTipsViewModel viewModel;

  TravelTipsView(this.viewModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Travel Tips')),
      body: FutureBuilder<List<TravelTipItem>>(
        future: viewModel.getTravelTips(),
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return Center(child: CircularProgressIndicator());
          }
          return ListView.builder(
              itemCount: snapshot.data.length,
              itemBuilder: (index) {
                return TravelTipItem(title: snapshot.data[index].title, description: snapshot.data[index].description);
              },
          );
        },
      ),
    );
  }
}
