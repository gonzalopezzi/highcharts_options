part of highcharts;

@JS()
@anonymous
class GaugeSeries extends Series {
  external factory GaugeSeries ();
  /** 
   * <p>Enable or disable the initial animation when a series is displayed. The animation can also be set as a configuration object. Please note that this option only applies to the initial animation of the series itself. For other animations, see <a href="#chart.animation">chart.animation</a> and the animation parameter under the API methods.		The following properties are supported:</p>
<dl>
  <dt>duration</dt>
  <dd>The duration of the animation in milliseconds.</dd>
<dt>easing</dt>
<dd>A string reference to an easing function set on the <code>Math</code> object. See <a href="http://jsfiddle.net/gh/get/jquery/1.7.2/highcharts/highcharts/tree/master/samples/highcharts/plotoptions/series-animation-easing/">the easing demo</a>.</dd>
</dl>
<p>
Due to poor performance, animation is disabled in old IE browsers for column charts and polar charts.</p> 
   */
  external bool get animation;
  external void set animation (bool a_animation);
  /** 
   * For some series, there is a limit that shuts down initial animation by default when the total number of points in the chart is too high. For example, for a column chart and its derivatives, animation doesn't run if there is more than 250 points totally. To disable this cap, set <code>animationLimit</code> to <code>Infinity</code>. 
   */
  external num get animationLimit;
  external void set animationLimit (num a_animationLimit);
  /** 
   * The main color or the series. In line type series it applies to the line and the point markers unless otherwise specified. In bar type series it applies to the bars unless a color is specified per point. The default value is pulled from the  <code>options.colors</code> array. 
   */
  external dynamic get color;
  external void set color (dynamic a_color);
  /** 
   * You can set the cursor to "pointer" if you have click events attached to  the series, to signal to the user that the points and lines can be clicked. 
   */
  external String get cursor;
  external void set cursor (String a_cursor);
  /** 
   * An array of data points for the series. For the <code>gauge</code> series type, points can be given in the following ways:
 <ol>
 	<li>An array of numerical values. In this case, the numerical values will 
 	be interpreted as <code>y</code> options.  Example:
<pre>data: [0, 5, 3, 5]</pre>
 	</li>
 <li><p>An array of objects with named values. The objects are
 	point configuration objects as seen below. If the total number of data points exceeds the series' <a href='#series<gauge>.turboThreshold'>turboThreshold</a>, this option is not available.</p>

<pre>data: [{
    y: 6,
    name: "Point2",
    color: "#00FF00"
}, {
    y: 8,
    name: "Point1",
    color: "#FF00FF"
}]</pre></li>
 </ol><p>The typical gauge only contains a single data value.</p> 
   */
  external dynamic get data;
  external void set data (dynamic a_data);
  /** 
   * Data labels for the gauge. For gauges, the data labels are enabled by default and shown in a bordered box below the point. 
   */
  external dynamic get dataLabels;
  external void set dataLabels (dynamic a_dataLabels);
  /** 
   * Options for the dial or arrow pointer of the gauge. 
   */
  external dynamic get dial;
  external void set dial (dynamic a_dial);
  /** 
   * Enable or disable the mouse tracking for a specific series. This includes point tooltips and click events on graphs and points. For large datasets it improves performance. 
   */
  external bool get enableMouseTracking;
  external void set enableMouseTracking (bool a_enableMouseTracking);
  /** 
   * null 
   */
  external GaugeSeriesEvents get events;
  external void set events (GaugeSeriesEvents a_events);
  /** 
   * Whether to use the Y extremes of the total chart width or only the zoomed area when zooming in on parts of the X axis. By default, the Y axis adjusts to the min and max of the visible data. Cartesian series only. 
   */
  external bool get getExtremesFromAll;
  external void set getExtremesFromAll (bool a_getExtremesFromAll);
  /** 
   * An id for the series. This can be used after render time to get a pointer to the series object through <code>chart.get()</code>. 
   */
  external String get id;
  external void set id (String a_id);
  /** 
   * The index of the series in the chart, affecting the internal index in the <code>chart.series</code> array, the visible Z index as well as the order in the legend. 
   */
  external num get index;
  external void set index (num a_index);
  /** 
   * An array specifying which option maps to which key in the data point array. This makes it convenient to work with unstructured data arrays from different sources. 
   */
  external List<String> get keys;
  external void set keys (List<String> a_keys);
  /** 
   * The sequential index of the series in the legend.  <div class="demo">Try it:  	<a href="http://jsfiddle.net/gh/get/jquery/1.7.1/highslide-software/highcharts.com/tree/master/samples/highcharts/series/legendindex/" target="_blank">Legend in opposite order</a> </div>. 
   */
  external num get legendIndex;
  external void set legendIndex (num a_legendIndex);
  /** 
   * The <a href="#series.id">id</a> of another series to link to. Additionally, the value can be ":previous" to link to the previous series. When two series are linked, only the first one appears in the legend. Toggling the visibility of this also toggles the linked series. 
   */
  external String get linkedTo;
  external void set linkedTo (String a_linkedTo);
  /** 
   * The name of the series as shown in the legend, tooltip etc. 
   */
  external String get name;
  external void set name (String a_name);
  /** 
   * The color for the parts of the graph or points that are below the <a href="#plotOptions.series.threshold">threshold</a>. 
   */
  external dynamic get negativeColor;
  external void set negativeColor (dynamic a_negativeColor);
  /** 
   * Allow the dial to overshoot the end of the perimeter axis by this many degrees. Say if the gauge axis goes from 0 to 60, a value of 100, or 1000, will show 5 degrees beyond the end of the axis. 
   */
  external num get overshoot;
  external void set overshoot (num a_overshoot);
  /** 
   * Options for the pivot or the center point of the gauge. 
   */
  external dynamic get pivot;
  external void set pivot (dynamic a_pivot);
  /** 
   * Properties for each single point 
   */
  external GaugeSeriesPoint get point;
  external void set point (GaugeSeriesPoint a_point);
  /** 
   * Whether to select the series initially. If <code>showCheckbox</code> is true, the checkbox next to the series name will be checked for a selected series. 
   */
  external bool get selected;
  external void set selected (bool a_selected);
  /** 
   * If true, a checkbox is displayed next to the legend item to allow selecting the series. The state of the checkbox is determined by the <code>selected</code> option. 
   */
  external bool get showCheckbox;
  external void set showCheckbox (bool a_showCheckbox);
  /** 
   * Whether to display this particular series or series type in the legend. Defaults to false for gauge series. 
   */
  external bool get showInLegend;
  external void set showInLegend (bool a_showInLegend);
  /** 
   * Sticky tracking of mouse events. When true, the <code>mouseOut</code> event on a series isn't triggered until the mouse moves over another series, or out of the plot area. When false, the <code>mouseOut</code> event on a series is triggered when the mouse leaves the area around the series' graph or markers. This also implies the tooltip. When <code>stickyTracking</code> is false and <code>tooltip.shared</code> is false, the  tooltip will be hidden when moving the mouse between series. Defaults to true for line and area type series, but to false for columns, pies etc. 
   */
  external bool get stickyTracking;
  external void set stickyTracking (bool a_stickyTracking);
  /** 
   * The threshold, also called zero level or base level. For line type series this is only used in conjunction with <a href="#plotOptions.series.negativeColor">negativeColor</a>. 
   */
  external num get threshold;
  external void set threshold (num a_threshold);
  /** 
   * A configuration object for the tooltip rendering of each single series. Properties are inherited from <a href="#tooltip">tooltip</a>, but only the following properties can be defined on a series level. 
   */
  external dynamic get tooltip;
  external void set tooltip (dynamic a_tooltip);
  /** 
   * The type of series. Can be one of <code>area</code>, <code>areaspline</code>, <code>bar</code>, <code>column</code>, <code>line</code>, <code>pie</code>, <code>scatter</code> or <code>spline</code>. From version 2.3, <code>arearange</code>, <code>areasplinerange</code> and <code>columnrange</code> are supported with the highcharts-more.js component. 
   */
  external String get type;
  external void set type (String a_type);
  /** 
   * Set the initial visibility of the series. 
   */
  external bool get visible;
  external void set visible (bool a_visible);
  /** 
   * When this option is <code>true</code>, the dial will wrap around the axes. For instance, in a full-range gauge going from 0 to 360, a value of 400 will point to 40. When <code>wrap</code> is <code>false</code>, the dial stops at 360. 
   */
  external bool get wrap;
  external void set wrap (bool a_wrap);
  /** 
   * When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to either the <a href="#xAxis.id">axis id</a> or the index of the axis in the xAxis array, with 0 being the first. 
   */
  external dynamic get xAxis;
  external void set xAxis (dynamic a_xAxis);
  /** 
   * When using dual or multiple y axes, this number defines which yAxis the particular series is connected to. It refers to either the <a href="#yAxis.id">axis id</a> or the index of the axis in the yAxis array, with 0 being the first. 
   */
  external dynamic get yAxis;
  external void set yAxis (dynamic a_yAxis);
  /** 
   * Define the visual z index of the series. 
   */
  external num get zIndex;
  external void set zIndex (num a_zIndex);
  /** 
   * Defines the Axis on which the zones are applied. 
   */
  external String get zoneAxis;
  external void set zoneAxis (String a_zoneAxis);
  /** 
   * An array defining zones within a series. Zones can be applied to the X axis, Y axis or Z axis for bubbles, according to the <code>zoneAxis</code> option. 
   */
  external List get zones;
  external void set zones (List a_zones);
}
@JS()
@anonymous
class GaugeSeriesData {
  external factory GaugeSeriesData ();
  /** 
   * Individual color for the point. By default the color is pulled from the global <code>colors</code> array. 
   */
  external dynamic get color;
  external void set color (dynamic a_color);
  /** 
   * Individual data label for each point. The options are the same as the ones for  <a class="internal" href="#plotOptions.series.dataLabels">plotOptions.series.dataLabels</a> 
   */
  external dynamic get dataLabels;
  external void set dataLabels (dynamic a_dataLabels);
  /** 
   * Individual point events 
   */
  external dynamic get events;
  external void set events (dynamic a_events);
  /** 
   * An id for the point. This can be used after render time to get a pointer to the point object through <code>chart.get()</code>. 
   */
  external String get id;
  external void set id (String a_id);
  /** 
   * The rank for this point's data label in case of collision. If two data labels are about to overlap, only the one with the highest <code>labelrank</code> will be drawn. 
   */
  external num get labelrank;
  external void set labelrank (num a_labelrank);
  /** 
   * <p>The name of the point as shown in the legend, tooltip, dataLabel etc.</p>

<p>If the <a href="#xAxis.type">xAxis.type</a> is set to <code>category</code>, and no <a href="#xAxis.categories">categories</a> option exists, the category will be pulled from the <code>point.name</code> of the last series defined. For multiple series, best practice however is to define <code>xAxis.categories</code>.</p> 
   */
  external String get name;
  external void set name (String a_name);
  /** 
   * Whether the data point is selected initially. 
   */
  external bool get selected;
  external void set selected (bool a_selected);
  /** 
   * The y value of the point. 
   */
  external num get y;
  external void set y (num a_y);
}
@JS()
@anonymous
class GaugeSeriesDataEvents {
  external factory GaugeSeriesDataEvents ();
  /** 
   * <p></p>Fires when a point is clicked. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.<p></p> <p>If the <code>series.allowPointSelect</code> option is true, the default action for the point's click event is to toggle the point's select state. Returning <code>false</code> cancels this action.</p> 
   */
  external Function get click;
  external void set click (Function a_click);
  /** 
   * Fires when the mouse leaves the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. 
   */
  external Function get mouseOut;
  external void set mouseOut (Function a_mouseOut);
  /** 
   * Fires when the mouse enters the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. 
   */
  external Function get mouseOver;
  external void set mouseOver (Function a_mouseOver);
  /** 
   * Fires when the point is removed using the <code>.remove()</code> method. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get remove;
  external void set remove (Function a_remove);
  /** 
   * Fires when the point is selected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get select;
  external void set select (Function a_select);
  /** 
   * Fires when the point is unselected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get unselect;
  external void set unselect (Function a_unselect);
  /** 
   * Fires when the point is updated programmatically through the <code>.update()</code> method. One parameter, <code>event</code>, is passed to the function. The  new point options can be accessed through <code>event.options</code>. Returning <code>false</code> cancels the operation. 
   */
  external Function get update;
  external void set update (Function a_update);
}
@JS()
@anonymous
class GaugeSeriesDataLabels {
  external factory GaugeSeriesDataLabels ();
  /** 
   * The alignment of the data label compared to the point.  If <code>right</code>, the right side of the label should be touching the point. For points with an extent, like columns, the alignments also dictates how to align it inside the box, as given with the <a href="#plotOptions.column.dataLabels.inside">inside</a> option. Can be one of "left", "center" or "right". 
   */
  external String get align;
  external void set align (String a_align);
  /** 
   * Whether to allow data labels to overlap. To make the labels less sensitive for overlapping, the <a href="#plotOptions.series.dataLabels.padding">dataLabels.padding</a> can be set to 0. 
   */
  external bool get allowOverlap;
  external void set allowOverlap (bool a_allowOverlap);
  /** 
   * The background color or gradient for the data label. Defaults to <code>undefined</code>. 
   */
  external dynamic get backgroundColor;
  external void set backgroundColor (dynamic a_backgroundColor);
  /** 
   * The border color for the data label. 
   */
  external dynamic get borderColor;
  external void set borderColor (dynamic a_borderColor);
  /** 
   * The border radius in pixels for the gauge's data label. 
   */
  external num get borderRadius;
  external void set borderRadius (num a_borderRadius);
  /** 
   * The border width in pixels for the gauge data label. 
   */
  external num get borderWidth;
  external void set borderWidth (num a_borderWidth);
  /** 
   * The text color for the data labels. Defaults to <code>null</code>. 
   */
  external dynamic get color;
  external void set color (dynamic a_color);
  /** 
   * Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the <a href="#plotOptions.series.dataLabels.overflow">overflow</a> option. 
   */
  external bool get crop;
  external void set crop (bool a_crop);
  /** 
   * Whether to defer displaying the data labels until the initial series animation has finished. 
   */
  external bool get defer;
  external void set defer (bool a_defer);
  /** 
   * Enable or disable the data labels. 
   */
  external bool get enabled;
  external void set enabled (bool a_enabled);
  /** 
   * A <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting">format string</a> for the data label. Available variables are the same as for <code>formatter</code>. 
   */
  external String get format;
  external void set format (String a_format);
  /** 
   * Callback JavaScript function to format the data label. Note that if a <code>format</code> is defined, the format takes precedence and the formatter is ignored. Available data are:
<table>
<tbody><tr>
  <td><code>this.percentage</code></td>
  <td>Stacked series and pies only. The point's percentage of the total.</td>
</tr>
<tr>
  <td><code>this.point</code></td>
  <td>The point object. The point name, if defined, is available 
through <code>this.point.name</code>.</td>
</tr>
<tr>
  <td><code>this.series</code>:</td>
  <td>The series object. The series name is available 
through <code>this.series.name</code>.</td>
</tr>
<tr>
  <td><code>this.total</code></td>
  <td>Stacked series only. The total value at this point's x value.</td>
</tr>				
<tr>
  <td><code>this.x</code>:</td>
  <td>The x value.</td>
</tr>
<tr>
  <td><code>this.y</code>:</td>
  <td>The y value.</td>
</tr>
</tbody></table> 
   */
  external Function get formatter;
  external void set formatter (Function a_formatter);
  /** 
   * For points with an extent, like columns, whether to align the data label inside the box or to the actual value point. Defaults to <code>false</code> in most cases, <code>true</code> in stacked columns. 
   */
  external bool get inside;
  external void set inside (bool a_inside);
  /** 
   * How to handle data labels that flow outside the plot area. The default is <code>justify</code>, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set <code>crop</code> to <code>false</code> and <code>overflow</code> to <code>"none"</code>. 
   */
  external String get overflow;
  external void set overflow (String a_overflow);
  /** 
   * When either the <code>borderWidth</code> or the <code>backgroundColor</code> is set, this		is the padding within the box. 
   */
  external num get padding;
  external void set padding (num a_padding);
  /** 
   * Whether to reserve space for the labels. This can be turned off when for example the labels are rendered inside the plot area instead of outside. 
   */
  external bool get reserveSpace;
  external void set reserveSpace (bool a_reserveSpace);
  /** 
   * Text rotation in degrees. Note that due to a more complex structure, backgrounds, borders and padding will be lost on a rotated data label. 
   */
  external num get rotation;
  external void set rotation (num a_rotation);
  /** 
   * The shadow of the box. Works best with <code>borderWidth</code> or <code>backgroundColor</code>. Since 2.3 the shadow can be an object configuration containing <code>color</code>, <code>offsetX</code>, <code>offsetY</code>, <code>opacity</code> and <code>width</code>. 
   */
  external dynamic get shadow;
  external void set shadow (dynamic a_shadow);
  /** 
   * The name of a symbol to use for the border around the label. Symbols are predefined functions on the Renderer object. 
   */
  external String get shape;
  external void set shape (String a_shape);
  /** 
   * Styles for the label. 
   */
  external dynamic get style;
  external void set style (dynamic a_style);
  /** 
   * Whether to <a href="http://www.highcharts.com/docs/chart-concepts/labels-and-string-formatting#html">use HTML</a> to render the labels. 
   */
  external bool get useHTML;
  external void set useHTML (bool a_useHTML);
  /** 
   * The vertical alignment of the data label. 
   */
  external String get verticalAlign;
  external void set verticalAlign (String a_verticalAlign);
  /** 
   * The x position offset of the label relative to the point.  
   */
  external num get x;
  external void set x (num a_x);
  /** 
   * The y position offset of the label relative to the center of the gauge.  
   */
  external num get y;
  external void set y (num a_y);
  /** 
   * The Z index of the data labels. A value of 2 display them behind the dial. 
   */
  external num get zIndex;
  external void set zIndex (num a_zIndex);
}
@JS()
@anonymous
class GaugeSeriesDial {
  external factory GaugeSeriesDial ();
  /** 
   * The background or fill color of the gauge's dial.  
   */
  external dynamic get backgroundColor;
  external void set backgroundColor (dynamic a_backgroundColor);
  /** 
   * The length of the dial's base part, relative to the total radius or length of the dial.  
   */
  external String get baseLength;
  external void set baseLength (String a_baseLength);
  /** 
   * The pixel width of the base of the gauge dial. The base is the part closest to the pivot, defined by baseLength.  
   */
  external num get baseWidth;
  external void set baseWidth (num a_baseWidth);
  /** 
   * The border color or stroke of the gauge's dial. By default, the borderWidth is 0, so this must be set in addition to a custom border color. 
   */
  external dynamic get borderColor;
  external void set borderColor (dynamic a_borderColor);
  /** 
   * The width of the gauge dial border in pixels. 
   */
  external num get borderWidth;
  external void set borderWidth (num a_borderWidth);
  /** 
   * The radius or length of the dial, in percentages relative to the radius of the gauge itself. 
   */
  external String get radius;
  external void set radius (String a_radius);
  /** 
   * The length of the dial's rear end, the part that extends out on the other side of the pivot. Relative to the dial's length.  
   */
  external String get rearLength;
  external void set rearLength (String a_rearLength);
  /** 
   * The width of the top of the dial, closest to the perimeter. The pivot narrows in from the base to the top. 
   */
  external num get topWidth;
  external void set topWidth (num a_topWidth);
}
@JS()
@anonymous
class GaugeSeriesEvents {
  external factory GaugeSeriesEvents ();
  /** 
   * Fires after the series has finished its initial animation, or in case animation is disabled, immediately as the series is displayed. 
   */
  external Function get afterAnimate;
  external void set afterAnimate (Function a_afterAnimate);
  /** 
   * Fires when the checkbox next to the series' name in the legend is clicked. One parameter, <code>event</code>, is passed to the function. The state of the checkbox is found by <code>event.checked</code>. The checked item is found by <code>event.item</code>. Return <code>false</code> to prevent the default action which is to toggle the select state of the series. 
   */
  external Function get checkboxClick;
  external void set checkboxClick (Function a_checkboxClick);
  /** 
   * Fires when the series is clicked. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. Additionally, <code>event.point</code> holds a pointer to the nearest point on the graph. 
   */
  external Function get click;
  external void set click (Function a_click);
  /** 
   * Fires when the series is hidden after chart generation time, either by clicking the legend item or by calling <code>.hide()</code>. 
   */
  external Function get hide;
  external void set hide (Function a_hide);
  /** 
   * Fires when the legend item belonging to the series is clicked. One parameter, <code>event</code>, is passed to the function. The default action is to toggle the visibility of the series. This can be prevented by returning <code>false</code> or calling <code>event.preventDefault()</code>. 
   */
  external Function get legendItemClick;
  external void set legendItemClick (Function a_legendItemClick);
  /** 
   * Fires when the mouse leaves the graph. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. If the  <a class="internal" href="#plotOptions.series">stickyTracking</a> option is true, <code>mouseOut</code> doesn't happen before the mouse enters another graph or leaves the plot area. 
   */
  external Function get mouseOut;
  external void set mouseOut (Function a_mouseOut);
  /** 
   * Fires when the mouse enters the graph. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. 
   */
  external Function get mouseOver;
  external void set mouseOver (Function a_mouseOver);
  /** 
   * Fires when the series is shown after chart generation time, either by clicking the legend item or by calling <code>.show()</code>. 
   */
  external Function get show;
  external void set show (Function a_show);
}
@JS()
@anonymous
class GaugeSeriesPivot {
  external factory GaugeSeriesPivot ();
  /** 
   * The background color or fill of the pivot. 
   */
  external dynamic get backgroundColor;
  external void set backgroundColor (dynamic a_backgroundColor);
  /** 
   * The border or stroke color of the pivot. In able to change this, the borderWidth must also be set to something other than the default 0. 
   */
  external dynamic get borderColor;
  external void set borderColor (dynamic a_borderColor);
  /** 
   * The border or stroke width of the pivot. 
   */
  external num get borderWidth;
  external void set borderWidth (num a_borderWidth);
  /** 
   * The pixel radius of the pivot. 
   */
  external num get radius;
  external void set radius (num a_radius);
}
@JS()
@anonymous
class GaugeSeriesPoint {
  external factory GaugeSeriesPoint ();
  /** 
   * Events for each single point 
   */
  external GaugeSeriesPointEvents get events;
  external void set events (GaugeSeriesPointEvents a_events);
}
@JS()
@anonymous
class GaugeSeriesPointEvents {
  external factory GaugeSeriesPointEvents ();
  /** 
   * <p></p>Fires when a point is clicked. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts.<p></p> <p>If the <code>series.allowPointSelect</code> option is true, the default action for the point's click event is to toggle the point's select state. Returning <code>false</code> cancels this action.</p> 
   */
  external Function get click;
  external void set click (Function a_click);
  /** 
   * Fires when the mouse leaves the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. 
   */
  external Function get mouseOut;
  external void set mouseOut (Function a_mouseOut);
  /** 
   * Fires when the mouse enters the area close to the point. One parameter, <code>event</code>, is passed to the function. This contains common event information based on jQuery or MooTools depending on  which library is used as the base for Highcharts. 
   */
  external Function get mouseOver;
  external void set mouseOver (Function a_mouseOver);
  /** 
   * Fires when the point is removed using the <code>.remove()</code> method. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get remove;
  external void set remove (Function a_remove);
  /** 
   * Fires when the point is selected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get select;
  external void set select (Function a_select);
  /** 
   * Fires when the point is unselected either programmatically or following a click on the point. One parameter, <code>event</code>, is passed to the function. Returning <code>false</code> cancels the operation. 
   */
  external Function get unselect;
  external void set unselect (Function a_unselect);
  /** 
   * Fires when the point is updated programmatically through the <code>.update()</code> method. One parameter, <code>event</code>, is passed to the function. The  new point options can be accessed through <code>event.options</code>. Returning <code>false</code> cancels the operation. 
   */
  external Function get update;
  external void set update (Function a_update);
}
@JS()
@anonymous
class GaugeSeriesTooltip {
  external factory GaugeSeriesTooltip ();
  /** 
   * <p>For series on a datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the replacement codes, see <a href="#Highcharts.dateFormat">dateFormat</a>.</p>

<p>Defaults to:
<pre>{
    millisecond:"%A, %b %e, %H:%M:%S.%L",
    second:"%A, %b %e, %H:%M:%S",
    minute:"%A, %b %e, %H:%M",
    hour:"%A, %b %e, %H:%M",
    day:"%A, %b %e, %Y",
    week:"Week from %A, %b %e, %Y",
    month:"%B %Y",
    year:"%Y"
}</pre>
</p> 
   */
  external dynamic get dateTimeLabelFormats;
  external void set dateTimeLabelFormats (dynamic a_dateTimeLabelFormats);
  /** 
   * <p>Whether the tooltip should follow the mouse as it moves across columns, pie slices and other point types with an extent. By default it behaves this way for scatter, bubble and pie series by override in the <code>plotOptions</code> for those series types. </p>
<p>For touch moves to behave the same way, <a href="#tooltip.followTouchMove">followTouchMove</a> must be <code>true</code> also.</p> 
   */
  external bool get followPointer;
  external void set followPointer (bool a_followPointer);
  /** 
   * Whether the tooltip should follow the finger as it moves on a touch device. If <a href="#chart.zoomType">chart.zoomType</a> is set, it will override <code>followTouchMove</code>. 
   */
  external bool get followTouchMove;
  external void set followTouchMove (bool a_followTouchMove);
  /** 
   * A string to append to the tooltip format. 
   */
  external String get footerFormat;
  external void set footerFormat (String a_footerFormat);
  /** 
   * <p>The HTML of the tooltip header line. Variables are enclosed by curly brackets. Available variables			are <code>point.key</code>, <code>series.name</code>, <code>series.color</code> and other members from the <code>point</code> and <code>series</code> objects. The <code>point.key</code> variable contains the category name, x value or datetime string depending on the type of axis. For datetime axes, the <code>point.key</code> date format can be set using tooltip.xDateFormat.</p> 
<p>Defaults to <code>&lt;span style="font-size: 10px"&gt;{point.key}&lt;/span&gt;&lt;br/&gt;</code></p> 
   */
  external String get headerFormat;
  external void set headerFormat (String a_headerFormat);
  /** 
   * The number of milliseconds to wait until the tooltip is hidden when mouse out from a point or chart.  
   */
  external num get hideDelay;
  external void set hideDelay (num a_hideDelay);
  /** 
   * <p>The HTML of the point's line in the tooltip. Variables are enclosed by curly brackets. Available variables are point.x, point.y, series.name and series.color and other properties on the same form. Furthermore,  point.y can be extended by the <code>tooltip.valuePrefix</code> and <code>tooltip.valueSuffix</code> variables. This can also be overridden for each series, which makes it a good hook for displaying units.</p> 
   */
  external String get pointFormat;
  external void set pointFormat (String a_pointFormat);
  /** 
   * A callback function for formatting the HTML output for a single point in the tooltip. Like the <code>pointFormat</code> string, but with more flexibility. 
   */
  external Function get pointFormatter;
  external void set pointFormatter (Function a_pointFormatter);
  /** 
   * How many decimals to show in each series' y value. This is overridable in each series' tooltip options object. The default is to preserve all decimals. 
   */
  external num get valueDecimals;
  external void set valueDecimals (num a_valueDecimals);
  /** 
   * A string to prepend to each series' y value. Overridable in each series' tooltip options object. 
   */
  external String get valuePrefix;
  external void set valuePrefix (String a_valuePrefix);
  /** 
   * A string to append to each series' y value. Overridable in each series' tooltip options object. 
   */
  external String get valueSuffix;
  external void set valueSuffix (String a_valueSuffix);
  /** 
   * The format for the date in the tooltip header if the X axis is a datetime axis. The default is a best guess based on the smallest distance between points in the chart. 
   */
  external String get xDateFormat;
  external void set xDateFormat (String a_xDateFormat);
}
@JS()
@anonymous
class GaugeSeriesZones {
  external factory GaugeSeriesZones ();
  /** 
   * Defines the color of the series. 
   */
  external dynamic get color;
  external void set color (dynamic a_color);
  /** 
   * A name for the dash style to use for the graph. 
   */
  external String get dashStyle;
  external void set dashStyle (String a_dashStyle);
  /** 
   * Defines the fill color for the series (in area type series) 
   */
  external dynamic get fillColor;
  external void set fillColor (dynamic a_fillColor);
  /** 
   * The value up to where the zone extends, if undefined the zones stretches to the last value in the series. 
   */
  external num get value;
  external void set value (num a_value);
}
