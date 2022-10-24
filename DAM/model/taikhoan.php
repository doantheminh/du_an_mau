<?php
    function insert_taikoan($email,$user,$pass){
        $sql="insert into taikhoan(email,user,pass) values('$email','$user','$pass')";
          pdo_execute($sql);
    }
    function checkuser($user,$pass){
        $sql="select*from taikhoan where user='".$user."' AND pass='".$pass."'";
        $sp=pdo_query_one($sql);
        return $sp;
    }
    function update_taikhoan($id,$user,$pass,$email,$address,$tel){
        $sql="update taikhoan set user='".$user."', pass='".$pass."', email='".$email."', address='".$address."', tel='".$tel."' where id=".$id;
        pdo_execute($sql);
    }
    function checkemail($email){
        $sql="select*from taikhoan where email='".$email."'";
        $sp=pdo_query_one($sql);
        return $sp;
    }
    function loadall_taikhoan(){
        $sql="select * from taikhoan order by id desc";
        $listtaikhoan=pdo_query($sql);
        return $listtaikhoan;
    }

    function delete_taikhoan($id){
        $sql="delete from taikhoan where id=".$_GET['id'];
          pdo_execute($sql);
    }
 
    function loadone_tk($id){
        $sql="select*from taikhoan where id=".$id;
        $tk=pdo_query_one($sql);
        return $tk;
    }
?>