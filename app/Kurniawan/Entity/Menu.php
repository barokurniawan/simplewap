<?php

namespace App\Kurniawan\Entity;

class Menu
{
    var $id, $type, $name, $url, $position, $icon, $created_at, $updated_at;
    function __construct($id = null, $type = null, $name = null, $url = null, $position = null, $icon = null, $created_at = null, $updated_at = null)
    {
        $this->setId($id);
        $this->setType($type);
        $this->setName($name);
        $this->setUrl($url);
        $this->setPosition($position);
        $this->setIcon($icon);
        $this->setCreatedAt($created_at);
        $this->setUpdatedAt($updated_at);
    }
    function setId(int $id = null)
    {
        $this->id = $id;
        return $this;
    }
    function setType(string $type = null)
    {
        $this->type = $type;
        return $this;
    }
    function setName(string $name = null)
    {
        $this->name = $name;
        return $this;
    }
    function setUrl(string $url = null)
    {
        $this->url = $url;
        return $this;
    }
    function setPosition(int $position = null)
    {
        $this->position = $position;
        return $this;
    }
    function setIcon(string $icon = null)
    {
        $this->icon = $icon;
        return $this;
    }
    function setCreatedAt(string $created_at = null)
    {
        $this->created_at = $created_at;
        return $this;
    }
    function setUpdatedAt(string $updated_at = null)
    {
        $this->updated_at = $updated_at;
        return $this;
    }
    function getId()
    {
        return $this->id;
    }
    function getType()
    {
        return $this->type;
    }
    function getName()
    {
        return $this->name;
    }
    function getUrl()
    {
        return $this->url;
    }
    function getPosition()
    {
        return $this->position;
    }
    function getIcon()
    {
        return $this->icon;
    }
    function getCreatedAt()
    {
        return $this->created_at;
    }
    function getUpdatedAt()
    {
        return $this->updated_at;
    }
}
