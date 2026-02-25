import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonsScreen extends StatelessWidget {
  static const name = 'buttons-screen';
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Buttons Screen')),
      body: _ButtonsView(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pop();
        },
        child: const Icon(Icons.arrow_back_ios_new_outlined),
      ),
    );
  }
}

class _ButtonsView extends StatelessWidget {
  const _ButtonsView();

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
        child: Wrap(
          spacing: 10,
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              child: const Text('Elevated Button'),
            ),
            ElevatedButton(
              onPressed: null,
              child: const Text('Elevated Disabled Button'),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm_rounded),
              label: const Text('Elevated Icon Button'),
            ),
            FilledButton(onPressed: () {}, child: const Text('Filled Button')),
            FilledButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_balance),
              label: const Text('Filled Icon Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Outlined Button'),
            ),
            OutlinedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.account_tree_outlined),
              label: const Text('Outlined Icon Button'),
            ),
            TextButton(onPressed: () {}, child: const Text('Text Button')),
            TextButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.add_business_outlined),
              label: const Text('Text Icon Button'),
            ),
            const CustomButton(),
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.app_registration_outlined),
            ),
            IconButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(colors.primary),
              ),
              icon: Icon(Icons.app_registration_outlined),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  const CustomButton({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Material(
        color: Colors.blue,
        child: InkWell(
          onTap: () {},
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: Text('Hola Mundo', style: TextStyle(color: colors.primary)),
          ),
        ),
      ),
    );
  }
}
