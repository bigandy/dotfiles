module.exports = {
  config: {
    fontSize: 16,
    fontFamily: '"Source Code Pro"',
    cursorColor: 'rgba(248,28,229,0.75)',
    cursorShape: 'BLOCK',
    foregroundColor: '#fff',
    backgroundColor: '#000',
    borderColor: '#000',
    css: `
      .tab_text {
        background-color: grey;
        color: #fff;
        font-weight: bold;
        border-right-color: white;
      }

      .tab_textActive {
        border: 1px solid orange;
        border-right-color: white;
        background-color: orange;
      }

      .tab_hasActivity:hover {
        color: #96d4e4;
      }
    `,
    workingDirectory: '~/Sites',
    termCSS: `
      x-screen a {
        display: inline-block;
        padding: .25em .5em;
        color: white;
        mix-blend-mode: difference;
        position: relative;
      }

      x-screen a::before {
        z-index: -1;
        content: "";
        display: block;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        background-image: linear-gradient(to right, red 0%, orange 16.666666667%, yellow 33.333333333%, green 50%, blue 66.666666667%, indigo 83.333333333%, violet 100%);
      }

      x-screen a.hover {
        text-decoration: none;
      }

      ::selection { background-color: rgba(233, 44, 108, 0.8); color: #fcfcfc; }
    `,
    padding: '12px 14px',
    windowSize: [1300, 1300],

    hyperclean: {
      hideTabs: false
    }
  },
  plugins: [
    'hyperlinks',
    'hyperterm-working-directory',
    'hyperterm-blink',
    'hyperclean',
  ],
};
