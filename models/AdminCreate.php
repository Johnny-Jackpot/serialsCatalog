<?php

class AdminCreate {

    /**
     * Check empty fields
     * @param array $data
     * @param array $errorsNames
     * @return boolean|array
     */
    private static function checkEmptyFields($data, $errorsNames) {
        $errors = [];
        foreach ($data as $key => $value) {
            if (!isset($data[$key]) || empty($data[$key])) {
                $errors[] = $errorsNames[$key];
            }
        }

        if (count($errors)) {
            return $errors;
        }

        return false;
    }

    /**
     * Simple newSerial`s data validation
     * @param type $arr
     * @return boolean|array
     */
    public static function validateNewSerial($data) {
        $errorsNames = [
            'name' => 'Не вказано назву серіалу',
            'description' => 'Не вказано опис серіалу',
            'seasons' => 'Не вказано кількість сезонів',
            'episodes' => 'Не вказано кількість серій',
            'genre' => 'Не вказано жанр',
            'yearStart' => 'Не вказано рік початку показів',
            'yearFinish' => 'Не вказано рік кінця показів'
        ];

        return self::checkEmptyFields($data, $errorsNames);
    }

    /**
     * Simple newSeason data validation
     * @param type $arr
     * @return boolean|array
     */
    public static function validateNewSeason($data) {
        $errorsNames = [
            'description' => 'Не вказано опис сезону',
            'seasonsNum' => 'Не вказано номер сезону',
            'episodes' => 'Не вказано кількість серій',
            'year' => 'Не вказано рік'
        ];

        return self::checkEmptyFields($data, $errorsNames);
    }

    /**
     * Simple newEpisode data validation
     * @param arr $data
     * @return bool|arr
     */
    public static function validateNewEpisode($data) {
        $errorsNames = [
            'episodNum' => 'Не вказано номер серії.',
            'name' => 'Не вказано назву серіїю',
            'description' => 'Не вказано опис серії'
        ];

        return self::checkEmptyFields($data, $errorsNames);
    }

    /**
     * Create new serial
     * @param array $arr
     * @return bool
     */
    public static function createNewSerial($fields) {
        $db = Db::getConnection();
        $sql = "INSERT INTO serials (name, description, seasons, "
                . "episodes, genre, yearStart, yearFinish) "
                . "VALUES(:name, :description, :seasons, :episodes, :genre, "
                . ":yearStart, :yearFinish)";
        $result = $db->prepare($sql);
        $result->bindParam(':name', $fields['name'], PDO::PARAM_STR);
        $result->bindParam(':description', $fields['description'], PDO::PARAM_STR);
        $result->bindParam(':seasons', $fields['seasons'], PDO::PARAM_INT);
        $result->bindParam(':episodes', $fields['episodes'], PDO::PARAM_INT);
        $result->bindParam(':genre', $fields['genre'], PDO::PARAM_STR);
        $result->bindParam(':yearStart', $fields['yearStart'], PDO::PARAM_STR);
        $result->bindParam(':yearFinish', $fields['yearFinish'], PDO::PARAM_STR);

        return $result->execute();
    }
    /**
     * Add new season to serial
     * @param array $fields
     * @param int $serialId
     * @return bool
     */
    public static function addNewSeason($fields, $serialId) {
        $db = Db::getConnection();
        $sql = "INSERT INTO seasons (serialId, seasonNum, episodes, description, year) "
                . "VALUES(:serialId, :seasonNum, :episodes, :description, :year)";
        $result = $db->prepare($sql);
        $result->bindParam(':serialId', $serialId, PDO::PARAM_INT);
        $result->bindParam(':seasonNum', $fields['seasonNum'], PDO::PARAM_INT);
        $result->bindParam(':episodes', $fields['episodes'], PDO::PARAM_INT);
        $result->bindParam(':description', $fields['description'], PDO::PARAM_STR);
        $result->bindParam(':year', $fields['year'], PDO::PARAM_INT);

        return $result->execute();
    }
    /**
     * Add new Episode to particular season of Serial
     * @param array $fields
     * @param int $serialId
     * @param int $seasonId
     * @return bool
     */
    public static function addNewEpisode($fields, $serialId, $seasonId) {
        $db = Db::getConnection();
        $sql = "INSERT INTO episodes (seasonId, serialId, episodNum, name, description) "
                . "VALUES(:seasonId, :serialId, :episodNum, :name, :description)";
        $result = $db->prepare($sql);
        $result->bindParam(':seasonId', $seasonId, PDO::PARAM_INT);
        $result->bindParam(':serialId', $serialId, PDO::PARAM_INT);
        $result->bindParam(':episodNum', $fields['episodNum'], PDO::PARAM_INT);
        $result->bindParam(':name', $fields['name'], PDO::PARAM_STR);
        $result->bindParam(':description', $fields['description'], PDO::PARAM_STR);
        
        return $result->execute();
    }

}
