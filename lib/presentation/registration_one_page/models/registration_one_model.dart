import 'package:get/get.dart';
import 'listcs2009_item_model.dart';

class RegistrationOneModel {
  RxList<Listcs2009ItemModel> listcs2009ItemList =
      RxList.generate(5, (index) => Listcs2009ItemModel());
}
