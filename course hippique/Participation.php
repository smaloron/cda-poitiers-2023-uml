<?php

declare(strict_types=1);


class Participation
{

    /** @var Integer */
    public Integer $Dossard;

    /** @var [object Object] */
    public Course $course;

    /** @var [object Object] */
    public Cheval $cheval;

    /** @var [object Object] */
    public Jockey $jockey;




    /**
     * Default constructor
     */
    public function __construct()
    {
        // ...
    }

}
