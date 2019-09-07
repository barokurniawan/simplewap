<?php

namespace App\Kurniawan\Entity;

class Blog
{
    var $id, $slug, $title, $create_at, $update_at, $description, $read_count, $category_id;
    function __construct(
        $id = null,
        $slug = null,
        $title = null,
        $category_id = null,
        $description = null,
        $read_count = null,
        $create_at = null,
        $update_at = null
    ) {
        $this->setId($id);
        $this->setSlug($slug);
        $this->setTitle($title);
        $this->setCreateAt($create_at);
        $this->setUpdateAt($update_at);
        $this->setDescription($description);
        $this->setReadCount($read_count);
        $this->setCategoryId($category_id);
    }
    function setId(int $id = null)
    {
        $this->id = $id;
        return $this;
    }
    function setSlug(string $slug = null)
    {
        $this->slug = $slug;
        return $this;
    }
    function setTitle(string $title = null)
    {
        $this->title = $title;
        return $this;
    }
    function setCreateAt(string $create_at = null)
    {
        $this->create_at = $create_at;
        return $this;
    }
    function setUpdateAt(string $update_at = null)
    {
        $this->update_at = $update_at;
        return $this;
    }
    function setDescription(string $description = null)
    {
        $this->description = $description;
        return $this;
    }
    function setReadCount(int $read_count = null)
    {
        $this->read_count = $read_count;
        return $this;
    }
    function setCategoryId(int $category_id = null)
    {
        $this->category_id = $category_id;
        return $this;
    }
    function getId()
    {
        return $this->id;
    }
    function getSlug()
    {
        return $this->slug;
    }
    function getTitle()
    {
        return $this->title;
    }
    function getCreateAt()
    {
        return $this->create_at;
    }
    function getUpdateAt()
    {
        return $this->update_at;
    }
    function getDescription()
    {
        return $this->description;
    }
    function getReadCount()
    {
        return $this->read_count;
    }
    function getCategoryId()
    {
        return $this->category_id;
    }
}
