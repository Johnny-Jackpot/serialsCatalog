<?php
/**
 * Describes logic of serials catalog
 */
class SiteController {
    /**
     * Render main page
     * @return boolean
     */
    public function actionIndex() {
        $catalog = Catalog::getCatalog();
        
        $n = count($catalog);
        for ($i = $n; $i < 16; $i++) {
            $catalog[$i] = $catalog[$i - $n];
        }
        
        require_once(ROOT . '/views/site/index.php');
        return true;
    }
    
    /**
     * Render serial inf opage
     * @param int $serialId
     * @return boolean
     */
    public function actionSerial($serialId) {
        $serialInfo = Catalog::getSerialInfo($serialId);
        $serial = $serialInfo['serial'];
        $seasons = $serialInfo['seasons'];
        $episodes = $serialInfo['episodes'];
        
        require_once(ROOT . '/views/site/serial.php');
        
        return true;
    }
    
    /**
     * render episode page
     * @param int $episodeId
     * @return boolean
     */
    public function actionEpisode($episodeId) {
        $episode = Episode::getEpisode($episodeId);
        $serial = Catalog::getSerial($episode['serialId']);
        
        require_once(ROOT . '/views/site/episode.php');
        
        return true;
    }
}

