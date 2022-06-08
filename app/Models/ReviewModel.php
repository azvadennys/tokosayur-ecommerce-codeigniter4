<?php

namespace App\Models;

use CodeIgniter\Model;

class ReviewModel extends Model
{
    public function getReview()
    {
        $db = \Config\Database::connect();
        $builder = $db->table('reviews');
        $builder->select('users.id as userid, name, profile_picture,review_text,review_date');
        $builder->join('users', 'users.id = reviews.user_id');
        $query = $builder->get();
        return $query->getResultArray();
    }
    public function register_contact($data)
    {
        $db = \Config\Database::connect();
        $builder = $db->table('contacts')->insert($data);

        return $db->insertID();
    }
}
