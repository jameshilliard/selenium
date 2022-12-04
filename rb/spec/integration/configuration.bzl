ENV = select({
    "//rb/spec/integration:chrome": {
        "WD_SPEC_DRIVER": "chrome",
    },
    "//rb/spec/integration:edge": {
        "WD_SPEC_DRIVER": "edge",
    },
    "//rb/spec/integration:firefox": {
        "WD_SPEC_DRIVER": "firefox",
    },
    "//rb/spec/integration:ie": {
        "WD_SPEC_DRIVER": "ie",
    },
    "//rb/spec/integration:safari": {
        "WD_SPEC_DRIVER": "safari",
    },
    "//rb/spec/integration:remote-chrome": {
        "WD_REMOTE_BROWSER": "chrome",
        "WD_SPEC_DRIVER": "remote",
    },
    "//rb/spec/integration:remote-edge": {
        "WD_REMOTE_BROWSER": "edge",
        "WD_SPEC_DRIVER": "remote",
    },
    "//rb/spec/integration:remote-firefox": {
        "WD_REMOTE_BROWSER": "firefox",
        "WD_SPEC_DRIVER": "remote",
    },
    "//rb/spec/integration:remote-ie": {
        "WD_REMOTE_BROWSER": "ie",
        "WD_SPEC_DRIVER": "remote",
    },
    "//rb/spec/integration:remote-safari": {
        "WD_REMOTE_BROWSER": "safari",
        "WD_SPEC_DRIVER": "remote",
    },
    "//conditions:default": {},
})

TAGS = select({
    "//rb/spec/integration:firefox": ["no-sandbox"],  # https://bugzilla.mozilla.org/show_bug.cgi?id=1382498
    "//rb/spec/integration:safari": ["exclusive"],  # SafariDriver doesn't support parallelism
    "//conditions:default": [],
})
