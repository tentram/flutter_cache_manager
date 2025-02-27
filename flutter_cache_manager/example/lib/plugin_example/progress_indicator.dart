import 'package:flutter/material.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';

/// A centered and sized [CircularProgressIndicator] to show download progress
/// in the [DownloadPage].
class ProgressIndicator extends StatelessWidget {
  final DownloadProgress? progress;

  const ProgressIndicator({
    Key? key,
    this.progress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width: 50.0,
            height: 50.0,
            child: CircularProgressIndicator(
              value: progress != null && progress?.progress != null
                  ? progress?.progress
                  : null,
            ),
          ),
          const SizedBox(width: 20),
          const Text('Downloading'),
        ],
      ),
    );
  }
}
