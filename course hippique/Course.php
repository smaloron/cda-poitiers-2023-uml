<?php

declare(strict_types=1);


class Course
{

    /** @var Date */
    public Date $date;

    /** @var String */
    public String $nom;

    /** @var Integer */
    public Integer $id;

    /** @var [object Object] */
    public ChampDeCourse $lieu;



    /**
     * Default constructor
     */
    public function __construct()
    {
        // ...
    }

}
