--
-- SQL script to rebuild the context indexes.
--
--
-- $GNF: projects/gi/symgene/src/DB/BS-ctx-rebuild.sql,v 1.3 2002/11/26 10:11:26 hlapp Exp $
--

--
-- (c) Hilmar Lapp, hlapp at gnf.org, 2002.
-- (c) GNF, Genomics Institute of the Novartis Research Foundation, 2002.
--
-- You may distribute this module under the same terms as Perl.
-- Refer to the Perl Artistic License (see the license accompanying this
-- software package, or see http://www.perl.com/language/misc/Artistic.html)
-- for the terms under which you may use, modify, and redistribute this module.
-- 
-- THIS PACKAGE IS PROVIDED "AS IS" AND WITHOUT ANY EXPRESS OR IMPLIED
-- WARRANTIES, INCLUDING, WITHOUT LIMITATION, THE IMPLIED WARRANTIES OF
-- MERCHANTIBILITY AND FITNESS FOR A PARTICULAR PURPOSE.
--

ALTER INDEX EntDesc_Context REBUILD ONLINE 
PARAMETERS('REPLACE datastore ent_desc_ud lexer ent_desc_lx filter ctxsys.null_filter section group tagsections')
;

ALTER INDEX RefDoc_Context REBUILD ONLINE ;

exit