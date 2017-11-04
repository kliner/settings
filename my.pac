function FindProxyForURL (url, host) {
	if (shExpMatch(host, "bangumi.bilibili.com")) {
    return "PROXY 47.92.117.251:8888";
	}

  return "DIRECT";
}
