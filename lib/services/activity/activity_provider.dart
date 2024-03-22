import 'dart:convert';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:http/http.dart' as http;
import 'package:deskweb/model/activity/activity.dart';

part 'activity_provider.g.dart';

@riverpod
class Activity extends _$Activity {
  @override
  Future<ActivityData> build() async {
    var uri = Uri.https(
        'boredapi.com', '/api/activity/');
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    return ActivityData.fromJson(json);
  }

  void changeParticipants(int participants) async {
    var uri = Uri.https(
        'boredapi.com', '/api/activity/', {'participants': '$participants'});
    final response = await http.get(uri);
    final json = jsonDecode(response.body) as Map<String, dynamic>;
    state = AsyncValue.data(ActivityData.fromJson(json));
  }
}
