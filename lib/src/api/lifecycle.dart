// Copyright 2024, Nitric Technologies Pty Ltd.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import 'dart:io';

/// The environment variable key that will be used to determine the current Nitric lifecycle/executing environment
const String nitricEnvironment = 'NITRIC_ENVIRONMENT';

/// Possible nitric execution environments
enum LifecycleStage {
  /// Local development run (using nitric run/start)
  local,

  /// Local development requirements building/collection (using nitric up)
  build,

  /// When the code is running in a deployed environment
  cloud,
}

/// Get the current lifecycle stage from environment variables
LifecycleStage _getCurrentLifecycle() {
  final lifecycle = Platform.environment[nitricEnvironment];

  if (lifecycle == null) {
    throw Exception(
      'Unable to determine the current Nitric lifecycle, please ensure the $nitricEnvironment environment variable is set',
    );
  }

  try {
    return LifecycleStage.values.firstWhere(
      (stage) => stage.name == lifecycle,
      orElse: () => throw Exception('Invalid lifecycle stage: $lifecycle'),
    );
  } catch (e) {
    throw Exception(
      'Unable to determine the current Nitric lifecycle, please ensure the $nitricEnvironment environment variable is set to a valid value',
    );
  }
}

/// Check if the current environment is one of the provided stages
bool _isInLifecycle(List<LifecycleStage> stages) {
  final currentStage = _getCurrentLifecycle();
  return stages.contains(currentStage);
}

/// If the current environment is one of the provided stages, execute the provided callback
T? _whenInLifecycles<T>(List<LifecycleStage> stages, T Function() callback) {
  if (_isInLifecycle(stages)) {
    return callback();
  }
  return null;
}

/// If the current environment is running (local or cloud), execute the provided callback
T? _whenRunning<T>(T Function() callback) => _whenInLifecycles<T>(
    [LifecycleStage.local, LifecycleStage.cloud], callback);

/// If the current environment is collecting requirements, execute the provided callback
T? _whenCollecting<T>(T Function() callback) =>
    _whenInLifecycles<T>([LifecycleStage.build], callback);

/// Check if the current lifecycle is running (local or cloud)
bool _isRunning() =>
    _isInLifecycle([LifecycleStage.local, LifecycleStage.cloud]);

/// Check if the current lifecycle is collecting application requirements
bool _isCollecting() => _isInLifecycle([LifecycleStage.build]);

/// Lifecycle utility class
class Lifecycle {
  /// Check if the current environment is one of the provided stages
  static bool isInStage(List<LifecycleStage> stages) => _isInLifecycle(stages);

  /// Check if the current lifecycle is collecting application requirements
  static bool get isCollecting => _isCollecting();

  /// Check if the current lifecycle is running the app
  static bool get isRunning => _isRunning();

  /// If the current environment is one of the provided stages, execute the provided callback
  static T? when<T>(List<LifecycleStage> stages, T Function() callback) =>
      _whenInLifecycles<T>(stages, callback);

  /// If the current environment is collecting application requirements
  static T? whenCollecting<T>(T Function() callback) =>
      _whenCollecting<T>(callback);

  /// If the current environment is a cloud environment, execute the provided callback
  static T? whenRunning<T>(T Function() callback) => _whenRunning<T>(callback);
}
