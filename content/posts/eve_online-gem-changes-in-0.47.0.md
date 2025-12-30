+++
date = '2025-12-30T19:37:28+01:00'
draft = true
title = 'eve_online gem changes in 0.47.0'
+++

Hello,

CCP Games changed REST API for Eve Online again.

Let's look on those changes. Get server status:

```shell
curl -X 'GET' \
  'https://esi.evetech.net/status' \
  -H 'accept: application/json' \
  -H 'Accept-Language: en' \
  -H 'X-Compatibility-Date: 2025-12-16' \
  -H 'X-Tenant: tranquility'
```

Output the same:

```json
{"players":33824,"server_version":"3145366","start_time":"2025-12-30T11:01:58Z"}
```

Did you see `X-Compatibility-Date` and url `https://esi.evetech.net/status` ?

This is how new REST API is works.

So, it's time to rewrite `eve_online` gem for better future.

First change is new `client` object:

```ruby
# create new client
client = EveOnline::ESI::Client.new
```

Second, we will ask ESI via this new `client`. Example for server status:

```ruby
# ask client about server status (and cached in memory)
server_status = client.server_status.info

# .as_json for saving.
# E.g. for rails:
# model.assign_attributes = server_status.as_json
# model.save
server_status.as_json # => {:players=>36703,
                      #     :server_version=>"3145366",
                      #     :start_time=>"2025-12-28T11:01:58Z",
                      #     :vip=>nil}

# or just get any info from response
server_status.players        # => 36703
server_status.server_version # => "3145366"
server_status.start_time     # => "2025-12-28T11:01:58Z"
server_status.vip            # => nil
```

As you can see, response "model" is the same. You can call `.as_json` and `.players` (or any other data)
on this model. Just "save" it as "response".

In this example `start_time` is not yet parsed. WIP.

Thanks for reading!
