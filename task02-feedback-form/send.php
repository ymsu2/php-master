<?
$user_name =  !empty($_REQUEST['user_name']) ? $_REQUEST['user_name'] : "";
$user_phone =  !empty($_REQUEST['user_phone']) ? $_REQUEST['user_phone'] : "";
$user_email =  !empty($_REQUEST['user_email']) ? $_REQUEST['user_email'] : "";

if (empty($user_name) || empty($user_phone)) {
	echo '���� `���` � `��������� �������` ����������� � ����������</br> <a href="#" onclick="history.back();">�������� �����</a>';
	exit;
}
if (!empty($user_email)) {
	if (mb_strpos($user_email, "@gmail.com")) {
		echo '����������� ������������� � �������� ������� <b>"'.$user_email.'"</b> ����������!</br> <a href="#" onclick="history.back();">�������� �����</a>';
		exit;		
	}	
}
?>