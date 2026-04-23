#!/usr/bin/env python3
from __future__ import annotations

import os
import sys
import urllib.error
import urllib.request


def check(url: str) -> tuple[bool, str]:
    try:
        with urllib.request.urlopen(url, timeout=5) as response:
            return True, f"{url} -> {response.status}"
    except urllib.error.URLError as exc:
        return False, f"{url} -> {exc}"


def main() -> int:
    api_url = os.environ.get("PIXELLE_API_URL", "http://localhost:8000").rstrip("/")
    web_url = os.environ.get("PIXELLE_WEB_URL", "http://localhost:8501").rstrip("/")

    targets = [
        f"{api_url}/health",
        f"{web_url}/_stcore/health",
    ]

    ok = True
    for target in targets:
        success, message = check(target)
        print(message)
        ok = ok and success

    return 0 if ok else 1


if __name__ == "__main__":
    sys.exit(main())
