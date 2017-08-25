// Copyright (c) 2017, Stéphane Este-Gracias. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library google_maps_markerwithlabel.src;

import 'dart:async';

import 'package:google_maps/google_maps.dart';
import 'package:google_maps/util/async.dart';
import 'package:js_wrapping/js_wrapping.dart';

part 'markerwithlabel.g.dart';

abstract class _MarkerWithLabel extends Marker {
  factory _MarkerWithLabel([MarkerWithLabelOptions opts]) => null;

  String labelContent;

  @override
  Stream<MouseEvent> get onClick => getStream(this, #onClick, "click");

  @override
  Stream<MouseEvent> get onDblclick => getStream(this, #onDblclick, "dblclick");

  @override
  Stream<MouseEvent> get onDrag => getStream(this, #onDrag, "drag");

  @override
  Stream<MouseEvent> get onDragend => getStream(this, #onDragend, "dragend");

  @override
  Stream<MouseEvent> get onDragstart => getStream(this, #onDragstart, "dragstart");

  @override
  Stream<MouseEvent> get onMousedown => getStream(this, #onMousedown, "mousedown");

  @override
  Stream<MouseEvent> get onMouseout => getStream(this, #onMouseout, "mouseout");

  @override
  Stream<MouseEvent> get onMouseover => getStream(this, #onMouseover, "mouseover");

  @override
  Stream<MouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup");

  @override
  Stream<MouseEvent> get onRightclick => getStream(this, #onRightclick, "rightclick");
}

@anonymous
abstract class _MarkerWithLabelOptions extends MarkerOptions {
  factory _MarkerWithLabelOptions() => null;

  String crossImage;
  String handCursor;
  Point labelAnchor;
  String labelClass;
  String labelContent;
  bool labelInBackground;
  String labelStyle;
  bool labelVisible;
  bool raiseOnDrag;
}
