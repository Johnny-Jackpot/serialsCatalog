<?php

/**
 * Processing episodes data
 */
class Episode {
    /**
     * Get only one episode description
     * @param int $episodeId
     * @return array
     */
    public static function getEpisode($episodeId){
        $db = Db::getConnection();
        $sql = "SELECT * FROM episodes WHERE id = :episodeId";
        $result = $db->prepare($sql);
        $result->bindParam(':episodeId', $episodeId, PDO::PARAM_INT);
        $result->execute();
        $result->setFetchMode(PDO::FETCH_ASSOC);
        
        return $result->fetch();
    }
}

