---
layout: post
categories: tech
title: draw curve lines by using highcharts
typora-root-url: ../
---
## draw curve lines by using highcharts

```html
<!DOCTYPE HTML>
<html>
<body>
<div id="container" style="min-width: 310px; height: 400px; margin: 0 auto"></div>
	<script src="highcharts.js"></script>
	<script src="series-label.js"></script>
	<script src="exporting.js"></script>
	<script src="export-data.js"></script>
	<script type="text/javascript">
	Highcharts.chart('container', {
		chart: {
				type: 'line',
				zoomType: 'x',
				panning: true,
				panKey: 'shift'
			},
		series: [{
			name: 'depth',
			data: [
				2870,2871,2870,2860,2870,2870,2868,2875,2874,2866,2875,
				2871,2866,2860,2868,2870,2874,2867,2866,2867,2876,2875,2863,
			]
		}]
		}
	);
	</script>
</body>
</html>
```

##### Ref:

- [https://www.highcharts.com.cn/docs/basic-zoom](https://www.highcharts.com.cn/docs/basic-zoom)