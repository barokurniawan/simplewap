<?php

namespace App\Kurniawan\Entity;

class Category
{
    var $category_id, $category_name, $category_slug, $created_at, $updated_at;
    function __construct($category_id = null, $category_name = null, $category_slug = null, $created_at = null, $updated_at = null)
    {
        $this->setCategoryId($category_id);
        $this->setCategoryName($category_name);
        $this->setCategorySlug($category_slug);
        $this->setCreatedAt($created_at);
        $this->setUpdatedAt($updated_at);
    }
    function setCategoryId(int $category_id = null)
    {
        $this->category_id = $category_id;
        return $this;
    }
    function setCategoryName(string $category_name = null)
    {
        $this->category_name = $category_name;
        return $this;
    }
    function setCategorySlug(string $category_slug = null)
    {
        $this->category_slug = $category_slug;
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
    function getCategoryId()
    {
        return $this->category_id;
    }
    function getCategoryName()
    {
        return $this->category_name;
    }
    function getCategorySlug()
    {
        return $this->category_slug;
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
