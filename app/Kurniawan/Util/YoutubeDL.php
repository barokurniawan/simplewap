<?php

namespace App\Kurniawan\Util;

class YoutubeDL
{
    protected $url;
    protected $output;

    function __construct($url = null)
    {
        $this->setUrl($url);
        $this->output = [
            "metadata" => null,
            "details" => []
        ];
    }

    function getOutput()
    {
        return $this->output;
    }

    public function init()
    {
        $command = ["youtube-dl", "-j", $this->getUrl()];
        $stringJson = shell_exec(implode(" ", $command));
        $jsonObject = json_decode($stringJson);

        if ($jsonObject == null) {
            $this->output = null;
            return null;
        }

        $output = [
            "metadata" => [
                "title" => $jsonObject->fulltitle
            ],
            "details" => []
        ];

        foreach ($jsonObject->formats as $key => $item) {
            if (!$this->isValidAudio($item)) {
                continue;
            }

            $arrayItem = (array) $item;
            unset($arrayItem['player_url']);
            unset($arrayItem['http_headers']);

            array_push($output['details'], $arrayItem);
        }

        $this->output = $output;
    }

    private function isValidAudio($item)
    {
        if (($item->acodec == "none" && $item->vcodec != "none") || ($item->acodec != "none" && $item->vcodec != "none")) {
            return false;
        }

        return true;
    }

    /**
     * Getter for Url
     *
     * @return [type]
     */
    private function getUrl()
    {
        return $this->url;
    }

    /**
     * Setter for Url
     * @var [type] url
     *
     * @return self
     */
    public function setUrl($url)
    {
        $this->url = $url;
        return $this;
    }
}
