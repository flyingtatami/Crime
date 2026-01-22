looker.plugins.visualizations.add({
  // Metadata for the viz
  id: "google_slides_embed",
  label: "Google Slides Embed",
  options: {
    embed_url: {
      type: "string",
      label: "Google Slides Embed URL",
      display: "text",
      default: "",
      placeholder: "Paste the Embed URL here..."
    }
  },

  // Set up the initial state of the visualization
  create: function(element, config) {
    element.innerHTML = `
      <style>
        .slide-container {
          width: 100%;
          height: 100%;
          display: flex;
          justify-content: center;
          align-items: center;
          overflow: hidden;
        }
        iframe {
          width: 100%;
          height: 100%;
          border: none;
        }
      </style>
      <div class="slide-container">
        <iframe id="slide-frame" src=""></iframe>
      </div>
    `;
    this._iframe = element.querySelector("#slide-frame");
  },

  // Render in response to changes
  updateAsync: function(data, element, config, queryResponse, details, done) {
    // If a URL is set in the options, update the iframe
    if (config.embed_url) {
      this._iframe.src = config.embed_url;
    } else {
      // Placeholder if no URL is provided
      element.innerHTML = "<div style='padding:20px;'>Please enter a Google Slides Embed URL in the Visualization Settings.</div>";
    }
    done();
  }
});