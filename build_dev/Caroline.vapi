/* Caroline.vapi generated by valac 0.40.25, do not modify. */

[CCode (cheader_filename = "Caroline.h")]
public class Caroline : Gtk.DrawingArea {
	public struct ChartColor {
		public double r;
		public double g;
		public double b;
	}
	public struct Point {
		public double x;
		public double y;
	}
	public Gee.ArrayList<Gee.ArrayList<Caroline.ChartColor?>> chartColorArray;
	public Gee.ArrayList<double?> labelXList;
	public Gee.ArrayList<Gee.ArrayList<Caroline.Point?>> pointsArray;
	public Gee.ArrayList<Gee.ArrayList<Caroline.Point?>> pointsCalculatedArray;
	public Caroline (GLib.GenericArray<double?> dataX, GLib.Array<GLib.GenericArray<double?>> dataY, GLib.Array<string> chartTypes, bool generateColors, bool scatterPlotLabels);
	public override bool draw (Cairo.Context cr);
	public void updateData (GLib.GenericArray<double?> dataX, GLib.GenericArray<double?> dataY, string chartType, bool generateColors);
	public int chartPadding { get; set; }
	public GLib.Array<string> chartTypes { get; set; }
	public string dataTypeX { get; set; }
	public string dataTypeY { get; set; }
	public double gap { get; set; }
	public int height { get; set; }
	public double lineThicknessData { get; set; }
	public double lineThicknessPlane { get; set; }
	public double lineThicknessTicks { get; set; }
	public double max { get; set; }
	public double min { get; set; }
	public int pieChartLabelBSize { get; set; }
	public int pieChartLabelOffsetX { get; set; }
	public int pieChartLabelOffsetY { get; set; }
	public int pieChartRadius { get; set; }
	public int pieChartXStart { get; set; }
	public int pieChartYLabelBSpacing { get; set; }
	public int pieChartYLabelBStart { get; set; }
	public int pieChartYStart { get; set; }
	public bool scatterLabels { get; set; }
	public double spreadX { get; set; }
	public double spreadY { get; set; }
	public int width { get; set; }
}
[CCode (cheader_filename = "Caroline.h")]
public class Bar {
	public Bar ();
	public void drawBarChart (Cairo.Context cr, Gee.ArrayList<Caroline.Point?> pointsArray, double baseline, Gee.ArrayList<Caroline.ChartColor?> chartColorArray);
}
[CCode (cheader_filename = "Caroline.h")]
public class Line {
	public Line ();
	public void drawLineChart (Cairo.Context cr, Gee.ArrayList<Caroline.Point?> pointsArray, double baseline, Gee.ArrayList<Caroline.ChartColor?> chartColorArray);
}
[CCode (cheader_filename = "Caroline.h")]
public class Scatter {
	public Scatter ();
	public void drawScatterChart (Cairo.Context cr, Gee.ArrayList<Caroline.Point?> pointsArrayCalculated, Gee.ArrayList<Caroline.Point?> pointsArray, bool scatterLabels, Gee.ArrayList<Caroline.ChartColor?> chartColorArray);
}
[CCode (cheader_filename = "Caroline.h")]
public class LineSmooth {
	public LineSmooth ();
	public void drawLineSmoothChart (Cairo.Context cr, Gee.ArrayList<Caroline.Point?> pointsArray, double baseline, Gee.ArrayList<Caroline.ChartColor?> chartColorArray);
}
[CCode (cheader_filename = "Caroline.h")]
public class Pie {
	public Pie ();
	public void drawPieChart (Cairo.Context cr, Gee.ArrayList<Caroline.Point?> pointsArray, Gee.ArrayList<Caroline.ChartColor?> chartColorArray, int pieChartXStart, int pieChartYStart, int pieChartRadius, int pieChartYLabelBStart, int pieChartYLabelBSpacing, int pieChartLabelOffsetX, int pieChartLabelOffsetY, int pieChartLabelBSize, double width);
}
