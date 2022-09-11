import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:web_archives/redux/models/archive_state.dart';

import 'serializers/serializers.dart';

part 'app_state.g.dart';

abstract class AppState implements Built<AppState, AppStateBuilder> {
  @BuiltValueField(wireName: 'archivesListState')
  ArchivesListState get archivesListState;

  AppState._();

  factory AppState.initial() => AppState(
        (AppStateBuilder b) =>
            b..archivesListState = ArchivesListState.initialState(),
      );

  static AppState copyWith({
    required ArchivesListState archivesListState,
  }) {
    return AppState(
      (AppStateBuilder b) => b..archivesListState = archivesListState,
    );
  }

  static Serializer<AppState> get serializer => _$appStateSerializer;

  factory AppState([void Function(AppStateBuilder) updates]) = _$AppState;

  Object? toJson() => serializers.serializeWith(AppState.serializer, this);

  static AppState? fromJson(Map<String, dynamic> data) =>
      serializers.deserializeWith(AppState.serializer, data);
}
