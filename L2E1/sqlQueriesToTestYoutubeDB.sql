-- Users list and theirs channels

SELECT u.users_name, c.channels_name
FROM youtubeDB.users u
LEFT JOIN youtubeDB.channels c
ON u.user_id = c.users_user_id
WHERE c.channels_name IS NOT null
ORDER BY u.user_id;

-- Video list with user , state and tag
SELECT v.videos_title, v.videos_state, u.users_name, t.tags_name
FROM youtubeDB.videos v
JOIN youtubeDB.users u
ON v.users_user_id = u.user_id
JOIN youtubeDB.videos_has_tags vt
ON v.videos_id = vt.videos_videos_id
JOIN youtubeDB.tags t
ON vt.tags_tags_id = t.tags_id
ORDER BY v.videos_id;

-- List comments and asociated likes/dislikes
SELECT c.comments_text AS comment,  cu.users_name AS commenter, cl.users_user_id AS liked_by, cl.comments_likes_status
FROM youtubeDB.comments c
JOIN youtubeDB.users cu
ON c.users_user_id = cu.user_id
LEFT JOIN youtubeDB.comments_likes cl
ON c.comments_id = cl.comments_comments_id
AND c.users_user_id = cl.comments_users_user_id
AND c.videos_videos_id = cl.comments_videos_videos_id
ORDER BY c.comments_id;

-- List  playlists and user's videos
SELECT u.users_name, v.videos_title
FROM youtubeDB.playlist p
JOIN youtubeDB.users u
ON p.users_user_id = u.user_id
JOIN youtubeDB.videos v
ON p.videos_videos_id = v.videos_id
ORDER BY p.users_user_id, p.videos_videos_id;
