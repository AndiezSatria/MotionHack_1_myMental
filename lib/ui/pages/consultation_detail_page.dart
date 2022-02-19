part of 'pages.dart';

class ConsultationDetailPage extends StatelessWidget {
  ConsultationDetailPage({Key? key}) : super(key: key);
  static const String routeName = '/consultation_detail_page';
  final PsychologEntity selectedPsycholog = Get.arguments['psycholog'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(),
    );
  }
}
