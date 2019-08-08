{
  "name": "Zlibwebp",
  "version": "1.0.3.1",
  "summary": "Library to encode and decode images in WebP format.",
  "homepage": "https://github.com/webmproject/libwebp",
  "authors": "Google Inc.",
  "license": {
    "type": "BSD",
    "file": "COPYING"
  },
  "source": {
    "git": "https://github.com/webmproject/libwebp",
    "tag": "v1.0.3"
  },
  "compiler_flags": "-D_THREAD_SAFE",
  "requires_arc": false,
  "platforms": {
    "osx": null,
    "ios": null,
    "tvos": null,
    "watchos": null
  },
  "subspecs": [{
      "name": "webp",
      "header_dir": "webp",
      "source_files": "src/webp/*.h"
    },
    {
      "name": "core",
      "source_files": [
        "src/utils/*.{h,c}",
        "src/dsp/*.{h,c}",
        "src/enc/*.{h,c}",
        "src/dec/*.{h,c}"
      ],
      "dependencies": {
        "libwebp/webp": [

        ]
      }
    },
    {
      "name": "utils",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    },
    {
      "name": "dsp",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    },
    {
      "name": "enc",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    },
    {
      "name": "dec",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    },
    {
      "name": "demux",
      "source_files": "src/demux/*.{h,c}",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    },
    {
      "name": "mux",
      "source_files": "src/mux/*.{h,c}",
      "dependencies": {
        "libwebp/core": [

        ]
      }
    }
  ]
}