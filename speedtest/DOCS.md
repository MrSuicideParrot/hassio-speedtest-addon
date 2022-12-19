# SpeedTest Home Assistant Addon

Home Assistant has a native [integration with Speedtest.net](https://www.home-assistant.io/integrations/speedtestdotnet/). However, it uses a third-party speedtest implementation in python that may not produce accurate measures. This addon aims to integrate the [official speedtest binary](https://www.speedtest.net/apps/cli) with Home Assistant to mitigate this problem.

There have been previous attempts to do this, but imply the installation of custom scripts and the `speedtest-cli` directly into the operating system. This 

## Configuration

Example add-on configuration:
```yaml
accept_eula: true
accept_rgpd: true
server_id: null
```

In this case, the addon would choose a random SpeedTest server each time it runs. It is recommended to specify a `server_id`  to have comparable meaasurements. You can use this [page](https://sparanoid.com/lab/speedtest-list/) to explore the list of available servers. (The `server_id`is an integrer.)

## Licensing

To use this addon you must accept the SpeedTest's End User License Agreement, Terms of Use and Privacy Policy. They are available at these links:
. https://www.speedtest.net/about/eula
. https://www.speedtest.net/about/terms
. https://www.speedtest.net/about/privacy

After reading these policies you could accept them by turning on the `accept_eula` and `accept_rgpd` in the addon's configuration tab.