<?php

class AdminController {
    /**
     * Check whether user is admin
     * @return boolean
     */
    private static function checkAdmin() {
        $adminId = Admin::checkLogged();
        $admin = Admin::getAdmin($adminId);
        
        if ($admin['role'] == 'admin') {
            return true;
        }
        
        exit('Access denied');
    }
    
    /**
     * Render and processing admin login
     * @return boolean
     */
    public function actionLogin() {
        $email = '';
        $password = '';
        
        if (isset($_POST['email']) && isset($_POST['password'])) {
            $email = $_POST['email'];
            $password = $_POST['password'];
            
            $errors = false;
            
            $userId = Admin::checkAdminData($email, $password);
            
            if ($userId === false) {
                $errors = 'Неправильні дані';
            } else {
                Admin::auth($userId);
                header("Location: /admin");
            }
        }
        
        require_once(ROOT . '/views/admin/login.php');
        
        return true;
    }
    
    /**
     * Logout admin
     */
    public function actionLogout() {
        unset($_SESSION['user']);
        header("Location: /");
    }
    
    /**
     * Render main admin panel
     * @return boolean
     */
    public function actionIndex() {
        self::checkAdmin();
        $serials = AdminRead::getSerials();
        require_once(ROOT . '/views/admin/index.php');
        return true;
    }
    
    /**
     * Render list of serial`s seasons
     * @param int serialId
     */
    public function actionReadSeasons($id) {
        self::checkAdmin();
        $serial = Catalog::getSerial($id);
        $seasons = AdminRead::getSeasons($id);
        require_once(ROOT . '/views/admin/seasons.php');
        return true;
    }
    /**
     * Render list of season`s episodes
     * @param int $id
     * @return boolean
     */
    public function actionReadEpisodes($seasonId) {
        self::checkAdmin();
        $episodes = AdminRead::getEpisodes($seasonId);
        $season = AdminRead::getSeasonNum($seasonId);
        $serial = AdminRead::getSerialNameAndId($seasonId);
        require_once(ROOT . '/views/admin/episodes.php');
        return true;
    }
    /**
     * Add new serial
     * @return boolean
     */
    public function actionCreateSerial() {
        function renderForm($fields, $errors) {
            require(ROOT . '/views/admin/createSerial.php');
            return true;
        }
        
        self::checkAdmin();
        $fields = [
            'name' => '',
            'description' => '',
            'seasons' => '',
            'episodes' => '',
            'genre' => '',
            'yearStart' => '',
            'yearFinish' => ''
        ];
        if (!isset($_POST['submit'])) { return renderForm($fields, NULL); }
        
        foreach($_POST as $key => $value) {
            if (isset($key) && !empty($key)) {
                $fields[$key] = $value;
            }
        }
        
        $errors = AdminCreate::validateNewSerial($fields);
        if ($errors) { return renderForm($fields, $errors); }
        
        $result = AdminCreate::createNewSerial($fields);
        if (!$result) {
            $errors[] = 'Не вдалось додати серіал. Перевірте дані.';
            return renderForm($fields, $errors);
        }
        
        if (is_uploaded_file($_FILES['image']['tmp_name'])) {
            move_uploaded_file(
                $_FILES['image']['tmp_name'], 
                $_SERVER['DOCUMENT_ROOT'] . '/template/images/serials/'
                    . AdminRead::getSerialId($fields['name']) . '.jpg'
            );
        }
        
        header("Location: /admin");
        return true;
    }
    
    /**
     * Add season in serial
     * @param int serialId
     */
    public function actionAddSeason($serialId) {
        function renderForm($fields, $errors) {
            require(ROOT . '/views/admin/addSeason.php');
            return true;
        }
        
        self::checkAdmin();
        $fields = [
            'seasonNum' => '',
            'episodes' => '',
            'description' => '',
            'year' => ''
        ];
        if (!isset($_POST['submit'])) { return renderForm($fields, NULL); }
        
        foreach($_POST as $key => $value) {
            if (isset($key) && !empty($key)) {
                $fields[$key] = $value;
            }
        }
        
        $errors = AdminCreate::validateNewSeason($fields);
        if ($errors) { return renderForm($fields, $errors); }
        
        $result = AdminCreate::addNewSeason($fields, $serialId);
        var_dump($result);
        if (!$result) {
            $errors[] = 'Не вдалось додати сезон. Перевірте дані.';
            return renderForm($fields, $errors);
        }
        
        header("Location: /admin/seasons/{$serialId}");
        return true;
    }
    
    public function actionAddEpisode($serialId, $seasonId) {
        function renderForm($fields, $errors) {
            require(ROOT . '/views/admin/addEpisode.php');
            return true;
        }
        
        self::checkAdmin();
        $fields = [
            'episodNum' => '',
            'name' => '',
            'description' => ''
        ];
        if (!isset($_POST['submit'])) { return renderForm($fields, NULL); }
        
        foreach($_POST as $key => $value) {
            if (isset($key) && !empty($key)) {
                $fields[$key] = $value;
            }
        }
        
        $errors = AdminCreate::validateNewEpisode($fields);
        if ($errors) { return renderForm($fields, $errors); }
        
        $result = AdminCreate::addNewEpisode($fields, $serialId, $seasonId);
        //var_dump($result);
        if (!$result) {
            $errors[] = 'Не вдалось додати сезон. Перевірте дані.';
            return renderForm($fields, $errors);
        }
        
        header("Location: /admin/episodes/{$seasonId}");
        return true;
    }
    
    
}