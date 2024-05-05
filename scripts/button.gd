extends Button
onready var controller: Node = get_node("../..")

var username
var user_token
var trophy_id
var trophy_achieved
var data_key
var data
var data_operation
var data_operation_value
var score_name
var score_int
var guest_name
var extra_data
var table_id
var user_id
var ping_status
var data_pattern
var score_limit
var better_than
var worse_than

func _process(delta):
	username = controller.username
	user_token = controller.user_token
	trophy_id = controller.trophy_id
	trophy_achieved = controller.trophy_achieved
	data_key = controller.data_key
	data = controller.data
	data_operation = controller.data_operation
	data_operation_value = controller.data_operation_value
	score_name = controller.score_name
	score_int = controller.score_int
	guest_name = controller.guest_name
	extra_data = controller.extra_data
	table_id = controller.table_id
	user_id = controller.user_id
	ping_status = controller.ping_status
	data_pattern = controller.data_pattern
	score_limit = controller.score_limit
	better_than = controller.better_than
	worse_than = controller.worse_than

func _ready():
	connect("pressed", self, name)

func api_data_fetch():
	gamejolt.api_data_fetch(data_key, username, user_token)
func api_data_get_keys():
	gamejolt.api_data_get_keys(data_pattern, username, user_token)
func api_data_remove():
	gamejolt.api_data_remove(data_key, username, user_token)
func api_data_set():
	gamejolt.api_data_set(data_key, data, username, user_token)
func api_data_update():
	gamejolt.api_data_update(data_key, data_operation, data_operation_value, username, user_token)

func api_time():
	gamejolt.api_time()

func api_score_add():
	gamejolt.api_score_add(score_name, score_int, username, user_token, guest_name, extra_data, table_id)
func api_score_get_rank():
	gamejolt.api_score_get_rank(score_int, table_id)
func api_score_fetch():
	gamejolt.api_score_fetch(score_limit, username, user_token, guest_name, table_id, better_than, worse_than)
func api_score_table():
	gamejolt.api_score_table()

func api_session_open():
	gamejolt.api_session_open(username, user_token)
func api_session_close():
	gamejolt.api_session_close(username, user_token)
func api_session_ping():
	gamejolt.api_session_ping(username, user_token, ping_status)
func api_session_check():
	gamejolt.api_session_check(username, user_token)

func api_trophy_fetch():
	gamejolt.api_trophy_fetch(username, user_token, trophy_achieved, trophy_id)
func api_trophy_add_achieved():
	gamejolt.api_trophy_add_achieved(username, user_token, trophy_id)
func api_trophy_remove_achieved():
	gamejolt.api_trophy_remove_achieved(username, user_token, trophy_id)

func api_user_auth():
	gamejolt.api_user_auth(username, user_token)
func api_user_fetch():
	gamejolt.api_user_fetch(username, user_token)

func api_friends():
	gamejolt.api_friends(username, user_token)

