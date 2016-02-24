library highcharts.options;

import 'package:uuid/uuid.dart';
import 'dart:js';
import 'package:js/js.dart';
import 'dart:html';
 
abstract class ToMap {
  Map toMap ();
}

class OptionsObject {
  
  static Uuid uidGen = new Uuid();
  
  JsObject jsChart;

  void setJsChart (JsObject jsChart) {
    this.jsChart = jsChart; 
  }
}

@JS()
@anonymous
class HighChart extends OptionsObject {
  
  /**
   * Options regarding the chart area and plot area as well as general chart options.
   */
  external Chart get chart;
  external void set chart (Chart a_chart);
  
  /**
   * An array containing the default colors for the chart's series. When all colors are used, new colors are pulled from the start again. Defaults to:
   */
  external List<String> get colors;
  external void set colors (List<String> a_colors);
  
  /**
   * Highchart by default puts a credits label in the lower right corner of the chart. This can be changed using these options.
   */
  external Credits get credits;
  external void set credits (Credits a_credits);
  
  /**
   * Options for drill down, the concept of inspecting increasingly high resolution data through clicking on chart items like columns or pie slices.
   */
  external DrillDown get drilldown;
  external void set drilldown (DrillDown a_drilldown);
  
  /**
   * Options for the exporting module. For an overview on the matter, see the docs.
   */
  external Exporting get exporting;
  external void set exporting (Exporting a_exporting);
  
  /**
   * HTML labels that can be positioined anywhere in the chart area.
   */
  external Labels get labels;
  external void set labels (Labels a_labels);
  
  /**
   * The legend is a box containing a symbol and name for each series item or point item in the chart.
   */
  external Legend get legend;
  external void set legend (Legend a_legend);
  
  /**
   * The loading options control the appearance of the loading screen that covers the plot area on chart operations. This screen only appears after an explicit call to chart.showLoading(). It is a utility for developers to communicate to the end user that something is going on, for example while retrieving new data via an XHR connection. The "Loading..." text itself is not part of this configuration object, but part of the lang object.
   */
  external Loading get loading;
  external void set loading (Loading a_loading);
  
  /**
   * A collection of options for buttons and menus appearing in the exporting module.
   */
  external Navigation get navigation;
  external void set navigation (Navigation a_navigation);
  
  /**
   * Options for displaying a message like "No data to display". This feature requires the file no-data-to-display.js to be loaded in the page.
   */
  external JsObject get noData;
  external void set noData (JsObject a_noData);
  
  /**
   * Applies only to polar charts and angular gauges. This configuration object holds general options for the combined X and Y axes set. Each xAxis or yAxis can reference the pane by index.
   */
  external Pane get pane;
  external void set pane (Pane a_pane);
  
  /**
   * The plotOptions is a wrapper object for config objects for each series type. The config objects for each series can also be overridden for each series item as given in the series array.
   * Configuration options for the series are given in three levels. Options for all series in a chart are given in the plotOptions.series object. Then options for all series of a specific type are given in the plotOptions of that type, for example plotOptions.line. Next, options for one single series are given in the series array.
   */
  external PlotOptions get plotOptions;
  external void set plotOptions (PlotOptions a_plotOptions);
  
  /**
   * The actual series to append to the chart. In addition to the members listed below, any member of the plotOptions for that specific type of plot can be added to a series individually. For example, even though a general lineWidth is specified in plotOptions.series, an individual lineWidth can be specified for each series. 
   */
  external List<Series> get series;
  external void set series (List<Series> a_series);
  
  /**
   * The chart's subtitle
   */
  external Subtitle get subtitle;
  external void set subtitle (Subtitle a_subtitle);
  
  /**
   * The chart's title
   */
  external Title get title;
  external void set title (Title a_title);
  
  /**
   * Options for the tooltip that appears when the user hovers over a series or point.
   */
  external Tooltip get tooltip;
  external void set tooltip (Tooltip a_tooltip);
  
  /**
   * The X axis or category axis. Normally this is the horizontal axis, though if the chart is inverted this is the vertical axis. In case of multiple axes, the xAxis node is an array of configuration objects.
   */
  external XAxis get xAxis;
  external void set xAxis (XAxis a_xAxis);
  
  /**
   * In case of multiple axes, xAxes is an array of xAxis. If this property is set, xAxis will be ignored
   */
  external List<XAxis> get xAxes;
  external void set xAxes (List<XAxis> a_xAxes);
  
  /**
   * The Y axis or value axis. Normally this is the vertical axis, though if the chart is inverted this is the horiontal axis. 
   */
  external YAxis get yAxis;
  external void set yAxis (YAxis a_yAxis);
  
  /**
   * In case of multiple axes, yAxes is an array of yAxis. If this property is set, yAxis will be ignored
   */
  external List<YAxis> get yAxes;
  external void set yAxes (List<YAxis> a_yAxes);

  /* TODO: Ojo qué pasa aquí con los ejes xAxes vs xAxis
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'chart', this.chart);
    addMapValue(map, 'colors', this.colors);
    addMapValue(map, 'credits', this.credits);
    addMapValue(map, 'drilldown', this.drilldown);
    addMapValue(map, 'exporting', this.exporting);
    addMapValue(map, 'labels', this.labels);
    addMapValue(map, 'legend', this.legend);
    addMapValue(map, 'loading', this.loading);
    addMapValue(map, 'navigation', this.navigation);
    addMapValue(map, 'noData', this.noData);
    addMapValue(map, 'pane', this.pane);
    addMapValue(map, 'plotOptions', this.plotOptions);
    addMapValue(map, 'series', this.series);
    addMapValue(map, 'subtitle', this.subtitle);
    addMapValue(map, 'title', this.title);
    addMapValue(map, 'tooltip', this.tooltip);
    if (xAxes != null && xAxes.length > 0) {
      addMapValue(map, 'xAxis', this.xAxes);
    }
    else {
      addMapValue(map, 'xAxis', this.xAxis);
    }
    if (yAxes != null && yAxes.length > 0) {
      addMapValue(map, 'yAxis', this.yAxes);
    }
    else {
      addMapValue(map, 'yAxis', this.yAxis);
    }
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }*/

  /* TODO: ¿Esto para qué es?
  @override setJsChart (JsObject jsChart) {
    super.setJsChart(jsChart);
    setJsChartOptionsObject(chart, jsChart);
    setJsChartList(series, jsChart);
    setJsChartList(xAxes, jsChart);
    setJsChartOptionsObject(xAxis, jsChart);
    setJsChartList(yAxes, jsChart);
    setJsChartOptionsObject(yAxis, jsChart);
  }
  */
}

@JS()
@anonymous
class Labels extends OptionsObject {
  external List get items;
  external void set items (List items);

  external set style (JsObject  a_style);
  external JsObject get style;
}

@JS()
@anonymous
class Pane extends OptionsObject {
  /**
   * An object, or array of objects, for backgrounds. Sub options include backgroundColor (can be solid or gradient), shape (solid or arc), innerWidth, outerWidth, borderWidth, borderColor.
   */
  external List get background;
  external void set background (List a_background);
  /**
   * The center of a polar chart or angular gauge, given as an array of [x, y] positions. Positions can be given as integers that transform to pixels, or as percentages of the plot area size. Defaults to [50%, 50%].
   */
  external List get center;
  external void set center (List a_center);
  /**
   * The end angle of the polar X axis or gauge value axis, given in degrees where 0 is north. Defaults to startAngle + 360.
   */
  external num get endAngle;
  external void set endAngle (num a_endAngle);

  /**
   * The start angle of the polar X axis or gauge axis, given in degrees where 0 is north. Defaults to 0.
   */
  external num get startAngle;
  external void set startAngle (num a_startAngle);

}

@JS()
@anonymous
class Exporting extends OptionsObject {
  /**
   * Options for the export related buttons, print and export. In addition to the default buttons listed here, custom buttons can be added. See navigation.buttonOptions for general options.
   */
  external JsObject get buttons;
  external void set buttons (JsObject a_buttons);

  /**
   * Additional chart options to be merged into an exported chart. For example, the exported chart can be given a specific width and height, or a printer-friendly color scheme. Defaults to null.
   */
  external JsObject get chartOptions;
  external void set chartOptions (JsObject a_chartOptions);

  /**
   * Whether to enable the exporting module. Disabling the module will hide the context button, but API methods will still be available. Defaults to true.
   */
  external bool get enabled;
  external void set enabled (bool a_enabled);

  String _filename;
  /**
   * The filename, without extension, to use for the exported chart. Defaults to chart.
   */
  external String get filename;
  external void set filename (String a_filename);

  /**
   * An object containing additional attributes for the POST form that sends the SVG to the export server. For example, a target can be set to make sure the generated image is received in another frame, or a custom enctype or encoding can be set.
   */
  external JsObject get formAttributes;
  external void set formAttributes (JsObject formAttributes);

  /**
   * Defines the scale or zoom factor for the exported image compared to the on-screen display. While for instance a 600px wide chart may look good on a website, it will look bad in print. The default scale of 2 makes this chart export to a 1200px PNG or JPG. Defaults to 2.
   */
  external num get scale;
  external void set scale (num a_scale);

  /**
   * Analogous to sourceWidth
   */
  external int get sourceHeight;
  external void set sourceHeight (int a_sourceHeight);

  /**
   * The width of the original chart when exported, unless an explicit chart.width is set. The width exported raster image is then multiplied byscale.
   */
  external int get sourceWidth;
  external void set sourceWidth (int a_sourceWidth);

  /**
   * Default MIME type for exporting if chart.exportChart() is called without specifying a type option. Possible values areimage/png, image/jpeg, application/pdf and image/svg+xml. Defaults to image/png.
   */
  external String get type;
  external void set type (String a_type);

  /**
   * The URL for the server module converting the SVG string to an image format. By default this points to Highslide Software's free web service. Defaults to http://export.highcharts.com.
   */
  external String get url;
  external void set url (String a_url);

  /**
   * The pixel width of charts exported to PNG or JPG. As of Highcharts 3.0, the default pixel width is a function of the chart.width orexporting.sourceWidth and the exporting.scale. Defaults to undefined.
   */
  external int get width;
  external void set width (int a_width);

}

class DrillDown extends OptionsObject {
  /**
   * Additional styles to apply to the X axis label for a point that has drilldown data. By default it is underlined and blue to invite to interaction. Defaults to:
  activeAxisLabelStyle: {
          cursor: 'pointer',
          color: '#0d233a',
          fontWeight: 'bold',
          textDecoration: 'underline'                        
  }
   */
  external JsObject get activeAxisLabelStyle;
  external void set activeAxisLabelStyle (JsObject a_activeAxisLabelStyle);
  
  /**
   * Additional styles to apply to the data label of a point that has drilldown data. By default it is underlined and blue to invite to interaction. Defaults to:
  activeAxisLabelStyle: {
          cursor: 'pointer',
          color: '#0d233a',
          fontWeight: 'bold',
          textDecoration: 'underline'                        
  }
   */
  external JsObject get activeDataLabelStyle;
  external void set activeDataLabelStyle (JsObject a_activeDataLabelStyle);

  /**
   * Set the animation for all drilldown animations. Animation of a drilldown occurs when drilling between a column point and a column series, or a pie slice and a full pie series. Drilldown can still be used between series and points of different types, but animation will not occur.

  The animation can either be set as a boolean or a configuration object. If true, it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object, the following properties are supported:

  duration
  The duration of the animation in milliseconds.
  easing
  When using jQuery as the general framework, the easing can be set to linear or swing. More easing functions are available with the use of jQuery plug-ins, most notably the jQuery UI suite. See the jQuery docs. When using MooTools as the general framework, use the property name transition instead of easing.
   */
  external dynamic get animation;
  external void set animation (dynamic a_animation);

