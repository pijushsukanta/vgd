import 'package:vgd/data/network/network_info.dart';

import '../domain/repository.dart';

class RepositoryImpl extends Repository{
  NetworkInfo _networkInfo;
  RepositoryImpl(this._networkInfo);
}