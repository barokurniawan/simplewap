<?php

namespace App\Kurniawan\Entity;

class Comment
{
    public $id, $article_id, $name, $url, $comment, $created_at, $updated_at;
    public function __construct($id = null, $article_id = null, $name = null, $url = null, $comment = null, $created_at = null, $updated_at = null)
    {
        $this->setId($id);
        $this->setArticleId($article_id);
        $this->setName($name);
        $this->setUrl($url);
        $this->setComment($comment);
        $this->setCreatedAt($created_at);
        $this->setUpdatedAt($updated_at);
    }
    public function setId(int $id = null)
    {
        $this->id = $id;
        return $this;
    }
    public function setArticleId(int $article_id = null)
    {
        $this->article_id = $article_id;
        return $this;
    }
    public function setName(string $name = null)
    {
        $this->name = htmlspecialchars($name);
        return $this;
    }
    public function setUrl(string $url = null)
    {
        $this->url = htmlspecialchars($url);
        return $this;
    }
    public function setComment(string $comment = null)
    {
        $this->comment = htmlspecialchars($comment);
        return $this;
    }
    public function setCreatedAt(string $created_at = null)
    {
        $this->created_at = $created_at;
        return $this;
    }
    public function setUpdatedAt(string $updated_at = null)
    {
        $this->updated_at = $updated_at;
        return $this;
    }
    public function getId()
    {
        return $this->id;
    }
    public function getArticleId()
    {
        return $this->article_id;
    }
    public function getName()
    {
        return $this->name;
    }
    public function getUrl()
    {
        return $this->url;
    }
    public function getComment()
    {
        return $this->comment;
    }
    public function getCreatedAt()
    {
        return $this->created_at;
    }
    public function getUpdatedAt()
    {
        return $this->updated_at;
    }
}
