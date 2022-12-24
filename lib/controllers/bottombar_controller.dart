import 'package:get/get.dart';

final LandingPageController landingPageController = Get.put(
  LandingPageController(),
  permanent: false,
);

class LandingPageController extends GetxController {
  var tabIndex = 0.obs;
  var title = 'Field Ticket'.obs;

  void changeTabIndex(int index) {
    changeTitle(index);
    tabIndex.value = index;
  }

  void changeTitle(int index) {
    switch (index) {
      case 0:
        title.value = 'Field Ticket';
        break;
      case 1:
        title.value = 'Lift Plan';
        break;
      case 2:
        title.value = 'Wellhead Calculator';
        break;
      case 3:
        title.value = 'Dispatch Form';
        break;
      case 4:
        title.value = 'Employe Calender';
        break;
    }
  }
}
