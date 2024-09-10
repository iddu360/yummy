<?php

namespace App\Models;

use CodeIgniter\Model;

class BookingModel extends Model
{
    protected $DBGroup = 'default';
    protected $table            = 'booking2';
    protected $primaryKey       = 'id';
    protected $useAutoIncrement = true;
    protected $returnType       = 'array';
    protected $useSoftDeletes   = true;
    protected $protectFields    = true;
    protected $allowedFields    = ['email', 'name', 'phone', 'date', 'time', 'people', 'message', 'uniqid'];

    // Dates
    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $createdField  = 'created_at';
    protected $updatedField  = 'verified_at';
    protected $deletedField  = 'deleted_at';

    // Validation
    protected $validationRules      = [];
    protected $validationMessages   = [];
    protected $skipValidation       = false;
    protected $cleanValidationRules = true;

    // Callbacks
    protected $allowCallbacks = true;
    protected $beforeInsert   = [];
    protected $afterInsert    = [];
    protected $beforeUpdate   = [];
    protected $afterUpdate    = [];
    protected $beforeFind     = [];
    protected $afterFind      = [];
    protected $beforeDelete   = [];
    protected $afterDelete    = [];

    // public function insert($bdata)
    // {

    // }
    // public function verifyUniqid($myid)
    // {
    //     $sql = 'UPDATE booking2
    //         SET verified_at = CURRENT_TIMESTAMP(),
    //         vstatus = "verified"
    //         WHERE uniqid = ?';
    //     $this->db->query($sql, [$myid]);
    //     // unset($myid);
    // }
    public function verifyUniqid($myid)
    {
        // Implement the logic to verify the unique ID in the database
        // For example, you can update the 'verified_at' field for the booking with the given unique ID
        $data = [
            'vstatus' => 'Verified',
            'verified_at' => date("Y-m-d h:i:s")
        ];

        $builder = $this->db->table($this->table);
        $builder->where('uniqid', $myid);
        $builder->update($data);
    }
    // public function booking_update($myid)
    // {
    //     $sql = 'UPDATE booking2
    //         SET updated_at = CURRENT_TIMESTAMP()
    //         WHERE id = ?';
    //     $query = $this->db->query($sql, [$myid]);
    // }
    // public function verifyUniqid($myid)
    // {
    //     $builder = $this->db->table($this->table);
    //     $data = [
    //         'verified_at' => date('Y-m-d H:i:s'),
    //         'vstatus' => 'verified'
    //     ];
    //     $builder->where('id', $myid);
    //     $builder->update($data);
    // }
    // public function getInsertID()
    // {
    //     return $this->db->insertID();
    // }
}
