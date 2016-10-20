<?php

return [    
    'serial/([0-9]+)' => 'site/serial/$1',
    'episode/([0-9]+)' => 'site/episode/$1',
    'admin/createSerial' => 'admin/createSerial',
    'admin/addSeason/([0-9]+)' => 'admin/addSeason/$1',
    'admin/addEpisode/([0-9]+)/([0-9]+)' => 'admin/addEpisode/$1/$2',
    'admin/episodes/([0-9]+)' => 'admin/readEpisodes/$1',
    'admin/seasons/([0-9]+)' => 'admin/readSeasons/$1',
    'admin/login' => 'admin/login',
    'admin/logout' => 'admin/logout',
    'admin' => 'admin/index',
    '' => 'site/index'   //actionIndex in SiteController
];