DELIMITER //
DROP PROCEDURE update_html//
CREATE PROCEDURE update_html(page text(400000),page_name text(50))
BEGIN
DECLARE x SMALLINT;
select max(vid) into x from node_revisions where title=page_name;
Update node_revisions set body = page,teaser='' where title=page_name and vid=x;
END
//

