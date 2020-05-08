<?php
require 'vendor/autoload.php';
use Bitly\BitlyClient;

class Convertation
{
    /* @var db */
    protected $db;
    protected $data;


    public function longToShort($request)
	{
        $bitlyClient = new BitlyClient('700b796d9b8c5049b604483c8adac4cbc2e30877');
        $options = ['longUrl' => $request,
            'format' => 'json'];
        $response = $bitlyClient->shorten($options);

        return $this->valid($response, $request);
	}
	
	public function shortToLong($request)
	{
        $bitlyClient = new BitlyClient('700b796d9b8c5049b604483c8adac4cbc2e30877');
        $options = ['shortUrl' => $request,
            'format' => 'json'];
        $response = $bitlyClient->expand($options);

        return $this->valid($response, $request);
	}

	public function valid($response, $request)
    {
        $db = Db::getInstance();
        $mysqli = $db->getConnection();
        if(isset($response->data->expand[0]->long_url)) {
            $data['data'] = $response->data->expand[0]->long_url;
            $data['status'] = "success";
            $sql_query = "INSERT INTO bitly (url_before, url_after) VALUES ('{$request}','{$data['data']}')";
            $result = $mysqli->query($sql_query);
        } elseif($response->status_code === 200 && !isset($response->data->expand)) {
            $data['data'] = $response->data->url;
            $data['status'] = "success";
            $sql_query = "INSERT INTO bitly (url_before, url_after) VALUES ('{$request}','{$data['data']}')";
            $result = $mysqli->query($sql_query);
        } else {
            $data['data'] = "Invalid URl";
            $data['status'] = "danger";
        }
        return $data;
    }
}
