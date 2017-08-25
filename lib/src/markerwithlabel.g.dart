// GENERATED CODE - DO NOT MODIFY BY HAND

part of google_maps_markerwithlabel.src;

// **************************************************************************
// Generator: JsInterfaceGenerator
// **************************************************************************

/// codec for google_maps_markerwithlabel.src.MarkerWithLabelOptions
final __codec2 = new JsInterfaceCodec<MarkerWithLabelOptions>(
    (o) => new MarkerWithLabelOptions.created(o));

/// codec for google_maps.src.Point
final __codec1 = new JsInterfaceCodec<Point>((o) => new Point.created(o));

/// codec for null.dynamic
final __codec0 = new DynamicCodec();

@GeneratedFrom(_MarkerWithLabel)
class MarkerWithLabel extends Marker {
  MarkerWithLabel.created(JsObject o) : super.created(o);
  MarkerWithLabel([MarkerWithLabelOptions opts])
      : this.created(
            new JsObject(context['MarkerWithLabel'], [__codec2.encode(opts)]));

  void set labelContent(String content) => _setLabelContent(content);
  void _setLabelContent(String content) {
    asJsObject(this).callMethod('setLabelContent', [content]);
  }

  @override
  Stream<MouseEvent> get onClick => getStream(this, #onClick, "click");

  @override
  Stream<MouseEvent> get onDblclick => getStream(this, #onDblclick, "dblclick");

  @override
  Stream<MouseEvent> get onDrag => getStream(this, #onDrag, "drag");

  @override
  Stream<MouseEvent> get onDragend => getStream(this, #onDragend, "dragend");

  @override
  Stream<MouseEvent> get onDragstart =>
      getStream(this, #onDragstart, "dragstart");

  @override
  Stream<MouseEvent> get onMousedown =>
      getStream(this, #onMousedown, "mousedown");

  @override
  Stream<MouseEvent> get onMouseout => getStream(this, #onMouseout, "mouseout");

  @override
  Stream<MouseEvent> get onMouseover =>
      getStream(this, #onMouseover, "mouseover");

  @override
  Stream<MouseEvent> get onMouseup => getStream(this, #onMouseup, "mouseup");

  @override
  Stream<MouseEvent> get onRightclick =>
      getStream(this, #onRightclick, "rightclick");
}

@GeneratedFrom(_MarkerWithLabelOptions)
@anonymous
class MarkerWithLabelOptions extends MarkerOptions {
  MarkerWithLabelOptions.created(JsObject o) : super.created(o);
  MarkerWithLabelOptions() : this.created(new JsObject(context['Object']));

  void set crossImage(String _crossImage) {
    asJsObject(this)['crossImage'] = _crossImage;
  }

  String get crossImage => asJsObject(this)['crossImage'];
  void set handCursor(String _handCursor) {
    asJsObject(this)['handCursor'] = _handCursor;
  }

  String get handCursor => asJsObject(this)['handCursor'];
  void set labelAnchor(Point _labelAnchor) {
    asJsObject(this)['labelAnchor'] = __codec1.encode(_labelAnchor);
  }

  Point get labelAnchor => __codec1.decode(asJsObject(this)['labelAnchor']);
  void set labelClass(String _labelClass) {
    asJsObject(this)['labelClass'] = _labelClass;
  }

  String get labelClass => asJsObject(this)['labelClass'];
  void set labelContent(String _labelContent) {
    asJsObject(this)['labelContent'] = _labelContent;
  }

  String get labelContent => asJsObject(this)['labelContent'];
  void set labelInBackground(bool _labelInBackground) {
    asJsObject(this)['labelInBackground'] = _labelInBackground;
  }

  bool get labelInBackground => asJsObject(this)['labelInBackground'];
  void set labelStyle(String _labelStyle) {
    asJsObject(this)['labelStyle'] = _labelStyle;
  }

  String get labelStyle => asJsObject(this)['labelStyle'];
  void set labelVisible(bool _labelVisible) {
    asJsObject(this)['labelVisible'] = _labelVisible;
  }

  bool get labelVisible => asJsObject(this)['labelVisible'];
  void set raiseOnDrag(bool _raiseOnDrag) {
    asJsObject(this)['raiseOnDrag'] = _raiseOnDrag;
  }

  bool get raiseOnDrag => asJsObject(this)['raiseOnDrag'];
}