  /**
   * Options for the drill up button that appears when drilling down on a series. The text for the button is defined in lang.drillUpText.
   */
  external DrillUpButton get drillUpButton;
  external void set drillUpButton (DrillUpButton a_drillUpButton);

  /**
   * An array of series configurations for the drill down. Each series configuration uses the same syntax as the series option set. These drilldown series are hidden by default. The drilldown series is linked to the parent series' point by its id.
   */
  external List<JsObject> get series;
  external void set series (List<JsObject> a_series);
}

@JS()
@anonymous
class DrillUpButton extends OptionsObject {
  /**
   * Positioning options for the button within the relativeTo box. Available properties are x, y, align and verticalAlign.
   */
  external JsObject get position;
  external void set position (JsObject a_position);

  /**
   * What box to align the button to. Can be either ""plotBox"" or ""spacingBox"". Defaults to plotBox.
   */
  external String get relativeTo;
  external void set relativeTo (String a_relativeTo);

}

@JS()
@anonymous
class Navigation extends OptionsObject {
  /**
   * CSS styles for the hover state of the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML. Defaults to
  menuItemHoverStyle: {
          background: '#4572A5',
          color: '#FFFFFF'
  }
   */
  external JsObject get menuItemHoverStyle;
  external void set menuItemHoverStyle (JsObject a_menuItemHoverStyle);

  /**
   * CSS styles for the individual items within the popup menu appearing by default when the export icon is clicked. The menu items are rendered in HTML. Defaults to
  menuItemStyle: {
          padding: '0 5px',
          background: NONE,
          color: '#303030'
  }
   */
  external JsObject get menuItemStyle;
  external void set menuItemStyle (JsObject a_menuItemStyle);

  /**
   * CSS styles for the popup menu appearing by default when the export icon is clicked. This menu is rendered in HTML. Defaults to
   */
  external JsObject get menuStyle;
  external void set menuStyle (JsObject a_menuStyle);

}

@JS()
@anonymous
class Loading extends OptionsObject {
  /**
   * Description of the
  field
   */
  external int get hideDuration;
  external void set hideDuration (int a_hideDuration);

  /**
   * Description of the
  field
   */
  external JsObject get labelStyle;
  external void set labelStyle (JsObject a_labelStyle);

  /**
   * Description of the
  field
   */
  external int get showDuration;
  external void set showDuration (int a_showDuration);

  /**
   * Description of the
  field
   */
  external JsObject get style;
  external void set style (JsObject a_style);
}

@JS()
@anonymous
class Legend extends OptionsObject {
  /**
   * The horizontal alignment of the legend box within the chart area. Valid values are "left", "center" and "right". Defaults to center
   **/
  external String get align;
  external void set align (String a_align);
  
  /**
   * The background color of the legend, filling the rounded corner border.
   * */
  external String get backgroundColor;
  external void set backgroundColor (String a_backgroundColor);
  
  /**
   * The color of the drawn border around the legend. Defaults to #909090.
   */
  external String get borderColor;
  external void set borderColor (String a_borderColor);
  
  /**
   * The border corner radius of the legend. Defaults to 0.
   */
  external int get borderRadius;
  external void set borderRadius (int a_borderRadius);

  /**
   * The width of the drawn border around the legend. Defaults to 0.
   */
  external int get borderWidth;
  external void set borderWidth (int a_borderWidth);
  
  /**
   * Enable or disable the legend. Defaults to true.
   */
  external bool get enabled;
  external void set enabled (bool a_enabled);
  
  /**
   * When the legend is floating, the plot area ignores it and is allowed to be placed below it. Defaults to false.
   */
  external bool get floating;
  external void set floating (bool a_floating);
  
  /**
   * In a legend with horizontal layout, the itemDistance defines the pixel distance between each item. Defaults to 20.
   */
  external int get itemDistance;
  external void set itemDistance (int a_itemDistance);

  /**
   * CSS styles for each legend item when the corresponding series or point is hidden. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from style unless overridden here. Defaults to:
   *  itemHiddenStyle: {
   *     color: '#CCC'
   *  }
   */
  external JsObject get itemHiddenStyle;
  external void set itemHiddenStyle (JsObject a_itemHiddenStyle);
  
  /**
   * CSS styles for each legend item in hover mode. Only a subset of CSS is supported, notably those options related to text. Properties are inherited from style unless overridden here. Defaults to:
   *   itemHoverStyle: {
   *     color: '#000'
   *   }
   */
  external JsObject get itemHoverStyle;
  external void set itemHoverStyle (JsObject a_itemHoverStyle);
  
  /**
   * The pixel bottom margin for each legend item. Defaults to 0.
   */
  external int get itemMarginBottom;
  external void set itemMarginBottom (int a_itemMarginBottom);

  /**
   * The pixel top margin for each legend item. Defaults to 0.
   */
  external int get itemMarginTop;
  external void set itemMarginTop (int a_itemMarginTop);
  
  /**
   * CSS styles for each legend item. Only a subset of CSS is supported, notably those options related to text. Defaults to { "color": "#333333", "cursor": "pointer", "fontSize": "12px", "fontWeight": "bold" }.
   */
  external JsObject get itemStyle;
  external void set itemStyle (JsObject a_itemStyle);
  
  /**
   * The width for each legend item. This is useful in a horizontal layout with many items when you want the items to align vertically. .
   */
  external int get itemWidth;
  external void set itemWidth (int a_itemWidth);
  
  /**
   * A format string for each legend label. Available variables relates to properties on the series, or the point in case of pies. Defaults to {name}.
   */
  external String get labelFormat;
  external void set labelFormat (String a_labelFormat);

  /**
   * Callback function to format each of the series' labels. The this keyword refers to the series object, or the point object in case of pie charts. By default the series or point name is printed.
   */
  external Function get labelFormatter;
  external void set labelFormatter (Function a_labelFormatter);
  
  /**
   * The layout of the legend items. Can be one of "horizontal" or "vertical". Defaults to horizontal.
   */
  external String get layout;
  external void set layout (String a_layout);
  
  /**
   * Line height for the legend items. Deprecated as of 2.1. Instead, the line height for each item can be set using itemStyle.lineHeight, and the padding between items using itemMarginTop and itemMarginBottom. Defaults to 16.
   */
  external int get lineHeight;
  external void set lineHeight (int a_lineHeight);
  
  /**
   * If the plot area sized is calculated automatically and the legend is not floating, the legend margin is the space between the legend and the axis labels or plot area. Defaults to 15.
   */
  external int get margin;
  external void set margin (int a_margin);
  
  /**
   * Maximum pixel height for the legend. When the maximum height is extended, navigation will show.
  */
  external int get maxHeight;
  external void set maxHeight (int a_maxHeight);

  /**
   * Options for the paging or navigation appearing when the legend is overflown. When legend.useHTML is enabled, navigation is disabled.
  */
  external JsObject get navigation;
  external void set navigation (JsObject a_navigation);
  
  /**
   * The inner padding of the legend box. Defaults to 0;
   */
  external int get padding;
  external void set padding (int a_padding);
  
  /**
   * Whether to reverse the order of the legend items compared to the order of the series or points as defined in the configuration object. Defaults to false.
   */
  external bool get reversed;
  external void set reversed (bool a_reversed);
  
  /**
   * Whether to show the symbol on the right side of the text rather than the left side. This is common in Arabic and Hebraic. Defaults to false.
   */
  external bool get rtl;
  external void set rtl (bool a_rtl);

  /**
   * Whether to apply a drop shadow to the legend. A backgroundColor also needs to be applied for this to take effect. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  external dynamic get shadow;
  external void set shadow (dynamic a_shadow);
  
  /**
   * The pixel height of the symbol for series types that use a rectangle in the legend. Defaults to 12.
  */
  external int get symbolHeight;
  external void set symbolHeight (int a_symbolHeight);
  
  /**
   * The pixel padding between the legend item symbol and the legend item text. Defaults to 5.
   */
  external int get symbolPadding;
  external void set symbolPadding (int a_symbolPadding);
  
  /**
   * The border radius of the symbol for series types that use a rectangle in the legend. Defaults to 2.
   */
  external int get symbolRadius;
  external void set symbolRadius (int a_symbolRadius);
  
  /**
   * The pixel width of the legend item symbol. Defaults to 16.
   */
  external int get symbolWidth;
  external void set symbolWidth (int a_symbolWidth);
  
  /**
   * A title to be added on top of the legend.
   */
  external JsObject get title;
  external void set title (JsObject a_title);
  
  /**
   * Whether to use HTML to render the legend item texts. When using HTML, legend.navigation is disabled.
   */
  external bool get useHTML;
  external void set useHTML (bool a_useHTML);
  
  /**
   * The vertical alignment of the legend box. Can be one of "top", "middle" or "bottom". Vertical position can be further determined by the y option. Defaults to bottom.
   */
  external String get verticalAlign;
  external void set verticalAlign (String a_verticalAlign);
  
  /**
   * The width of the legend box.
   */
  external int get width;
  external void set width (int a_width);
  
  /**
   * The x offset of the legend relative to it's horizontal alignment align within chart.spacingLeft and chart.spacingRight. Negative x moves it to the left, positive x moves it to the right. Defaults to 0.
   */
  external int get x;
  external void set x (int a_x);

  /**
   * The vertical offset of the legend relative to it's vertical alignment verticalAlign within chart.spacingTop and chart.spacingBottom. Negative y moves it up, positive y moves it down. Defaults to 0.
   */
  external int get y;
  external void set y (int a_y);
  
}

@JS()
@anonymous
class Tooltip extends OptionsObject {
  /**
   * Enable or disable animation of the tooltip. In slow legacy IE browsers the animation is disabled by default. Defaults to true.
   */
  external bool get animation;
  external void set animation (bool a_animation);
  
  /**
   * The background color or gradient for the tooltip. Defaults to rgba(255, 255, 255, 0.85).
   */
  external String get backgroundColor;
  external void set backgroundColor (String a_backgroundColor);
  
  /**
   * The color of the tooltip border. When null, the border takes the color of the corresponding series or point. Defaults to auto.
   */
  external String get borderColor;
  external void set borderColor (String a_borderColor);
  
  /**
   * The radius of the rounded border corners. Defaults to 3.
   */
  external int get borderRadius;
  external void set borderRadius (int a_borderRadius);
  
  /**
   * The pixel width of the tooltip border. Defaults to 1.
   */
  external int get borderWidth;
  external void set borderWidth (int a_borderWidth);

  /**
   * Display crosshairs to connect the points with their corresponding axis values. The crosshairs can be defined as a boolean, an array of booleans or an object.
   * Boolean
   * If the crosshairs option is true, a single crosshair relating to the x axis will be shown.
   * Array of booleans
   * In an array of booleans, the first value turns on the x axis crosshair and the second value to the y axis crosshair. Use [true, true] to show complete crosshairs.
   * Array of objects
   * In an array of objects, the first value applies to the x axis crosshair and the second value to the y axis crosshair. For each dimension, a width, color, dashStyle and zIndex can be given.
   * Defaults to null.
   */
  external dynamic get crosshairs;
  external void set crosshairs (dynamic a_crosshairs);
  
  /**
   * For series on a datetime axes, the date format in the tooltip's header will by default be guessed based on the closest data points. This member gives the default string representations used for each unit. For an overview of the replacement codes, see dateFormat.
   *  Defaults to:
   *  
   *  {
   *      millisecond:"%A, %b %e, %H:%M:%S.%L",
   *      second:"%A, %b %e, %H:%M:%S",
   *      minute:"%A, %b %e, %H:%M",
   *      hour:"%A, %b %e, %H:%M",
   *      day:"%A, %b %e, %Y",
   *      week:"Week from %A, %b %e, %Y",
   *      month:"%B %Y",
   *      year:"%Y"
   *  }
   */
  external JsObject get dateTimeLabelFormats;
  external void set dateTimeLabelFormats (JsObject a_dateTimeLabelFormats);
  
