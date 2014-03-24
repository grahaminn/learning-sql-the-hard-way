SELECT COUNT (track_streams.user_id)
  FROM subscriptions, track_streams
  where subscriptions.user_id = track_streams.user_id
  AND subscriptions.subscription_type_id=40
  AND track_streams.date > now() - INTERVAL '1 week';