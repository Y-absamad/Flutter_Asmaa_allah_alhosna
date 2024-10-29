import '/models.dart';

import 'repository.dart';

class NameViewModel{
  // ignore: unused_field
  final NameRepository _repository;
  List<AsmaaAllah> names;

  NameViewModel(this._repository) : names = _repository.fetchNames();

}