  /**
   * Enable or disable the tooltip. Defaults to true.
   */
  external bool get enabled;
  external void set enabled (bool a_enabled);

  /**
   * Whether the tooltip should follow the mouse as it moves across columns, pie slices and other point types with an extent. By default it behaves this way for scatter, bubble and pie series by override in the plotOptions for those series types.
   * For touch moves to behave the same way, followTouchMove must be true also.
   * Defaults to false.
   */
  external bool get followPointer;
  external void set followPointer (bool a_followPointer);

  /**
   * Whether the tooltip should follow the finger as it moves on a touch device. The default value of false causes a touch move to scroll the web page, as is default behaviour on touch devices. Setting it to true may cause the user to be trapped inside the chart and unable to scroll away, so it should be used with care. If chart.zoomType is set, it will override followTouchMove Defaults to false.
   */
  external bool get followTouchMove;
  external void set followTouchMove (bool a_followTouchMove);

  /**
   * A string to append to the tooltip format. Defaults to false.
   */
  external String get footerFormat;
  external void set footerFormat (String a_footerFormat);

  /**
   * Callback function to format the text of the tooltip. Return false to disable tooltip for a specific point on series.
   * A subset of HTML is supported. The HTML of the tooltip is parsed and converted to SVG, therefore this isn't a complete HTML renderer. The following tabs are supported: <b>, <strong>, <i>, <em>, <br/>, <span>. Spans can be styled with a style attribute, but only text-related CSS that is shared with SVG is handled.
   * Since version 2.1 the tooltip can be shared between multiple series through the shared option. The available data in the formatter differ a bit depending on whether the tooltip is shared or not. In a shared tooltip, all properties except x, which is common for all points, are kept in an array, this.points.
   * Available data are:
   * 
   * this.percentage (not shared) / this.points[i].percentage (shared)
   *   Stacked series and pies only. The point's percentage of the total.
   * this.point (not shared) / this.points[i].point (shared)
   *   The point object. The point name, if defined, is available through this.point.name.
   * this.points
   *   In a shared tooltip, this is an array containing all other properties for each point.
   * this.series (not shared) / this.points[i].series (shared)
   *   The series object. The series name is available through this.series.name.
   * this.total (not shared) / this.points[i].total (shared)
   *   Stacked series only. The total value at this point's x value.
   * this.x
   *   The x value. This property is the same regardless of the tooltip being shared or not.
   * this.y (not shared) / this.points[i].y (shared)
   *   The y value.
   */
  external Function get formatter;
  external void set formatter (Function a_formatter);

  /**
   * The HTML of the tooltip header line. Variables are enclosed by curly brackets. Available variables  are point.key, series.name, series.color and other members from the point and series objects. The point.key variable contains the category name, x value or datetime string depending on the type of axis. For datetime axes, the point.key date format can be set using tooltip.xDateFormat.
   * Defaults to <span style="font-size: 10px">{point.key}</span><br/>
   */
  external String get headerFormat;
  external void set headerFormat (String a_headerFormat);

  /**
   * The number of milliseconds to wait until the tooltip is hidden when mouse out from a point or chart. Defaults to 500.
   */
  external int get hideDelay;
  external void set hideDelay (int a_hideDelay);

  /**
   * The HTML of the point's line in the tooltip. Variables are enclosed by curly brackets. Available variables are point.x, point.y, series.name and series.color and other properties on the same form. Furthermore, point.y can be extended by the tooltip.yPrefix and tooltip.ySuffix variables. This can also be overridden for each series, which makes it a good hook for displaying units.
   * Defaults to <span style="color:{series.color}">\u25CF</span> {series.name}: <b>{point.y}</b><br/>.
   */
  external String get pointFormat;
  external void set pointFormat (String a_pointFormat);

  /**
   * A callback function to place the tooltip in a default position. The callback receives three parameters: labelWidth, labelHeight and point, where point contains values for plotX and plotY telling where the reference point is in the plot area. Add chart.plotLeft and chart.plotTop to get the full coordinates.
   * The return should be an object containing x and y values, for example { x: 100, y: 100 }.
   */
  external Function get positioner;
  external void set positioner (Function a_positioner);

  /**
   * Whether to apply a drop shadow to the tooltip. Defaults to true.
   */
  external bool get shadow;
  external void set shadow (bool a_shadow);

  /**
   * The name of a symbol to use for the border around the tooltip. In Highcharts 3.x and less, the shape was square. Defaults to callout.
   */
  external String get shape;
  external void set shape (String a_shape);

  /**
   * When the tooltip is shared, the entire plot area will capture mouse movement. Tooltip texts for series types with ordered data (not pie, scatter, flags etc) will be shown in a single bubble. This is recommended for single series charts and for tablet/mobile optimized charts. Defaults to false.
   */
  external bool get shared;
  external void set shared (bool a_shared);

  /**
   * Proximity snap for graphs or single points. Does not apply to bars, columns and pie slices. It defaults to 10 for mouse-powered devices and 25 for touch devices.
   */
  external int get snap;
  external void set snap (int a_snap);

  /**
   * CSS styles for the tooltip. The tooltip can also be styled through the CSS class .highcharts-tooltip. Default value:
   */
  external JsObject get style;
  external void set style (JsObject a_style);

  /**
   * Use HTML to render the contents of the tooltip instead of SVG. Using HTML allows advanced formatting like tables and images in the tooltip. It is also recommended for rtl languages as it works around rtl bugs in early Firefox. Defaults to false.
   */
  external bool get useHTML;
  external void set useHTML (bool a_useHTML);

  /**
   * How many decimals to show in each series' y value. This is overridable in each series' tooltip options object. The default is to preserve all decimals.
   */
  external int get valueDecimals;
  external void set valueDecimals (int a_valueDecimals);

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
class Title extends OptionsObject {

  /**
   * The horizontal alignment of the title. Can be one of "left", "center" and "right". Defaults to center.
   */
  external String get align;
  external void set align (String a_align);

  /**
   * When the title is floating, the plot area will not move to make space for it. Defaults to false.
   */
  external bool get floating;
  external void set floating (bool a_floating);

  /**
   * The margin between the title and the plot area, or if a subtitle is present, the margin between the subtitle and the plot area. Defaults to 15.
   */
  external int get margin;
  external void set margin (int a_margin);

  /**
   * CSS styles for the title. Use this for font styling, but use align, x and yfor text alignment. Defaults to { "color": "#333333", "fontSize": "18px" }.
   */
  external JsObject get style;
  external void set style (JsObject a_style);

  /**
   * The title of the chart. To disable the title, set the text to null. Defaults to Chart title.
   */
  external String get text;
  external void set text (String a_text);

  /**
   * Whether to use HTML to render the text. Defaults to false.
   */
  external bool get useHTML;
  external void set useHTML (bool a_useHTML);

  /**
   * The vertical alignment of the title. Can be one of "top", "middle" and "bottom". When a value is given, the title behaves as floating. Defaults to .
   */
  external String get verticalAlign;
  external void set verticalAlign (String a_verticalAlign);

  /**
   * The x position of the title relative to the alignment within chart.spacingLeft and chart.spacingRight. Defaults to 0.
   */
  external int get x;
  external void set x (int a_x);

  /**
   * The y position of the title relative to the alignment within chart.spacingTop and chart.spacingBottom. Defaults to 15.
   */
  external int get y;
  external void set y (int a_y);
  
}

@JS()
@anonymous
class Subtitle extends Title {
}

@JS()
@anonymous
class XAxis extends OptionsObject {

  /**
   * Whether to allow decimals in this axis' ticks. When counting integers, like persons or hits on a web page, decimals must be avoided in the axis tick labels. Defaults to true.
   */
  external bool get allowDecimals;
  external void set allowDecimals (bool a_allowDecimals);

  /**
   * When using an alternate grid color, a band is painted across the plot area between every other grid line.
   */
  external String get alternateGridColor;
  external void set alternateGridColor (String a_alternateGridColor);

  /**
   * If categories are present for the xAxis, names are used instead of numbers for that axis. Since Highcharts 3.0, categories can also be extracted by giving each point a name and setting axis type to "category".
   * Example:
   * categories: ['Apples', 'Bananas', 'Oranges']
   * Defaults to null
   */
  external List<String> get categories;
  external void set categories (List<String> a_categories);

  /**
   * The highest allowed value for automatically computed axis extremes.
   */
  external num get ceiling;
  external void set ceiling (num a_ceiling);

  /**
   * For a datetime axis, the scale will automatically adjust to the appropriate unit. This member gives the default string representations used for each unit. For an overview of the replacement codes, see dateFormat. Defaults to:
   * 
   *  {
   *    millisecond: '%H:%M:%S.%L',
   *    second: '%H:%M:%S',
   *    minute: '%H:%M',
   *    hour: '%H:%M',
   *    day: '%e. %b',
   *    week: '%e. %b',
   *    month: '%b \'%y',
   *    year: '%Y'
   *  }
   * 
   */
  external JsObject get dateTimeLabelFormats;
  external void set dateTimeLabelFormats (JsObject a_dateTimeLabelFormats);

  /**
   * Whether to force the axis to end on a tick. Use this option with the maxPadding option to control the axis end. Defaults to false.
   */
  external bool get endOnTick;
  external void set endOnTick (bool a_endOnTick);

  /**
   * Event handlers for the axis
   */
  external JsObject get events;
  external void set events (JsObject a_events);

  /**
   * The lowest allowed value for automatically computed axis extremes. Defaults to null.
   */
  external num get floor;
  external void set floor (num a_floor);

  /**
   * Color of the grid lines extending the ticks across the plot area. Defaults to #C0C0C0.
   */
  external String get gridLineColor;
  external void set gridLineColor (String a_gridLineColor);

  /**
   * The dash or dot style of the grid lines. For possible values, see this demonstration. Defaults to Solid.
   */
  external String get gridLineDashStyle;
  external void set gridLineDashStyle (String a_gridLineDashStyle);

  /**
   * The width of the grid lines extending the ticks across the plot area. Defaults to 0.
   */
  external num get gridLineWidth;
  external void set gridLineWidth (num a_gridLineWidth);

  /**
   * The Z index of the grid lines. Defaults to 1.
   */
  external num get gridZIndex;
  external void set gridZIndex (num a_gridZIndex);

  /**
   * An id for the axis. This can be used after render time to get a pointer to the axis object through chart.get().
   */
  String id = OptionsObject.uidGen.v4();

  /**
   * The axis labels show the number or category for each tick.
   */
  external JsObject get labels;
  external void set labels (JsObject a_labels);

  /**
   * The color of the line marking the axis itself. Defaults to #C0D0E0.
   */
  external String get color;
  external void set color (String a_color);

  /**
   * The width of the line marking the axis itself. Defaults to 1.
   */
  external num get lineWidth;
  external void set lineWidth (num a_lineWidth);

  /**
   * Index of another axis that this axis is linked to. When an axis is linked to a master axis, it will take the same extremes as the master, but as assigned by min or max or by setExtremes. It can be used to show additional info, or to ease reading the chart by duplicating the scales.
   */
  external num get linkedTo;
  external void set linkedTo (num a_linkedTo);

  /**
   * The maximum value of the axis. If null, the max value is automatically calculated. If the endOnTick option is true, the max value might be rounded up. The actual maximum value is also influenced by chart.alignTicks.
   */
  external num get max;
  external void set max (num a_max);

  /**
   * Padding of the max value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the highest data value to appear on the edge of the plot area. When the axis' max option is set or a max extreme is set using axis.setExtremes(), the maxPadding will be ignored. Defaults to 0.01.
   */
  external num get maxPadding;
  external void set maxPadding (num a_maxPadding);

