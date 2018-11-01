<?php
 public function side_menu_list($parent_id) {
        if ($parent_id) {
            $sql = $this->db->query("SELECT * FROM side_menu WHERE `parent_menu` = $parent_id AND `menu_status` = 1 ORDER BY `menu_sort_order` ASC");
        } else {
            $sql = $this->db->query("SELECT * FROM side_menu WHERE `parent_menu` =0 AND `menu_status` = 1 ORDER BY `menu_sort_order` ASC");
        }
        $result = $sql->result();
        $menu = '';
        foreach ($result as $row) {
            if ($row->menu_url) {
                $menu .= '<li><a href="' . base_url($row->menu_url) . '"><i class="' . $row->menu_icon . '"></i>' . $row->menu_name . '</a>';
            } else {
                $menu .= '<li><a href="#"><i class="' . $row->menu_icon . '"></i>' . $row->menu_name . '</a>';
            }
            $menu .= '<ul>' . $this->side_menu_list($row->menu_id) . '</ul>';
            $menu .= '</li>';
        
        }
        return $menu;
    }

?>