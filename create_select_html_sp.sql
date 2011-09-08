DELIMITER //
DROP PROCEDURE select_html//
CREATE PROCEDURE select_html(page_name text(50))
BEGIN
DECLARE x SMALLINT;
select max(vid) into x from node_revisions where title=page_name;
select  body from node_revisions where title=page_name and vid=x;
END
//

