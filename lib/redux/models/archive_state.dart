class ArchivesListState {
  final List<dynamic>? archiveList;

  ArchivesListState({
    required this.archiveList,
  });

  ArchivesListState copy({
    required List<dynamic>? archiveList,
  }) {
    return ArchivesListState(
      archiveList: archiveList,
    );
  }

  static ArchivesListState initialState() => ArchivesListState(
        archiveList: <dynamic>[],
      );

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        other is ArchivesListState && archiveList == other.archiveList;
  }

  @override
  int get hashCode => archiveList.hashCode ^ archiveList.hashCode;
}
