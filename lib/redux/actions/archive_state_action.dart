
import 'package:async_redux/async_redux.dart';
import 'package:web_archives/redux/app_state.dart';

class ArchiveStateAction extends ReduxAction<AppState> {
  final List<dynamic>? archiveListFromState;

  ArchiveStateAction({
    this.archiveListFromState,
  });

  @override
  AppState reduce() {
    return state.rebuild((AppStateBuilder b) => b
      ..archivesListState = state.archivesListState.copy(
        archiveList: archiveListFromState,
      ));
  }
}
