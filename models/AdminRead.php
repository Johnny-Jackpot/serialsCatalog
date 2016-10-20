<?php

/**
 * read admin info from db
 */
class AdminRead {

    const ITEMS_PER_PAGE = 20;

    /**
     * Get catalog of last N serials. N = SERIALS_PER_PAGE
     * @return array $serials
     */
    public static function getSerials() {
        $db = Db::getConnection();
        $sql = "SELECT * FROM serials ORDER BY id DESC LIMIT "
                . self::ITEMS_PER_PAGE;
        $result = $db->query($sql);
        $result->setFetchMode(PDO::FETCH_ASSOC);

        $serials = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $serials[$i] = [];
            $serials[$i]['id'] = $row['id'];
            $serials[$i]['name'] = $row['name'];
            $serials[$i]['genre'] = $row['genre'];
            $serials[$i]['seasons'] = $row['seasons'];
            $serials[$i]['episodes'] = $row['episodes'];
            $serials[$i]['yearStart'] = $row['yearStart'];
            $serials[$i]['yearFinish'] = $row['yearFinish'];
            $i++;
        }

        return $serials;
    }

    public static function getSeasons($id) {
        $db = Db::getConnection();
        $sql = "SELECT * FROM seasons WHERE serialId = :id ORDER BY id DESC LIMIT "
                . self::ITEMS_PER_PAGE;
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        $seasons = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $seasons[$i] = [];
            $seasons[$i]['id'] = $row['id'];
            $seasons[$i]['seasonNum'] = $row['seasonNum'];
            $seasons[$i]['episodes'] = $row['episodes'];
            $seasons[$i]['year'] = $row['year'];
            $i++;
        }

        return $seasons;
    }

    public static function getEpisodes($seasonId) {
        $db = Db::getConnection();
        $sql = "SELECT id, episodNum, name, description FROM episodes "
                . "WHERE seasonId = :seasonId";
        $result = $db->prepare($sql);
        $result->bindParam(':seasonId', $seasonId, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();

        $episodes = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $episodes[$i] = [];
            $episodes[$i]['id'] = $row['id'];
            $episodes[$i]['episodNum'] = $row['episodNum'];
            $episodes[$i]['name'] = $row['name'];
            $episodes[$i]['description'] = $row['description'];
            $i++;
        }
        
        return $episodes;
    }
    
    public static function  getSeasonNum($id) {
        $db = Db::getConnection();
        $sql = "SELECT seasonNum FROM seasons WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':id', $id, PDO::PARAM_INT);
        $result->setFetchMode(PDO::FETCH_ASSOC);
        $result->execute();
        return $result->fetch()['seasonNum'];
    }
    
    /**
     * 
     * @param int $id of season, but not serial
     */
    public static function getSerialNameAndId($seasonId) {
        $db = Db::getConnection();
        $sql = "SELECT serialId FROM seasons WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':id', $seasonId, PDO::PARAM_INT);
        $result->execute();
        $serialId = $result->fetch()['serialId'];
        
        $sql = "SELECT name FROM serials WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':id', $serialId, PDO::PARAM_INT);
        $result->execute();
        
        $serialName =  $result->fetch()['name'];
        
        return ['serialId' => $serialId, 'serialName' => $serialName];
    } 
    
    public static function getSerialId($name) {
        $db = Db::getConnection();
        $sql = "SELECT id FROM serials WHERE name = :name";
        $result = $db->prepare($sql);
        $result->bindParam(':name', $name, PDO::PARAM_STR);
        $result->execute();
        
        return $result->fetch()['id'];
    }

}
