import 'package:stacked/stacked.dart';

class DetailsViewModel extends BaseViewModel{
   int activePage = 1;

 

  changePage(page) {
    activePage = page;
    notifyListeners();
  }

 
}