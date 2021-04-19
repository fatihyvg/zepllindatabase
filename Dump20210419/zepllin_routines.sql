-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: zepllin
-- ------------------------------------------------------
-- Server version	8.0.22

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping events for database 'zepllin'
--

--
-- Dumping routines for database 'zepllin'
--
/*!50003 DROP PROCEDURE IF EXISTS `sp_commentsadd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_commentsadd`(IN CommentContents VARCHAR(300),IN CommentFk INT,IN CommentUserName VARCHAR(45),IN CommentDate VARCHAR(50))
BEGIN
INSERT INTO Comments(CommentContents, CommentFk,CommentUserName,CommentDate) VALUES(CommentContents,CommentFk,CommentUserName,CommentDate);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deletefromfolderandatabase` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deletefromfolderandatabase`(IN usernormıd INT)
BEGIN
DELETE FROM UserImages WHERE UserNormalId = usernormıd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteimage` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_deleteimage`(IN ımıd INT)
BEGIN
DELETE FROM UserImages WHERE UserImages.ImageId = ımıd; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getbycategory` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getbycategory`(IN CategoryFk  INT)
BEGIN
SELECT ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE EXISTS(SELECT 1 FROM Category WHERE UserImages.ImageCategoryFk = CategoryFk AND Category.CategoryId = CategoryFk);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getcomments` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getcomments`(IN ımageıd INT)
BEGIN
SELECT c.CommentId, c.CommentContents,c.CommentFk,c.CommentUserName,c.CommentDate 
FROM Comments c 
WHERE EXISTS(SELECT 1 FROM UserImages us WHERE us.ImageId = ımageıd AND c.CommentFk = ımageıd) ORDER BY c.CommentId DESC;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getsearchresult` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getsearchresult`(IN term VARCHAR(160))
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE UserImages.ImageTitle = term;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getuserby` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserby`(IN ıd INT)
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE UserNormalId = ıd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getuserbyfetch` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getuserbyfetch`(IN username VARCHAR(70))
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE UserImages.UserName = username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_getvotes` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_getvotes`(IN VotesContentId INT)
BEGIN
SELECT v.VoteId,v.VoteNumbers,v.VoteContentId FROM Votes v WHERE EXISTS(SELECT 1 FROM UserImages US WHERE us.ImageId = VotesContentId AND v.VoteContentId = VotesContentId);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_ımgandtitle` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_ımgandtitle`(IN ıd INT)
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE EXISTS(SELECT 1 FROM UserImages WHERE UserImages.ImageId = ıd); 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_pendingapproval` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_pendingapproval`(IN ıd INT)
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE UserImages.UserNormalId = ıd; 
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_search` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_search`(IN term VARCHAR(160))
BEGIN
SELECT 
ImageId,
ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFk,
ImageSrc,
UserName,
UserEmail,
ImageNewNumber,
UserNormalId,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,ImageExifMake FROM UserImages WHERE MATCH(ImageWithoutSeoTitle) AGAINST(CONCAT('+',term,'*') IN BOOLEAN MODE);


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updateimages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updateimages`(IN imıd INT,IN imagetitle VARCHAR(160),IN imagewithoutseotitle VARCHAR(160),IN imagecategory INT)
BEGIN
UPDATE UserImages SET ImageTitle = imagetitle,ImageCategoryFk = imagecategory,ImageWithoutSeoTitle = imagewithoutseotitle WHERE ImageId = imıd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_updatevote` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_updatevote`(IN votecontentıd INT,IN votenumber INT)
BEGIN
UPDATE Votes v SET v.VoteNumbers = votenumber++1 WHERE EXISTS(SELECT 1 FROM UserImages usr WHERE usr.ImageId = votecontentıd AND v.VoteContentId = votecontentıd);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_uploadimages` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_uploadimages`(IN ImageTitle VARCHAR(160),
IN ImageWithoutSeoTitle VARCHAR(160),
IN ImageCategoryFK INT,
IN ImageSrc VARCHAR(300),
IN UserNormalId INT,
IN UserName VARCHAR(70),
IN UserEmail VARCHAR(100),
IN ImageNewNumber VARCHAR(12),
IN ImageApprove INT,
IN ImageEdıtor INT,
IN ImageExifIso VARCHAR(10),
IN ImageExifFNumber VARCHAR(10),
IN ImageExifFocalLength VARCHAR(15),
IN ImageExifLensModel VARCHAR(30),
IN ImageExifMeteringMode VARCHAR(50),
IN ImageExifModel VARCHAR(30),
IN ImageExifShutterSpeedValue VARCHAR(30),
IN ImageExifExposureMode VARCHAR(30),
IN ImageExifExposureProgram VARCHAR(20),
IN ImageExifExposureTime VARCHAR(20),
IN ImageExifMake VARCHAR(30))
BEGIN
INSERT INTO UserImages(ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFK,
ImageSrc,
UserNormalId,
UserName,
UserEmail,
ImageNewNumber,
ImageApprove,
ImageEdıtor,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,
ImageExifMake)
VALUES(ImageTitle,
ImageWithoutSeoTitle,
ImageCategoryFK,
ImageSrc,
UserNormalId,
UserName,
UserEmail,
ImageNewNumber,
ImageEdıtor,
ImageApprove,
ImageExifIso,
ImageExifFNumber,
ImageExifFocalLength,
ImageExifLensModel,
ImageExifMeteringMode,
ImageExifModel,
ImageExifShutterSpeedValue,
ImageExifExposureMode,
ImageExifExposureProgram,
ImageExifExposureTime,
ImageExifMake);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_voteadd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `sp_voteadd`(IN VoteNumber BIGINT,IN VoteContentId INT)
BEGIN
INSERT INTO Votes(VoteNumbers,VoteContentId) VALUES(VoteNumber,(SELECT ImageId FROM UserImages WHERE ImageNewNumber = VoteContentId));
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-19 19:32:42
