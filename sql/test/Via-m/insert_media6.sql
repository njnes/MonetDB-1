select add_media((select max(event_id) + 1 from event), (select max(media_description_id) from media_description), 'description 3', 1, 25, 125);
