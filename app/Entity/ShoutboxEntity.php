<?php

namespace App\Entity;

class ShoutboxEntity
{
    var $id, $time, $name, $url, $text, $icon, $ua, $ip;
    function __construct($id = null, $time = null, $name = null, $url = null, $text = null, $icon = null, $ua = null, $phone = null, $ip = null)
    {
        $this->setId($id);
        $this->setTime($time);
        $this->setName($name);
        $this->setUrl($url);
        $this->setText($text);
        $this->setIcon($icon);
        $this->setUa($ua);
        $this->setIp($ip);
    }
    function setId(int $id = null)
    {
        $this->id = $id;
        return $this;
    }
    function setTime(int $time = null)
    {
        $this->time = $time;
        return $this;
    }
    function setName(string $name = null)
    {
        $this->name = strip_tags($name);
        return $this;
    }
    function setUrl(string $url = null)
    {
        $this->url = strip_tags($url);
        return $this;
    }
    function setText(string $text = null)
    {
        $this->text = strip_tags($text);
        return $this;
    }
    function setIcon(int $icon = null)
    {
        $this->icon = $icon;
        return $this;
    }
    function setUa(string $ua = null)
    {
        $this->ua = $ua;
        return $this;
    }
    function setIp(string $ip = null)
    {
        $this->ip = $ip;
        return $this;
    }
    function getId()
    {
        return $this->id;
    }
    function getTime()
    {
        return $this->time;
    }
    function getName()
    {
        return $this->name;
    }
    function getUrl()
    {
        return $this->url;
    }
    function getText()
    {
        return $this->text;
    }
    function getIcon()
    {
        return $this->icon;
    }
    function getUa()
    {
        return $this->ua;
    }
    function getIp()
    {
        return $this->ip;
    }
}
