import 'package:flutter/material.dart';

class TwoWayCounter extends StatefulWidget {
  const TwoWayCounter({super.key});

  @override
  State<TwoWayCounter> createState() => _TwoWayCounterState();
}

class _TwoWayCounterState extends State<TwoWayCounter> {
  int _count = 0;
  bool _saving = false;

  Future<void> _save() async {
    setState(() {
      _saving = true;
    });

    await Future.delayed(const Duration(seconds: 2));

    if (!mounted) return;

    setState(() {
      _saving = false;
    });

    ScaffoldMessenger.of(
      context,
    ).showSnackBar(const SnackBar(content: Text('Saved')));
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              OutlinedButton(
                onPressed: _count == 0
                    ? null
                    : () {
                        setState(() {
                          _count--;
                        });
                      },
                child: const Text('−'),
                style: OutlinedButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                  disabledBackgroundColor: Colors.amber,
                  disabledForegroundColor: Colors.black54,
                  side: const BorderSide(color: Colors.amber),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  '$_count',
                  style: Theme.of(context).textTheme.headlineMedium,
                ),
              ),
              FilledButton(
                onPressed: () {
                  setState(() {
                    _count++;
                  });
                },
                style: FilledButton.styleFrom(
                  backgroundColor: Colors.amber,
                  foregroundColor: Colors.black,
                ),
                child: const Text('+'),
              ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        FilledButton(
          onPressed: _saving ? null : _save,
          style: FilledButton.styleFrom(
            backgroundColor: Colors.amber,
            foregroundColor: Colors.black,
            disabledBackgroundColor: Colors.amber,
            disabledForegroundColor: Colors.black54,
          ),
          child: _saving
              ? const SizedBox(
                  height: 20,
                  width: 20,
                  child: CircularProgressIndicator(
                    strokeWidth: 2,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.black),
                  ),
                )
              : const Text('Save'),
        ),
      ],
    );
  }
}
