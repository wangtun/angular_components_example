// Copyright (c) 2016, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

import 'package:angular/angular.dart';
import 'package:angular_components/material_slider/material_slider.dart';
import 'package:angular_gallery_section/annotation/gallery_section_config.dart';

@GallerySectionConfig(displayName: 'Material Slider', docs: const [
  MaterialSliderComponent,
], demos: const [
  MaterialSliderExample,
], benchmarks: const [
  'material_slider_100_init',
])
class MaterialSliderGalleryConfig {}

@Component(
  selector: 'material-slider-example',
  providers: const [],
  directives: const [
    MaterialSliderComponent,
  ],
  templateUrl: 'material_slider_example.html',
  styleUrls: const ['material_slider_example.scss.css'],
)
class MaterialSliderExample {
  int value = 60;
  int value2 = 60;
}
