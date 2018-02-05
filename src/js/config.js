require.config({
	paths:{
		'jquery':'../lib/jquery-3.2.1',
		'carousel':'../lib/jquery-lxCarousel/jquery.lxCarousel',
		'zoom':'../lib/jquery.gdsZoom/jquery.gdsZoom'
	},

	shim:{
		// 设置依赖
		'zoom':['jquery'],
		'carousel':['jquery']
	}
});
