import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:deskweb/services/activity/activity_provider.dart';
import 'package:deskweb/model/activity/activity.dart';

class ActivityWidget extends ConsumerWidget {
  const ActivityWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final textController = TextEditingController();
    final activity = ref.watch(activityProvider);
    return Center(
      child: Column(
        children: [
          SizedBox(
            width: 500,
            child: Row(
              children: [
                // input text
                Expanded(
                  child: TextField(
                    controller: textController,
                    decoration: const InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Participants',
                    ),
                    keyboardType: TextInputType.number,
                    onSubmitted: (value) {
                      ref.read(activityProvider.notifier).changeParticipants(
                        value.isEmpty ? 1 : int.parse(value),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
          switch (activity) {
            AsyncData(:final value) =>
              SizedBox(width: 500, child: ActivityDataWidget(activity: value)),
            AsyncError(:final error) => Text(error.toString()),
            _ => const CircularProgressIndicator(),
          },
        ],
      ),
    );
  }
}

class ActivityDataWidget extends StatelessWidget {
  final ActivityData activity;
  const ActivityDataWidget({Key? key, required this.activity}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Activity:'),
            Text(activity.activity),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Type:'),
            Text(activity.type),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Participants:'),
            Text('${activity.participants}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Link:'),
            SelectableText(activity.link),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Price:'),
            Text('${activity.price}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Accessibility:'),
            Text('${activity.accessibility}'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Key:'),
            Text(activity.key),
          ],
        ),
      ],
    );
  }
}