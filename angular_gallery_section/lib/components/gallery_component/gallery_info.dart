// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

/// The model that keeps the details for all of the gallery information
class GalleryInfo {
  /// A list of Doc attributes pull Dart doc comments from.
  ///
  /// Specify docs in the order that they should be displayed.
  final List<Doc> docs;

  /// A list of example component examples to include in the section.
  ///
  /// Specify demos in the order that they should be displayed.
  final List<Demo> demos;

  /// A list of latency test names to include in charts on the API page.
  ///
  /// Specify the latency names in the order they should be displayed.
  final List<Benchmark> benchmarks;

  /// A list of owners for the components in this section.
  final List<String> owners;

  /// A list of UX owners for the components in this section.
  final List<String> uxOwners;

  /// Titles and urls of related documents.
  final Map<String, String> relatedUrls;

  const GalleryInfo(
      {this.docs: const [],
      this.demos: const [],
      this.benchmarks: const [],
      this.owners: const [],
      this.uxOwners: const [],
      this.relatedUrls: const {}});
}

class Doc {
  final String name;
  final String selector;
  final String path;
  final String comment;
  const Doc(this.name, this.selector, this.path, this.comment);
}

class Demo {
  final Type type;
  final String name;
  final String path;
  const Demo(this.type, this.name, this.path);
}

class Benchmark {
  final String suite;
  final String test;
  final String benchmarkKey;
  final List<String> metricValueKeys;
  const Benchmark(
      this.suite, this.test, this.benchmarkKey, this.metricValueKeys);
}
