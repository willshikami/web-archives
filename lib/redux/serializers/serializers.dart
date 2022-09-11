import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:web_archives/redux/models/archive_state.dart';

part 'serializers.g.dart';

// ignore: always_specify_types
@SerializersFor([
  ArchivesListState,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
