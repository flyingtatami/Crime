looker.plugins.visualizations.add({
  // 視覚化の設定項目
  options: {
    url: {
      type: 'string',
      label: '表示するURL',
      default: 'https://docs.google.com/presentation/d/1HM6O9YitQ2X5DhkVK8gc0QfnIVpgRD50_1Elnu5zf0I/embed?slide=id.gba92cdd55d_0_238'
    }
  },
  // 初期化処理
  create: function(element, config) {
    var styleHtml = '<style>.iframe-container { width: 100%; height: 100%; border: none; }</style>';
    var iframeHtml = '<iframe id="viz-iframe" class="iframe-container"></iframe>';
    element.innerHTML = styleHtml + iframeHtml;
  },
  // 更新処理
  updateAsync: function(data, element, config, queryResponse, details, done) {
    var iframe = element.querySelector('#viz-iframe');
    if (config && config.url) {
      iframe.src = config.url;
    }
    if (done) {
      done();
    }
  }
});