  /**
   * The minimum value of the axis. If null the min value is automatically calculated. If the startOnTick option is true, the min value might be rounded down.
   */
  external num get min;
  external void set min (num a_min);

  /**
   * Padding of the min value relative to the length of the axis. A padding of 0.05 will make a 100px axis 5px longer. This is useful when you don't want the lowest data value to appear on the edge of the plot area. When the axis' min option is set or a min extreme is set using axis.setExtremes(), the minPadding will be ignored. Defaults to 0.01.
   */
  external num get minPadding;
  external void set minPadding (num a_minPadding);

  /**
   * The minimum range to display on this axis. The entire axis will not be allowed to span over a smaller interval than this. For example, for a datetime axis the main unit is milliseconds. If minRange is set to 3600000, you can't zoom in more than to one hour.
   * The default minRange for the x axis is five times the smallest interval between any of the data points.
   * On a logarithmic axis, the unit for the minimum range is the power. So a minRange of 1 means that the axis can be zoomed to 10-100, 100-1000, 1000-10000 etc.
   */
  external num get minRange;
  external void set minRange (num a_minRange);

  /**
   * The minimum tick interval allowed in axis values. For example on zooming in on an axis with daily data, this can be used to prevent the axis from showing hours.
   */
  external num get minTickInterval;
  external void set minTickInterval (num a_minTickInterval);

  /**
   * Color of the minor, secondary grid lines. Defaults to #E0E0E0.
   */
  external String get minorGridLineColor;
  external void set minorGridLineColor (String a_minorGridLineColor);

  /**
   * The dash or dot style of the minor grid lines. For possible values, see this demonstration. Defaults to Solid.
   */
  external String get minorGridLineDashStyle;
  external void set minorGridLineDashStyle (String a_minorGridLineDashStyle);

  /**
   * Width of the minor, secondary grid lines. Defaults to 1.
   */
  external num get minorGridLineWidth;
  external void set minorGridLineWidth (num a_minorGridLineWidth);

  /**
   * Color for the minor tick marks. Defaults to #A0A0A0.
   */
  external String get minorTickColor;
  external void set minorTickColor (String a_minorTickColor);

  /**
   * Tick interval in scale units for the minor ticks. On a linear axis, if "auto", the minor tick interval is calculated as a fifth of the tickInterval. If null, minor ticks are not shown.
   * On logarithmic axes, the unit is the power of the value. For example, setting the minorTickInterval to 1 puts one tick on each of 0.1, 1, 10, 100 etc. Setting the minorTickInterval to 0.1 produces 9 ticks between 1 and 10, 10 and 100 etc. A minorTickInterval of "auto" on a log axis results in a best guess, attempting to enter approximately 5 minor ticks between each major tick.
   * On axes using categories, minor ticks are not supported.
   */
  external num get minorTickInterval;
  external void set minorTickInterval (num a_minorTickInterval);

  /**
   * The pixel length of the minor tick marks. Defaults to 2.
   */
  external num get minorTickLength;
  external void set minorTickLength (num a_minorTickLength);

  /**
   * The position of the minor tick marks relative to the axis line. Can be one of inside and outside. Defaults to outside.
   */
  external String get minorTickPosition;
  external void set minorTickPosition (String a_minorTickPosition);

  /**
   * The pixel width of the minor tick mark. Defaults to 0.
   */
  external num get minorTickWidth;
  external void set minorTickWidth (num a_minorTickWidth);

  /**
   * The distance in pixels from the plot area to the axis line. A positive offset moves the axis with it's line, labels and ticks away from the plot area. This is typically used when two or more axes are displayed on the same side of the plot. Defaults to 0.
   */
  external int get offset;
  external void set offset (int a_offset);

  /**
   * Whether to display the axis on the opposite side of the normal. The normal is on the left side for vertical axes and bottom for horizontal, so the opposite sides will be right and top respectively. This is typically used with dual or multiple axes. Defaults to false.
   */
  external bool get opposite;
  external void set opposite (bool a_opposite);

  /**
   * An array of colored bands stretching across the plot area marking an interval on the axis.
   * In a gauge, a plot band on the Y axis (value axis) will stretch along the perimiter of the gauge.
   */
  external List<JsObject> get plotBands;
  external void set plotBands (List<JsObject> a_plotBands);

  /**
   * An array of lines streching across the plot area, marking a specific value on one of the axes.
   */
  external List<PlotLines> get plotLines;
  external void set plotLines (List<PlotLines> a_plotLines);

  /**
   * Whether to reverse the axis so that the highest number is closest to the origin. If the chart is inverted, the x axis is reversed by default. Defaults to false.
   */
  external bool get reversed;
  external void set reversed (bool a_reversed);

  /**
   * Whether to show the axis line and title when the axis has no data. Defaults to true.
   */
  external bool get showEmpty;
  external void set showEmpty (bool a_showEmpty);

  /**
   * Whether to show the first tick label. Defaults to true.
   */
  external bool get showFirstLabel;
  external void set showFirstLabel (bool a_showFirstLabel);

  /**
   * Whether to show the last tick label. Defaults to true.
   */
  external bool get showLastLabel;
  external void set showLastLabel (bool a_showLastLabel);

  /**
   * For datetime axes, this decides where to put the tick between weeks. 0 = Sunday, 1 = Monday. Defaults to 1.
   */
  external int get startOfWeek;
  external void set startOfWeek (int a_startOfWeek);

  /**
   * Whether to force the axis to start on a tick. Use this option with the maxPadding option to control the axis start. Defaults to false.
   */
  external bool get startOnTick;
  external void set startOnTick (bool a_startOnTick);

  /**
   * Color for the main tick marks. Defaults to #C0D0E0.
   */
  external String get tickColor;
  external void set tickColor (String a_tickColor);

  /**
   * The interval of the tick marks in axis units. When null, the tick interval is computed to approximately follow the tickPixelInterval on linear and datetime axes. On categorized axes, a null tickInterval will default to 1, one category. Note that datetime axes are based on milliseconds, so for example an interval of one day is expressed as 24 * 3600 * 1000.
   * On logarithmic axes, the tickInterval is based on powers, so a tickInterval of 1 means one tick on each of 0.1, 1, 10, 100 etc. A tickInterval of 2 means a tick of 0.1, 10, 1000 etc. A tickInterval of 0.2 puts a tick on 0.1, 0.2, 0.4, 0.6, 0.8, 1, 2, 4, 6, 8, 10, 20, 40 etc.
   */
  external num get tickInterval;
  external void set tickInterval (num a_tickInterval);
  

  /**
   * The pixel length of the main tick marks. Defaults to 10. 
   */
  external int get tickLength;
  external void set tickLength (int a_tickLength);

  /**
   * If tickInterval is null this option sets the approximate pixel interval of the tick marks. Not applicable to categorized axis. Defaults to 72 for the Y axis and 100 for the X axis.
   */
  external int get tickPixelInterval;
  external void set tickPixelInterval (int a_tickPixelInterval);

  /**
   * The position of the major tick marks relative to the axis line. Can be one of inside and outside. Defaults to outside.
   */
  external String get tickPosition;
  external void set tickPosition (String a_tickPosition);

  /**
   * A callback function returning array defining where the ticks are laid out on the axis. This overrides the default behaviour of tickPixelInterval and tickInterval. Defaults to null.
   */
  external Function get tickPositioner;
  external void set tickPositioner (Function a_tickPositioner);

  /**
   * An array defining where the ticks are laid out on the axis. This overrides the default behaviour of tickPixelInterval and tickInterval. Defaults to null.
   */
  external List<int> get tickPositions;
  external void set tickPositions (List<int> a_tickPositions);

  /**
   * The pixel width of the major tick marks. Defaults to 1.
   */
  external int get tickWidth;
  external void set tickWidth (int a_tickWidth);

  /**
   * For categorized axes only. If "on" the tick mark is placed in the center of the category, if "between" the tick mark is placed between categories. Defaults to between.
   */
  external String get tickmarkPlacement;
  external void set tickmarkPlacement (String a_tickmarkPlacement);

  /**
   * The axis title, showing next to the axis line.
   */
  external AxisTitle get title;
  external void set title (AxisTitle a_title);

  /**
   * The type of axis. Can be one of "linear", "logarithmic", "datetime" or "category". In a datetime axis, the numbers are given in milliseconds, and tick marks are placed on appropriate values like full hours or days. In a category axis, the point names of the chart's series are used for categories, if not a categories array is defined. Defaults to linear.
   */
  external String get type;
  external void set type (String a_type);

