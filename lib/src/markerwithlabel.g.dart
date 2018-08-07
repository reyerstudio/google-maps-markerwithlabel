// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps_markerwithlabel.src;

// **************************************************************************
// JsWrappingGenerator
// **************************************************************************

@GeneratedFrom(_MarkerWithLabel)
class MarkerWithLabel extends Marker {
  MarkerWithLabel([MarkerWithLabelOptions opts])
      : this.created(
            JsObject(context['MarkerWithLabel'], [__codec0.encode(opts)]));
  MarkerWithLabel.created(JsObject o) : super.created(o);

  set labelContent(String _labelContent) {
    asJsObject(this)['labelContent'] = _labelContent;
  }

  String get labelContent => asJsObject(this)['labelContent'];

  @override
  Stream<MouseEvent> get onClick =>
      getStream(this, "click", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onDblclick =>
      getStream(this, "dblclick", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onDrag =>
      getStream(this, "drag", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onDragend =>
      getStream(this, "dragend", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onDragstart =>
      getStream(this, "dragstart", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onMousedown =>
      getStream(this, "mousedown", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onMouseout =>
      getStream(this, "mouseout", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onMouseover =>
      getStream(this, "mouseover", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onMouseup =>
      getStream(this, "mouseup", (JsObject o) => new MouseEvent.created(o));

  @override
  Stream<MouseEvent> get onRightclick =>
      getStream(this, "rightclick", (JsObject o) => new MouseEvent.created(o));
}

@GeneratedFrom(_MarkerWithLabelOptions)
@anonymous
class MarkerWithLabelOptions extends MarkerOptions {
  MarkerWithLabelOptions() : this.created(JsObject(context['Object']));
  MarkerWithLabelOptions.created(JsObject o) : super.created(o);

  set crossImage(String _crossImage) {
    asJsObject(this)['crossImage'] = _crossImage;
  }

  String get crossImage => asJsObject(this)['crossImage'];
  set handCursor(String _handCursor) {
    asJsObject(this)['handCursor'] = _handCursor;
  }

  String get handCursor => asJsObject(this)['handCursor'];
  set labelAnchor(Point _labelAnchor) {
    asJsObject(this)['labelAnchor'] = __codec1.encode(_labelAnchor);
  }

  Point get labelAnchor => __codec1.decode(asJsObject(this)['labelAnchor']);
  set labelClass(String _labelClass) {
    asJsObject(this)['labelClass'] = _labelClass;
  }

  String get labelClass => asJsObject(this)['labelClass'];
  set labelContent(String _labelContent) {
    asJsObject(this)['labelContent'] = _labelContent;
  }

  String get labelContent => asJsObject(this)['labelContent'];
  set labelInBackground(bool _labelInBackground) {
    asJsObject(this)['labelInBackground'] = _labelInBackground;
  }

  bool get labelInBackground => asJsObject(this)['labelInBackground'];
  set labelStyle(String _labelStyle) {
    asJsObject(this)['labelStyle'] = _labelStyle;
  }

  String get labelStyle => asJsObject(this)['labelStyle'];
  set labelVisible(bool _labelVisible) {
    asJsObject(this)['labelVisible'] = _labelVisible;
  }

  bool get labelVisible => asJsObject(this)['labelVisible'];
  set raiseOnDrag(bool _raiseOnDrag) {
    asJsObject(this)['raiseOnDrag'] = _raiseOnDrag;
  }

  bool get raiseOnDrag => asJsObject(this)['raiseOnDrag'];
}

/// codec for google_maps_markerwithlabel.src.MarkerWithLabelOptions
final __codec0 = JsInterfaceCodec<MarkerWithLabelOptions>(
    (o) => MarkerWithLabelOptions.created(o));

/// codec for google_maps.src.Point
final __codec1 = JsInterfaceCodec<Point>((o) => Point.created(o));
