<?php

/**
 * Processing serials catalog data
 */
class Catalog {

    const SERIALS_PER_PAGE = 20;

    /**
     * Get catalog of last N serials. N = SERIALS_PER_PAGE
     * @return array $serials
     */
    public static function getCatalog() {
        $db = Db::getConnection();
        $sql = "SELECT id, name FROM serials ORDER BY id DESC LIMIT "
                . self::SERIALS_PER_PAGE;
        $result = $db->query($sql);
        $result->setFetchMode(PDO::FETCH_ASSOC);

        $serials = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $serials[$i] = [];
            $serials[$i]['id'] = $row['id'];
            $serials[$i]['name'] = $row['name'];
            $i++;
        }

        return $serials;
    }

    /**
     * Get general properties of serial
     * @param int $serialId
     * @return array
     */
    public static function getSerial($serialId) {
        $db = Db::getConnection();
        $sql = "SELECT * FROM serials WHERE id = :id";
        $result = $db->prepare($sql);
        $result->bindParam(':id', $serialId, PDO::PARAM_INT);
        $result->execute();
        $result->setFetchMode(PDO::FETCH_ASSOC);

        return $result->fetch();
    }

    /**
     * Get general properties of serials seasons if any
     * @param int $serialId
     * @return array
     */
    public static function getSeasons($serialId) {
        $db = Db::getConnection();
        $sql = "SELECT * FROM seasons WHERE serialId = :serialId";
        $result = $db->prepare($sql);
        $result->bindParam(':serialId', $serialId, PDO::PARAM_INT);
        $result->execute();
        $result->setFetchMode(PDO::FETCH_ASSOC);

        $seasons = [];
        while ($row = $result->fetch()) {
            $seasonNum = $row['seasonNum'];
            $seasons[$seasonNum] = [];
            $seasons[$seasonNum]['id'] = $row['id'];
            $seasons[$seasonNum]['serialId'] = $row['serialId'];
            $seasons[$seasonNum]['seasonNum'] = $row['seasonNum'];
            $seasons[$seasonNum]['episodes'] = $row['episodes'];
            $seasons[$seasonNum]['description'] = $row['description'];
            $seasons[$seasonNum]['year'] = $row['year'];
        }

        return $seasons;
    }

    /**
     * Get episode`s info for rendering in description of serial
     * @param int $serialId
     * @return array
     */
    public static function getEpisodes($serialId) {
        $db = Db::getConnection();
        $sql = "SELECT * FROM episodes WHERE serialId = :serialId";
        $result = $db->prepare($sql);
        $result->bindParam(':serialId', $serialId, PDO::PARAM_INT);
        $result->execute();
        $result->setFetchMode(PDO::FETCH_ASSOC);

        $episodes = [];
        $i = 0;
        while ($row = $result->fetch()) {
            $episodes[$i] = [];
            $episodes[$i]['id'] = $row['id'];
            $episodes[$i]['seasonId'] = $row['seasonId'];
            $episodes[$i]['serialId'] = $row['serialId'];
            $episodes[$i]['episodNum'] = $row['episodNum'];
            $episodes[$i]['name'] = $row['name'];
            $episodes[$i]['description'] = $row['description'];

            $i++;
        }

        return $episodes;
    }

    /**
     * Get info about serial
     * @param int $serialId
     * @return array
     */
    public static function getSerialInfo($serialId) {
        $serial = self::getSerial($serialId);
        $seasons = self::getSeasons($serialId);
        $episodes = self::getEpisodes($serialId);

        return [
            'serial' => $serial,
            'seasons' => $seasons,
            'episodes' => $episodes
        ];
    }
    /**
     * Return serial image
     * @param int $id
     * @return string
     */
    public static function getImage($id) {
        $image = "/template/images/serials/{$id}.jpg";
        $noImage = '/template/images/serials/no-image.jpg';
        if (file_exists($_SERVER['DOCUMENT_ROOT'] . $image)) {
            return $image;
        }
        
        return $noImage;
    }

}