  /* TODO: ¿Esto por qué?
  bool same (o) {
    return o is XAxis &&
        o.allowDecimals == this.allowDecimals &&
        o.alternateGridColor == this.alternateGridColor &&
        o.categories == this.categories &&
        o.ceiling == this.ceiling &&
        o.dateTimeLabelFormats == this.dateTimeLabelFormats &&
        o.endOnTick == this.endOnTick &&
        o.events == this.events &&
        o.floor == this.floor &&
        o.gridLineColor == this.gridLineColor &&
        o.gridLineDashStyle == this.gridLineDashStyle &&
        o.gridLineWidth == this.gridLineWidth &&
        o.gridZIndex == this.gridZIndex &&
        o.id == this.id &&
        o.labels == this.labels &&
        o.color == this.color &&
        o.lineWidth == this.lineWidth &&
        o.linkedTo == this.linkedTo &&
        o.max == this.max &&
        o.maxPadding == this.maxPadding &&
        o.min == this.min &&
        o.minPadding == this.minPadding &&
        o.minRange == this.minRange &&
        o.minTickInterval == this.minTickInterval &&
        o.minorGridLineColor == this.minorGridLineColor &&
        o.minorGridLineDashStyle == this.minorGridLineDashStyle &&
        o.minorGridLineWidth == this.minorGridLineWidth &&
        o.minorTickColor == this.minorTickColor &&
        o.minorTickInterval == this.minorTickInterval &&
        o.minorTickLength == this.minorTickLength &&
        o.minorTickPosition == this.minorTickPosition &&
        o.minorTickWidth == this.minorTickWidth &&
        o.offset == this.offset &&
        o.opposite == this.opposite &&
        o.plotBands == this.plotBands &&
        o.plotLines == this.plotLines &&
        o.reversed == this.reversed &&
        o.showEmpty == this.showEmpty &&
        o.showFirstLabel == this.showFirstLabel &&
        o.showLastLabel == this.showLastLabel &&
        o.startOfWeek == this.startOfWeek &&
        o.startOnTick == this.startOnTick &&
        o.tickColor == this.tickColor &&
        o.tickInterval == this.tickInterval &&
        o.tickLength == this.tickLength &&
        o.tickPixelInterval == this.tickPixelInterval &&
        o.tickPosition == this.tickPosition &&
        o.tickPositioner == this.tickPositioner &&
        o.tickPositions == this.tickPositions &&
        o.tickWidth == this.tickWidth &&
        o.tickmarkPlacement == this.tickmarkPlacement &&
        //o.title == this.title &&   TODO: equals de AxisTitle 
        o.type == this.type &&
        o.moreOptions == this.moreOptions;
  }*/
  
}

class PlotLines extends OptionsObject  implements ToMap {
  String _color;
  /**
   * The color of the line.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  String _dashStyle;
  /**
   * The dashing or dot style for the plot line. For possible values see <a href="http://jsfiddle.net/gh/get/jquery/1.7.1/highslide-software/highcharts.com/tree/master/samples/highcharts/plotoptions/series-dashstyle-all/">this overview</a>. Defaults to Solid.
   */
  @reflectable set dashStyle (String a_dashStyle) {
    _dashStyle = configureNotifiers(#dashStyle, _dashStyle, a_dashStyle);
  }
  @reflectable String get dashStyle => _dashStyle;
  
  
  Map _events;
  /**
   * An object defining mouse events for the plot line. Supported properties are click, mouseover, mouseout, mousemove.
   */
  @reflectable set events (Map a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable Map get events => _events;
  
  
  String _id = OptionsObject.uidGen.v4();
  /**
   * An id used for identifying the plot line in Axis.removePlotLine.
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  
  Map _label;
  /**
   * Text labels for the plot bands
   */
  @reflectable set label (Map a_label) {
    _label = configureNotifiers(#label, _label, a_label);
  }
  @reflectable Map get label => _label;
  
  
  num _value;
  /**
   * The position of the line in axis units.
   */
  @reflectable set value (num a_value) {
    _value = configureNotifiers(#value, _value, a_value);
  }
  @reflectable num get value => _value;
  
  
  int _width;
  /**
   * The width or thickness of the plot line.
   */
  @reflectable set width (int a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int get width => _width;
  
  
  int _zIndex;
  /**
   * The z index of the plot line within the chart.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'dashStyle', this.dashStyle);
    addMapValue(map, 'events', this.events);
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'label', this.label);
    addMapValue(map, 'value', this.value);
    addMapValue(map, 'width', this.width);
    addMapValue(map, 'zIndex', this.zIndex);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}

class AxisTitle extends OptionsObject  implements ToMap {
  String _align;
  /**
   * Alignment of the title relative to the axis values. Possible values are "low", "middle" or "high". Defaults to middle.
   */
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  
  int _margin;
  /**
   * The pixel distance between the axis labels or line and the title. Defaults to 0 for horizontal axes, 10 for vertical
   */
  @reflectable set margin (int a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable int get margin => _margin;
  
  int _offset;
  /**
   * The distance of the axis title from the axis line. By default, this distance is computed from the offset width of the labels, the labels' distance from the axis and the title's margin. However when the offset option is set, it overrides all this.
   */
  @reflectable set offset (int a_offset) {
    _offset = configureNotifiers(#offset, _offset, a_offset);
  }
  @reflectable int get offset => _offset;

  
  int _rotation;
  /**
   * The rotation of the text in degrees. 0 is horizontal, 270 is vertical reading from bottom to top. Defaults to 0.
   */
  @reflectable set rotation (int a_rotation) {
    _rotation = configureNotifiers(#rotation, _rotation, a_rotation);
  }
  @reflectable int get rotation => _rotation;
  
  Map _style;
  /**
   * CSS styles for the title. When titles are rotated they are rendered using vector graphic techniques and not all styles are applicable. Defaults to { "color": "#707070", "fontWeight": "bold" }.
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  
  String _text;
  /**
   * The actual text of the axis title. It can contain basic HTML text markup like <b>, <i> and spans with style.
   */
  @reflectable set text (String a_text) {
    _text = configureNotifiers(#text, _text, a_text);
  }
  @reflectable String get text => _text;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align',     this.align);
    addMapValue(map, 'margin',    this.margin);
    addMapValue(map, 'offset',    this.offset);
    addMapValue(map, 'rotation',  this.rotation);
    addMapValue(map, 'style',     this.style);
    addMapValue(map, 'text',      this.text);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class YAxis extends XAxis implements ToMap {
  String _maxColor;
  /**
   * Solid gauge only. Unless stops are set, the color to represent the maximum value of the Y axis. Defaults to #102D4C.
   */
  @reflectable set maxColor (String a_maxColor) {
    _maxColor = configureNotifiers(#maxColor, _maxColor, a_maxColor);
  }
  @reflectable String get maxColor => _maxColor;
  
  String _minColor;
  /**
   * Solid gauge only. Unless stops are set, the color to represent the minimum value of the Y axis. Defaults to #EFEFFF.
   */
  @reflectable set minColor (String a_minColor) {
    _minColor = configureNotifiers(#minColor, _minColor, a_minColor);
  }
  @reflectable String get minColor => _minColor;
  
  Map _stackLabels;
  /**
   * The stack labels show the total value for each bar in a stacked column or bar chart. The label will be placed on top of positive columns and below negative columns. In case of an inverted column chart or a bar chart the label is placed to the right of positive bars and to the left of negative bars
   */
  @reflectable set stackLabels (Map a_stackLabels) {
    _stackLabels = configureNotifiers(#stackLabels, _stackLabels, a_stackLabels);
  }
  @reflectable Map get stackLabels => _stackLabels;
  
  
  Map toMap () {
    Map map = super.toMap();
    addMapValue (map, 'maxColor', this.maxColor);
    addMapValue (map, 'minColor', this.minColor);
    addMapValue (map, 'stackLabels', this.stackLabels);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
  @override
  bool same (o) {
      return super.same(o) &&
          o is YAxis && 
          o.maxColor == this.maxColor && 
          o.minColor == this.minColor && 
          o.stackLabels == this.stackLabels;
  }
  
}

class PlotOptions extends OptionsObject  implements ToMap {
  Map toMap () {
    Map map = new Map ();
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
}

class Series extends PlotOptions implements ToMap {
  List<Point> _data;
  /**
   * An array of data points for the series. data has precedence over numData
   */
  @reflectable set data (List<Point> a_data) {
    _data = configureNotifiers(#data, _data, a_data);
  }
  @reflectable List<Point> get data => _data;
  
  
  List _numData;
  /**
   * An array of data points for the series, just for numbers. data has precedence over numData
   */
  @reflectable set numData (List a_numData) {
    _numData = configureNotifiers(#numData, _numData, a_numData);
  }
  @reflectable List get numData => _numData;
  
  String _color;
  /**
   * The color for this series
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  String _id = OptionsObject.uidGen.v4();
  /**
   * An id for the series. This can be used after render time to get a pointer to the series object through chart.get().
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  int _index;
  /**
   * The index of the series in the chart, affecting the internal index in the chart.series array, the visible Z index as well as the order in the legend.
   */
  @reflectable set index (int a_index) {
    _index = configureNotifiers(#index, _index, a_index);
  }
  @reflectable int get index => _index;
  
  int _legendIndex;
  /**
   * The sequential index of the series in the legend.
   */
  @reflectable set legendIndex (int a_legendIndex) {
    _legendIndex = configureNotifiers(#legendIndex, _legendIndex, a_legendIndex);
  }
  @reflectable int get legendIndex => _legendIndex;
  
  String _name;
  /**
   * The name of the series as shown in the legend, tooltip etc.
   */
  @reflectable set name (String a_name) {
    _name = configureNotifiers(#name, _name, a_name);
  }
  @reflectable String get name => _name;
  
  var _stack;
  /**
   * This option allows grouping series in a stacked chart. The stack option can be a string or a number or anything else, as long as the grouped series' stack options match each other.
   */
  @reflectable set stack (var a_stack) {
    _stack = configureNotifiers(#stack, _stack, a_stack);
  }
  @reflectable get stack => _stack;
  
  String _type;
  /**
   * The type of series. Can be one of area, areaspline, bar, column, line, pie, scatter or spline. From version 2.3, arearange, areasplinerange and columnrange are supported with the highcharts-more.js component.
   */
  @reflectable set type (String a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String  get type => _type;
  
  var _xAxis;
  /**
   * When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to either the axis id or the index of the axis in the xAxis array, with 0 being the first. Defaults to 0.
   */
  @reflectable set xAxis (var a_xAxis) {
    _xAxis = configureNotifiers(#xAxis, _xAxis, a_xAxis);
  }
  @reflectable get xAxis => _xAxis;
  
  var _xAxisId;
  /**
   * When using dual or multiple x axes, this number defines which xAxis the particular series is connected to. It refers to the axis id of the axis
   */
  @reflectable set xAxisId (var a_xAxisId) {
    _xAxisId = configureNotifiers(#xAxisId, _xAxisId, a_xAxisId);
  }
  @reflectable get xAxisId => _xAxisId;
  
  
  var _yAxis;
  /**
   *  When using dual or multiple y axes, this number defines which yAxis the particular series is connected to. It refers to the index of the axis in the yAxis array, with 0 being the first. Defaults to 0.
   */
  @reflectable set yAxis (var a_yAxis) {
    _yAxis = configureNotifiers(#yAxis, _yAxis, a_yAxis);
  }
  @reflectable get yAxis => _yAxis;
  
  var _yAxisId;
  /**
   *  When using dual or multiple y axes, this String defines which yAxis the particular series is connected to. It refers to the axis id of the axis
   */
  @reflectable set yAxisId (var a_yAxisId) {
    _yAxisId = configureNotifiers(#yAxisId, _yAxisId, a_yAxisId);
  }
  @reflectable get yAxisId => _yAxisId;
  
  int _zIndex;
  /**
   * Define the visual z index of the series.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  JsObject _dataToJS () {
    JsObject out = null;
    if (this.data != null) {
      out = new JsObject.jsify (convertToMapList(this.data));
    }
    else if (this.numData != null) {
      out = new JsObject.jsify(this.numData);
    }
    return out;
  }
  
  
  List<Map> convertToMapList (List<ToMap> lst) {
    List<Map> out = new List<Map> ();
    for (ToMap m in lst) {
      out.add(m.toMap());
    }
    return out;
  }
  
  JsObject getJsData () => _dataToJS();
  
  Map toMap () {
    Map map = super.toMap();
    addMapValue(map, 'data', _dataToJS());
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'index', this.index);
    addMapValue(map, 'legendIndex', this.legendIndex);
    addMapValue(map, 'name', this.name);
    addMapValue(map, 'stack', this.stack);
    addMapValue(map, 'type', this.type);
    if (this.xAxisId != null && this.xAxisId != "") {
      addMapValue(map, 'xAxis', this.xAxisId);
    }
    else {
      addMapValue(map, 'xAxis', this.xAxis);  
    }
    if (this.yAxisId != null && this.yAxisId != "") {
      addMapValue(map, 'yAxis', this.yAxisId);
    }
    else {
      addMapValue(map, 'yAxis', this.yAxis);
    }
    addMapValue(map, 'zIndex', this.zIndex);
    
    if (moreOptions != null) 
      map.addAll(moreOptions);
    return map;
  }
  
  @override
  void setJsChart (JsObject jsChart) {
    super.setJsChart(jsChart);
    setJsChartList(this.data, jsChart);
  }
}

class DataLabels extends OptionsObject  implements ToMap {
  String _align;
  /**
   * The alignment of the data label compared to the point. Can be one of "left", "center" or "right". Defaults to "center". Defaults to center.
   */
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  
  String _backgroundColor;
  /**
   * The background color or gradient for the data label. Defaults to undefined.
   */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  
  String _borderColor;
  /**
   * The border color for the data label. Defaults to undefined.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  
  int _borderRadius;
  /**
   * The border radius in pixels for the data label. Defaults to 0.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The border width in pixels for the data label. Defaults to 0.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  
  String _color;
  /**
   * The text color for the data labels. Defaults to null.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  bool _crop;
  /**
   * Whether to hide data labels that are outside the plot area. By default, the data label is moved inside the plot area according to the overflow option. Defaults to true.
   */
  @reflectable set crop (bool a_crop) {
    _crop = configureNotifiers(#crop, _crop, a_crop);
  }
  @reflectable bool get crop => _crop;
  
  
  bool _defer;
  /**
   * Whether to defer displaying the data labels until the initial series animation has finished. Defaults to true.
   */
  @reflectable set defer (bool a_defer) {
    _defer = configureNotifiers(#defer, _defer, a_defer);
  }
  @reflectable bool get defer => _defer;
  
  
  bool _enabled;
  /**
   * Enable or disable the data labels. Defaults to false.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  String _format;
  /**
   * A format string for the data label. Available variables are the same as for formatter. Defaults to {y}. 
   */
  @reflectable set format (String a_format) {
    _format = configureNotifiers(#format, _format, a_format);
  }
  @reflectable String get format => _format;
  
  Function _formatter;
  /**
   * Callback function to format the data label. Note that if a format is defined, the format takes precedence and the formatter is ignored. Available data are:
   *     this.percentage Stacked series and pies only. The point's percentage of the total.
   *     this.point  The point object. The point name, if defined, is available through this.point.name.
   *     this.series:  The series object. The series name is available through this.series.name.
   *     this.total  Stacked series only. The total value at this point's x value.
   *     this.x: The x value.
   *     this.y: The y value.
   */
  @reflectable set formatter (Function a_formatter) {
    _formatter = notifyPropertyChange(#formatter, _formatter, a_formatter);
  }
  @reflectable Function get formatter => _formatter;
  
  
  bool _inside;
  /**
   * For points with an extent, like columns, whether to align the data label inside the box or to the actual value point. Defaults to false in most cases, true in stacked columns.
   */
  @reflectable set inside (bool a_inside) {
    _inside = configureNotifiers(#inside, _inside, a_inside);
  }
  @reflectable bool get inside => _inside;
  
  
  String _overflow;
  /**
   * How to handle data labels that flow outside the plot area. The default is justify, which aligns them inside the plot area. For columns and bars, this means it will be moved inside the bar. To display data labels outside the plot area, set crop to false and overflow to "none". Defaults to justify.
   */
  @reflectable set overflow (String a_overflow) {
    _overflow = configureNotifiers(#overflow, _overflow, a_overflow);
  }
  @reflectable String get overflow => _overflow;
  
  
  int _padding;
  /**
   * When either the borderWidth or the backgroundColor is set, this   is the padding within the box. Defaults to 2.
   */
  @reflectable set padding (int a_padding) {
    _padding = configureNotifiers(#padding, _padding, a_padding);
  }
  @reflectable int get padding => _padding;
  
  
  int _rotation;
  /**
   * Text rotation in degrees. Note that due to a more complex structure, backgrounds and borders will be lost on a rotated data label. Defaults to 0.
   */
  @reflectable set rotation (int a_rotation) {
    _rotation = configureNotifiers(#rotation, _rotation, a_rotation);
  }
  @reflectable int get rotation => _rotation;
  
  bool _shadow;
  /**
   * The shadow of the box. Works best with borderWidth or backgroundColor. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set shadow (bool a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable bool get shadow => _shadow;
  
  
  Map _style;
  /**
   * Styles for the label
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  bool _useHTML;
  /**
   * Whether to use HTML to render the labels. Defaults to false.
   */
  @reflectable set useHTML (bool a_useHTML) {
    _useHTML = configureNotifiers(#useHTML, _useHTML, a_useHTML);
  }
  @reflectable bool get useHTML => _useHTML;
  
  String _verticalAlign;
  /**
   * The vertical alignment of a data label. Can be one of top, middle or bottom. The default value depends on the data, for instance in a column chart, the label is above positive values and below negative values.
   */
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  
  int _x;
  /**
   * The x position offset of the label relative to the point. Defaults to 0.
   */
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  
  int _y;
  /**
   * The y position offset of the label relative to the point. Defaults to -6.
   */
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  int _zIndex;
  /**
   * The Z index of the data labels. The default Z index puts it above the series. Use a Z index of 2 to display it behind the series. Defaults to 6.
   */
  @reflectable set zIndex (int a_zIndex) {
    _zIndex = configureNotifiers(#zIndex, _zIndex, a_zIndex);
  }
  @reflectable int get zIndex => _zIndex;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align);
    addMapValue(map, 'backgroundColor', this.backgroundColor);
    addMapValue(map, 'borderColor', this.borderColor);
    addMapValue(map, 'borderRadius', this.borderRadius);
    addMapValue(map, 'borderWidth', this.borderWidth);
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'crop', this.crop);
    addMapValue(map, 'defer', this.defer);
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'format', this.format);
    addMapValue(map, 'formatter', this.formatter);
    addMapValue(map, 'inside', this.inside);
    addMapValue(map, 'overflow', this.overflow);
    addMapValue(map, 'padding', this.padding);
    addMapValue(map, 'rotation', this.rotation);
    addMapValue(map, 'shadow', this.shadow);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'useHTML', this.useHTML);
    addMapValue(map, 'verticalAlign', this.verticalAlign);
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    addMapValue(map, 'zIndex', this.zIndex);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Point extends OptionsObject  implements ToMap {
  
  String _color;
  /**
   * Individual color for the point. By default the color is pulled from the global colors array.
   */
  @reflectable set color (String a_color) {
    _color = configureNotifiers(#color, _color, a_color);
  }
  @reflectable String get color => _color;
  
  
  DataLabels _dataLabels;
  /**
   * Individual data label for each point. The options are the same as the ones for plotOptions.series.dataLabels
   */
  @reflectable set dataLabels (DataLabels a_dataLabels) {
    _dataLabels = configureNotifiers(#dataLabels, _dataLabels, a_dataLabels);
  }
  @reflectable DataLabels get dataLabels => _dataLabels;
  
  String _drilldown;
  /**
   * The id of a series in the drilldown.series array to use for a drilldown for this point.
   */
  @reflectable set drilldown (String a_drilldown) {
    _drilldown = configureNotifiers(#drilldown, _drilldown, a_drilldown);
  }
  @reflectable String get drilldown => _drilldown;
  
  Map _events;
  /**
   * Individual point events. Events: 
   *  click
   *  mouseOut
   *  mouseOver
   *  remove
   *  select
   *  unselect
   *  update
   */
  @reflectable set events (Map a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable Map get events => _events;
  
  String _id = OptionsObject.uidGen.v4();
  /**
   * An id for the point. This can be used after render time to get a pointer to the point object through chart.get().
   */
  @reflectable set id (String a_id) {
    _id = configureNotifiers(#id, _id, a_id);
  }
  @reflectable String get id => _id;
  
  int _legendIndex;
  /**
   * Pies only. The sequential index of the pie slice in the legend.   .
   */
  @reflectable set legendIndex (int a_legendIndex) {
    _legendIndex = configureNotifiers(#legendIndex, _legendIndex, a_legendIndex);
  }
  @reflectable int get legendIndex => _legendIndex;
  
  
  Map _marker;
  @reflectable set marker (Map a_marker) {
    _marker = configureNotifiers(#marker, _marker, a_marker);
  }
  @reflectable Map get marker => _marker;
  
  String _name;
  /**
   * The name of the point as shown in the legend, tooltip, dataLabel etc.
   */
  @reflectable set name (String a_name) {
    _name = configureNotifiers(#name, _name, a_name);
  }
  @reflectable String get name => _name;
  
  bool _sliced;
  /**
   * Pie series only. Whether to display a slice offset from the center. Defaults to false.
   */
  @reflectable set sliced (bool a_sliced) {
    _sliced = configureNotifiers(#sliced, _sliced, a_sliced);
  }
  @reflectable bool get sliced => _sliced;
  
  bool _selected;
  /**
   * Whether the point is selected or not.
   */
  @reflectable set selected (bool a_selected) {
    _selected = configureNotifiers(#selected, _selected, a_selected);
  }
  @reflectable bool get selected => _selected;
  
  num _x;
  /**
   * The x value of the point.
   */
  @reflectable set x (num a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable num get x => _x;
  
  DateTime _xDate;
  /**
   * The x value of the point. Use this property for date x values
   */
  @reflectable set xDate (DateTime a_xDate) {
    _xDate = configureNotifiers(#xDate, _xDate, a_xDate);
  }
  @reflectable DateTime get xDate => _xDate;
  
  num _y;
  /**
   * The y value of the point
   */
  @reflectable set y (num a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable num get y => _y;
  
  Object _xValueToJS () {
    Object out = null;
    if (this.x != null) {
      out = this.x;
    }
    else if (this.xDate != null) {
      out = this.xDate;
    }
    return out;
  }
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'color', this.color);
    addMapValue(map, 'dataLabels', this.dataLabels);
    addMapValue(map, 'drilldown', this.drilldown);
    addMapValue(map, 'events', this.events);
    addMapValue(map, 'id', this.id);
    addMapValue(map, 'legendIndex', this.legendIndex);
    addMapValue(map, 'marker', this.marker);
    addMapValue(map, 'name', this.name);
    addMapValue(map, 'selected', this.selected);
    addMapValue(map, 'sliced', this.sliced);
    addMapValue(map, 'x', _xValueToJS());
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
  @override
  void setJsChart (JsObject jsChart) {
    super.setJsChart(jsChart);
  }
  
  void remove ({bool redraw, dynamic animation}) {
    JsObject jsProxy = jsChart.callMethod("get", [this.id]);
    jsProxy.callMethod("remove", [redraw, animation]);
  }
  
  void select ({bool select, bool accumulate}) {
    JsObject jsProxy = jsChart.callMethod("get", [this.id]);
    jsProxy.callMethod("select", [select, accumulate]);
    this.selected = true;
  }
  
  void slice ({bool sliced, bool redraw, dynamic animation}) {
    JsObject jsProxy = jsChart.callMethod("get", [this.id]);
    jsProxy.callMethod("slice", [sliced, redraw, animation]);
    this.selected = false;
  }
  
}

class Credits extends OptionsObject implements ToMap {
  
  bool _enabled = true;
  /**
   * Whether to show the credits text. Defaults to true.
   */
  @reflectable set enabled (bool a_enabled) {
    _enabled = configureNotifiers(#enabled, _enabled, a_enabled);
  }
  @reflectable bool get enabled => _enabled;
  
  String _href/* = "http://www.highcharts.com"*/;
  /**
   * The URL for the credits label. Defaults to http://www.highcharts.com.
   */
  @reflectable set href (String a_href) {
    _href = configureNotifiers(#href, _href, a_href);
  }
  @reflectable String get href => _href;
  
  Position _position/* = new Position (align: "right", verticalAlign: "bottom", x: -10, y: -5)*/;
  /**
   * Position configuration for the credtis label. Supported properties are align, verticalAlign, x and y. Defaults to
   */
  @reflectable set position (Position a_position) {
    _position = configureNotifiers(#position, _position, a_position);
  }
  @reflectable Position get position => _position;
  
  /**
   * CSS styles for the credits label. Defaults to:
   *  style: {
   *     cursor: 'pointer',
   *     color: '#909090',
   *     fontSize: '10px'
   *   }
   */
  Map style/* = {
    'cursor': 'pointer', 
    'color': '#909090', 
    'fontSize': '10px'
  }*/;
  
  String _text/* = 'Highcharts.com'*/;
  /**
   * The text for the credits label. Defaults to Highcharts.com.
   */
  @reflectable set text (String a_text) {
    _text = configureNotifiers(#text, _text, a_text);
  }
  @reflectable String get text => _text;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'enabled', this.enabled);
    addMapValue(map, 'href', this.href);
    addMapValue(map, 'position', this.position);
    addMapValue(map, 'style', this.style);
    addMapValue(map, 'text', this.text);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Chart extends OptionsObject implements ToMap {
  bool _alignTicks;
  /**
   * When using multiple axis, the ticks of two or more opposite axes will automatically be aligned by adding ticks to the axis or axes with the least ticks. This can be prevented by setting alignTicks to false. If the grid lines look messy, it's a good idea to hide them for the secondary axis by setting gridLineWidth to 0. Defaults to true.
   */
  @reflectable set alignTicks (bool a_alignTicks) {
    _alignTicks = configureNotifiers(#alignTicks, _alignTicks, a_alignTicks);
  }
  @reflectable bool get alignTicks => _alignTicks;
  
  bool _animation;
  /**
   * Set the overall animation for all chart updating. Animation can be disabled throughout the chart by setting it to false here. It can be overridden for each individual API method as a function parameter. The only animation not affected by this option is the initial series animation
   * The animation can either be set as a boolean or a configuration object. If true, it will use the 'swing' jQuery easing and a duration of 500 ms. If used as a configuration object, the following properties are supported:
   * duration: The duration of the animation in milliseconds.
   * easing: When using jQuery as the general framework, the easing can be set to linear or swing. More easing functions are available with the use of jQuery plug-ins, most notably the jQuery UI suit
   */
  @reflectable set animation (bool a_animation) {
    _animation = configureNotifiers(#animation, _animation, a_animation);
  }
  @reflectable bool get animation => _animation;
  
  String _backgroundColor;
  /**
   * The background color or gradient for the outer chart area. Defaults to #FFFFFF.
   */
  @reflectable set backgroundColor (String a_backgroundColor) {
    _backgroundColor = configureNotifiers(#backgroundColor, _backgroundColor, a_backgroundColor);
  }
  @reflectable String get backgroundColor => _backgroundColor;
  
  String _borderColor;
  /**
   * The color of the outer chart border. The border is painted using vector graphic techniques to allow rounded corners. Defaults to #4572A7.
   */
  @reflectable set borderColor (String a_borderColor) {
    _borderColor = configureNotifiers(#borderColor, _borderColor, a_borderColor);
  }
  @reflectable String get borderColor => _borderColor;
  
  int _borderRadius;
  /**
   * The corner radius of the outer chart border. In export, the radius defaults to 0. Defaults to 5.
   */
  @reflectable set borderRadius (int a_borderRadius) {
    _borderRadius = configureNotifiers(#borderRadius, _borderRadius, a_borderRadius);
  }
  @reflectable int get borderRadius => _borderRadius;
  
  int _borderWidth;
  /**
   * The pixel width of the outer chart border. The border is painted using vector graphic techniques to allow rounded corners. Defaults to 0.
   */
  @reflectable set borderWidth (int a_borderWidth) {
    _borderWidth = configureNotifiers(#borderWidth, _borderWidth, a_borderWidth);
  }
  @reflectable int get borderWidth => _borderWidth;
  
  String _className;
  /**
   * A CSS class name to apply to the charts container div, allowing unique CSS styling for each chart.
   */
  @reflectable set className (String a_className) {
    _className = configureNotifiers(#className, _className, a_className);
  }
  @reflectable String get className => _className;
  
  String _defaultSeriesType;
  /**
   * Alias of type. Defaults to line.
   */
  @reflectable set defaultSeriesType (String a_defaultSeriesType) {
    _defaultSeriesType = configureNotifiers(#defaultSeriesType, _defaultSeriesType, a_defaultSeriesType);
  }
  @reflectable String get defaultSeriesType => _defaultSeriesType;
  
  ChartEvents _events;
  /**
   * Event listeners for the chart
   */
  @reflectable set events (ChartEvents a_events) {
    _events = configureNotifiers(#events, _events, a_events);
  }
  @reflectable ChartEvents get events => _events;
  
  int _height;
  /**
   * An explicit height for the chart. By default the height is calculated from the offset height of the containing element, or 400 pixels if the containing element's height is 0. 
   */
  @reflectable set height (int a_height) {
    _height = configureNotifiers(#height, _height, a_height);
  }
  @reflectable int get height => _height;
  
  bool _ignoreHiddenSeries;
  /**
   * If true, the axes will scale to the remaining visible series once one series is hidden. If false, hiding and showing a series will not affect the axes or the other series. For stacks, once one series within the stack is hidden, the rest of the stack will close in around it even if the axis is not affected. Defaults to true.
   */
  @reflectable set ignoreHiddenSeries (bool a_ignoreHiddenSeries) {
    _ignoreHiddenSeries = configureNotifiers(#ignoreHiddenSeries, _ignoreHiddenSeries, a_ignoreHiddenSeries);
  }
  @reflectable bool get ignoreHiddenSeries => _ignoreHiddenSeries;
  
  bool _inverted;
  /**
   * Whether to invert the axes so that the x axis is vertical and y axis is horizontal. When true, the x axis is reversed by default. If a bar series is present in the chart, it will be inverted automatically. Defaults to false.
   */
  @reflectable set inverted (bool a_inverted) {
    _inverted = configureNotifiers(#inverted, _inverted, a_inverted);
  }
  @reflectable bool get inverted => _inverted;
  
  List<int> _margin;
  /**
   * The margin between the outer edge of the chart and the plot area. The numbers in the array designate top, right, bottom and left respectively. Use the options marginTop, marginRight, marginBottom and marginLeft for shorthand setting of one option.
   * Since version 2.1, the margin is 0 by default. The actual space is dynamically calculated from the offset of axis labels, axis title, title, subtitle and legend in addition to the spacingTop, spacingRight, spacingBottom and spacingLeft options.
   */
  @reflectable set margin (List<int> a_margin) {
    _margin = configureNotifiers(#margin, _margin, a_margin);
  }
  @reflectable List<int> get margin => _margin;
  
  int _marginBottom;
  /**
   * The margin between the bottom outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingBottom.
   */
  @reflectable set marginBottom (int a_marginBottom) {
    _marginBottom = configureNotifiers(#marginBottom, _marginBottom, a_marginBottom);
  }
  @reflectable int get marginBottom => _marginBottom;
  
  int _marginLeft;
  /**
   * The margin between the left outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingLeft.
   */
  @reflectable set marginLeft (int a_marginLeft) {
    _marginLeft = configureNotifiers(#marginLeft, _marginLeft, a_marginLeft);
  }
  @reflectable int get marginLeft => _marginLeft;

  int _marginRight;
  /**
   * The margin between the right outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingRight.
   */
  @reflectable set marginRight (int a_marginRight) {
    _marginRight = configureNotifiers(#marginRight, _marginRight, a_marginRight);
  }
  @reflectable int get marginRight => _marginRight;
  
  int _marginTop;
  /**
   * The margin between the top outer edge of the chart and the plot area. Use this to set a fixed pixel value for the margin as opposed to the default dynamic margin. See also spacingTop.
   */
  @reflectable set marginTop (int a_marginTop) {
    _marginTop = configureNotifiers(#marginTop, _marginTop, a_marginTop);
  }
  @reflectable int get marginTop => _marginTop;
  
  String _pinchType;
  /**
   * Equivalent to zoomType, but for multitouch gestures only. By default, the pinchType is the same as the zoomType setting. However, pinching can be enabled separately in some cases, for example in stock charts where a mouse drag pans the chart, while pinching is enabled. Defaults to null.
   */
  @reflectable set pinchType (String a_pinchType) {
    _pinchType = configureNotifiers(#pinchType, _pinchType, a_pinchType);
  }
  @reflectable String get pinchType => _pinchType;
  
  String _plotBackgroundColor;
  /**
   * The background color or gradient for the plot area.
   */
  @reflectable set plotBackgroundColor (String a_plotBackgroundColor) {
    _plotBackgroundColor = configureNotifiers(#plotBackgroundColor, _plotBackgroundColor, a_plotBackgroundColor);
  }
  @reflectable String get plotBackgroundColor => _plotBackgroundColor;
  
  String _plotBackgroundImage;
  /**
   * The URL for an image to use as the plot background. To set an image as the background for the entire chart, set a CSS background image to the container element. Note that for the image to be applied to exported charts, its URL needs to be accessible by the export server.
   */
  @reflectable set plotBackgroundImage (String a_plotBackgroundImage) {
    _plotBackgroundImage = configureNotifiers(#plotBackgroundImage, _plotBackgroundImage, a_plotBackgroundImage);
  }
  @reflectable String get plotBackgroundImage => _plotBackgroundImage;
  
  String _plotBorderColor;
  /**
   * The color of the inner chart or plot area border. Defaults to #C0C0C0.
   */
  @reflectable set plotBorderColor (String a_plotBorderColor) {
    _plotBorderColor = configureNotifiers(#plotBorderColor, _plotBorderColor, a_plotBorderColor);
  }
  @reflectable String get plotBorderColor => _plotBorderColor;
  
  int _plotBorderWidth;
  /**
   * The pixel width of the plot area border. Defaults to 0.
   */
  @reflectable set plotBorderWidth (int a_plotBorderWidth) {
    _plotBorderWidth = configureNotifiers(#plotBorderWidth, _plotBorderWidth, a_plotBorderWidth);
  }
  @reflectable int get plotBorderWidth => _plotBorderWidth;
  
  bool _plotShadow;
  /**
   * Whether to apply a drop shadow to the plot area. Requires that plotBackgroundColor be set. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set plotShadow (bool a_plotShadow) {
    _plotShadow = configureNotifiers(#plotShadow, _plotShadow, a_plotShadow);
  }
  @reflectable bool get plotShadow => _plotShadow;
  
  bool _polar;
  /**
   * When true, cartesian charts like line, spline, area and column are transformed into the polar coordinate system. Requires highcharts-more.js. Defaults to false.
   */
  @reflectable set polar (bool a_polar) {
    _polar = configureNotifiers(#polar, _polar, a_polar);
  }
  @reflectable bool get polar => _polar;
  
  bool _reflow;
  /**
   * Whether to reflow the chart to fit the width of the container div on resizing the window. Defaults to true.
   */
  @reflectable set reflow (bool a_reflow) {
    _reflow = configureNotifiers(#reflow, _reflow, a_reflow);
  }
  @reflectable bool get reflow => _reflow;
  
  @observable HtmlElement _renderTo;  
  /**
   * The HTML element where the chart will be rendered. The element by that id is used. 
   */
  @reflectable set renderTo (HtmlElement a_renderTo) {
    _renderTo = configureNotifiers(#renderTo, _renderTo, a_renderTo);
  }
  @reflectable HtmlElement get renderTo => _renderTo;
  
  @observable String _renderToID;
  /**
   * The id of the HTML element where the chart will be rendered. The element by that id is used. 
   */
  @reflectable set renderToID (String a_renderToID) {
    _renderToID = configureNotifiers(#renderToID, _renderToID, a_renderToID);
  }
  @reflectable String get renderToID => _renderToID;
  
  ResetZoomButton _resetZoomButton;
  /**
   * The button that appears after a selection zoom, allowing the user to reset zoom.
   */
  @reflectable set resetZoomButton (ResetZoomButton a_resetZoomButton) {
    _resetZoomButton = configureNotifiers(#resetZoomButton, _resetZoomButton, a_resetZoomButton);
  }
  @reflectable ResetZoomButton get resetZoomButton => _resetZoomButton;
  
  String _selectionMarkerFill;
  /**
   * The background color of the marker square when selecting (zooming in on) an area of the chart. Defaults to rgba(69,114,167,0.25).
   * 
   */
  @reflectable set selectionMarkerFill (String a_selectionMarkerFill) {
    _selectionMarkerFill = configureNotifiers(#selectionMarkerFill, _selectionMarkerFill, a_selectionMarkerFill);
  }
  @reflectable String get selectionMarkerFill => _selectionMarkerFill;
  
  bool _shadow;
  /**
   * Whether to apply a drop shadow to the outer chart area. Requires that backgroundColor be set. Since 2.3 the shadow can be an object configuration containing color, offsetX, offsetY, opacity and width. Defaults to false.
   */
  @reflectable set shadow (bool a_shadow) {
    _shadow = configureNotifiers(#shadow, _shadow, a_shadow);
  }
  @reflectable bool get shadow => _shadow;
  
  bool _showAxes;
  /**
   * Whether to show the axes initially. This only applies to empty charts where series are added dynamically, as axes are automatically added to cartesian series. Defaults to false.
   */
  @reflectable set showAxes (bool a_showAxes) {
    _showAxes = configureNotifiers(#showAxes, _showAxes, a_showAxes);
  }
  @reflectable bool get showAxes => _showAxes;
  
  List<int> _spacing;
  /**
   * The distance between the outer edge of the chart and the content, like title, legend, axis title or labels. The numbers in the array designate top, right, bottom and left respectively. Use the options spacingTop, spacingRight, spacingBottom and spacingLeft options for shorthand setting of one option. Defaults to [10, 10, 15, 10].
   */
  @reflectable set spacing (List<int> a_spacing) {
    _spacing = configureNotifiers(#spacing, _spacing, a_spacing);
  }
  @reflectable List<int> get spacing => _spacing;
  
  int _spacingBottom;
  /**
   * The space between the bottom edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingBottom (int a_spacingBottom) {
    _spacingBottom = configureNotifiers(#spacingBottom, _spacingBottom, a_spacingBottom);
  }
  @reflectable int get spacingBottom => _spacingBottom;
  
  int _spacingLeft;
  /**
   * The space between the left edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingLeft (int a_spacingLeft) {
    _spacingLeft = configureNotifiers(#spacingLeft, _spacingLeft, a_spacingLeft);
  }
  @reflectable int get spacingLeft => _spacingLeft;
  
  int _spacingRight;
  /**
   * The space between the right edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingRight (int a_spacingRight) {
    _spacingRight = configureNotifiers(#spacingRight, _spacingRight, a_spacingRight);
  }
  @reflectable int get spacingRight => _spacingRight;
  
  int _spacingTop;
  /**
   * The space between the top edge of the chart and the content (plot area, axis title and labels, title, subtitle or legend in top position).
   */
  @reflectable set spacingTop (int a_spacingTop) {
    _spacingTop = configureNotifiers(#spacingTop, _spacingTop, a_spacingTop);
  }
  @reflectable int get spacingTop => _spacingTop;
  
  Map _style;
  /**
   * Additional CSS styles to apply inline to the container div. Note that since the default font styles are applied in the renderer, it is ignorant of the individual chart options and must be set globally. Defaults to:
   *   style: {
   *     fontFamily: '"Lucida Grande", "Lucida Sans Unicode", Verdana, Arial, Helvetica, sans-serif', // default font
   *     fontSize: '12px'
   *   }
   */
  @reflectable set style (Map a_style) {
    _style = configureNotifiers(#style, _style, a_style);
  }
  @reflectable Map get style => _style;
  
  
  String _type;
  /**
   * The default series type for the chart. Can be any of the chart types listed under plotOptions. Defaults to line.
   */
  @reflectable set type (String a_type) {
    _type = configureNotifiers(#type, _type, a_type);
  }
  @reflectable String get type => _type;
  
  int _width;
  /**
   * An explicit width for the chart. By default the width is calculated from the offset width of the containing element.
   */
  @reflectable set width (int a_width) {
    _width = configureNotifiers(#width, _width, a_width);
  }
  @reflectable int get width => _width;
   
  String _zoomType;
  /**
   * Decides in what dimentions the user can zoom by dragging the mouse. Can be one of x, y or xy.
   */
  @reflectable set zoomType (String a_zoomType) {
    _zoomType = configureNotifiers(#zoomType, _zoomType, a_zoomType);
  }
  @reflectable String get zoomType => _zoomType;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'alignTicks'                , this.alignTicks);
    addMapValue(map, 'animation'                 , this.animation);
    addMapValue(map, 'backgroundColor'           , this.backgroundColor);
    addMapValue(map, 'borderColor'               , this.borderColor);
    addMapValue(map, 'borderRadius'              , this.borderRadius);
    addMapValue(map, 'borderWidth'               , this.borderWidth);
    addMapValue(map, 'className'                 , this.className);
    addMapValue(map, 'defaultSeriesType'         , this.defaultSeriesType);
    addMapValue(map, 'events'                    , this.events);
    addMapValue(map, 'height'                    , this.height);
    addMapValue(map, 'ignoreHiddenSeries'        , this.ignoreHiddenSeries);
    addMapValue(map, 'inverted'                  , this.inverted);
    addMapValue(map, 'margin'                    , this.margin);
    addMapValue(map, 'marginBottom'              , this.marginBottom);
    addMapValue(map, 'marginLeft'                , this.marginLeft);
    addMapValue(map, 'marginRight'               , this.marginRight);
    addMapValue(map, 'marginTop'                 , this.marginTop);
    addMapValue(map, 'pinchType'                 , this.pinchType);
    addMapValue(map, 'plotBackgroundColor'       , this.plotBackgroundColor);
    addMapValue(map, 'plotBackgroundImage'       , this.plotBackgroundImage);
    addMapValue(map, 'plotBorderColor'           , this.plotBorderColor);
    addMapValue(map, 'plotBorderWidth'           , this.plotBorderWidth);
    addMapValue(map, 'plotShadow'                , this.plotShadow);
    addMapValue(map, 'polar'                     , this.polar);
    addMapValue(map, 'reflow'                    , this.reflow);
    addMapValue(map, 'renderTo'                  , this.renderTo); 
    addMapValue(map, 'resetZoomButton'           , this.resetZoomButton);
    addMapValue(map, 'selectionMarkerFill'       , this.selectionMarkerFill);
    addMapValue(map, 'shadow'                    , this.shadow);
    addMapValue(map, 'showAxes'                  , this.showAxes);
    addMapValue(map, 'spacing'                   , this.spacing);
    addMapValue(map, 'spacingBottom'             , this.spacingBottom);
    addMapValue(map, 'spacingLeft'               , this.spacingLeft);
    addMapValue(map, 'spacingRight'              , this.spacingRight);
    addMapValue(map, 'spacingTop'                , this.spacingTop);
    addMapValue(map, 'style'                     , this.style);
    addMapValue(map, 'type'                      , this.type);
    addMapValue(map, 'width'                     , this.width); 
    addMapValue(map, 'zoomType'                  , this.zoomType);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
  
}

class ResetZoomButton extends OptionsObject implements ToMap {
  Position _position;
  /**
   * The position of the button. This is an object that can hold the properties align, verticalAlign, x and y.
   */
  @reflectable set position (Position a_position) {
    _position = configureNotifiers(#position, _position, a_position);
  }
  @reflectable Position get position => _position;
  
  String _relativeTo;
  /**
   * What frame the button should be placed related to. Can be either "plot" or "chart". Defaults to plot.
   */
  @reflectable set relativeTo (String a_relativeTo) {
    _relativeTo = configureNotifiers(#relativeTo, _relativeTo, a_relativeTo);
  }
  @reflectable String get relativeTo => _relativeTo;
  
  
  Map _theme;
  /**
   * A collection of attributes for the button. The object takes SVG attributes like fill, stroke, stroke-width or r, the border radius. The theme also supports style, a collection of CSS properties for the text. Equivalent attributes for the hover state are given in theme.states.hover.
   */
  @reflectable set theme (Map a_theme) {
    _theme = configureNotifiers(#theme, _theme, a_theme);
  }
  @reflectable Map get theme => _theme;
  
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'position', this.position);
    addMapValue(map, 'relativeTo', this.relativeTo);
    addMapValue(map, 'theme', this.theme);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class Position extends OptionsObject implements ToMap {
  String _align;
  @reflectable set align (String a_align) {
    _align = configureNotifiers(#align, _align, a_align);
  }
  @reflectable String get align => _align;
  
  String _verticalAlign;
  @reflectable set verticalAlign (String a_verticalAlign) {
    _verticalAlign = configureNotifiers(#verticalAlign, _verticalAlign, a_verticalAlign);
  }
  @reflectable String get verticalAlign => _verticalAlign;
  
  int _x;
  @reflectable set x (int a_x) {
    _x = configureNotifiers(#x, _x, a_x);
  }
  @reflectable int get x => _x;
  
  int _y;
  @reflectable set y (int a_y) {
    _y = configureNotifiers(#y, _y, a_y);
  }
  @reflectable int get y => _y;
  
  Position ();
  
  Map toMap () {
    Map map = new Map ();
    addMapValue(map, 'align', this.align); 
    addMapValue(map, 'verticalAlign', this.verticalAlign); 
    addMapValue(map, 'x', this.x);
    addMapValue(map, 'y', this.y);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
  
}

class ChartEvents extends OptionsObject implements ToMap {
  
  Function _addSeries;
  /**
   * Fires when a series is added to the chart after load time, using the addSeries method. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts. Through event.options you can access the series options that was passed to the addSeries method. Returning false prevents the series from being added.
   */
  @reflectable set addSeries (Function a_addSeries) {
    _addSeries = configureNotifiers(#addSeries, _addSeries, a_addSeries);
  }
  @reflectable Function get addSeries => _addSeries;
  
  
  Function _click;
  /**
   * Fires when clicking on the plot background. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   * Information on the clicked spot can be found through event.xAxis and event.yAxis, which are arrays containing the axes of each dimension and each axis' value at the clicked spot. The primary axes are event.xAxis[0] and event.yAxis[0]. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.
   */
  @reflectable set click (Function a_click) {
    _click = configureNotifiers(#click, _click, a_click);
  }
  @reflectable Function get click => _click;
  
  Function _drilldown;
  /**
   * Fires when a drilldown point is clicked, before the new series is added. Event arguments include point for the originating point, and seriesOptions for the new series.
   * This event is also utilized for async drilldown, where the seriesOptions are not added by option, but rather loaded async.
   */
  @reflectable set drilldown (Function a_drilldown) {
    _drilldown = configureNotifiers(#drilldown, _drilldown, a_drilldown);
  }
  @reflectable Function get drilldown => _drilldown;
  
  Function _drillup;
  /**
   * Fires when drilling up from a drilldown series.
   */
  @reflectable set drillup (Function a_drillup) {
    _drillup = configureNotifiers(#drillup, _drillup, a_drillup);
  }
  @reflectable Function get drillup => _drillup;
  
  Function _load;
  /**
   * Fires when the chart is finished loading. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   * From version 2.0.4, there is also a second parameter to Highcharts.Chart where a callback function can be passed to be executed on chart.load.
   */
  @reflectable set load (Function a_load) {
    _load = configureNotifiers(#load, _load, a_load);
  }
  @reflectable Function get load => _load;
  
  Function _redraw;
  /**
   * Fires when the chart is redrawn, either after a call to chart.redraw() or after an axis, series or point is modified with the redraw option set to true. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts.
   */
  @reflectable set redraw (Function a_redraw) {
    _redraw = configureNotifiers(#redraw, _redraw, a_redraw);
  }
  @reflectable Function get redraw => _redraw;
  
  Function _selection;
  /**
   * Fires when an area of the chart has been selected. Selection is enabled by setting the chart's zoomType. The this keyword refers to the chart object itself. One parameter, event, is passed to the function. This contains common event information based on jQuery or MooTools depending on which library is used as the base for Highcharts. The default action for the selection event is to zoom the chart to the selected area. It can be prevented by calling event.preventDefault().
   * Information on the selected area can be found through event.xAxis and event.yAxis, which are arrays containing the axes of each dimension and each axis' min and max values. The primary axes are event.xAxis[0] and event.yAxis[0]. Remember the unit of a datetime axis is milliseconds since 1970-01-01 00:00:00.
   */
  @reflectable set selection (Function a_selection) {
    _selection = configureNotifiers(#selection, _selection, a_selection);
  }
  @reflectable Function get selection => _selection;
  
  Map toMap () {
    Map map = new Map ();
    addMapValue (map, 'addSeries'   , this.addSeries); 
    addMapValue (map, 'click'       , this.click);
    addMapValue (map, 'drilldown'   , this.drilldown); 
    addMapValue (map, 'drillup'     , this.drillup);
    addMapValue (map, 'load'        , this.load);
    addMapValue (map, 'redraw'      , this.redraw); 
    addMapValue (map, 'selection'   , this.selection);
    if (moreOptions != null) {
      map.addAll(moreOptions);
    }
    return map;
  }
}