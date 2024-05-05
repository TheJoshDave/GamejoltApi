extends Node

var username: String = "JoshDave" #name of the user on gamejolt
var user_token: String = "L6SmZS" #token of the user
var trophy_id: int = 122398 #id of trophy
var trophy_achieved: String #for later
var data_key: String #key for storing data
var data: String #data that you want to store
var data_operation: String #operation for the update data function
var data_operation_value: String #value for the opertion on the update data function
var score_name: String #name of the score
var score_int: int #number for the score 
var guest_name: String #guest name
var extra_data: String #extra data to add to a score set
var table_id: int = 507785 #table id of main score
var user_id: String = "4544048" #user id of JoshDave
var ping_status: String #status of session for pinging
var data_pattern: String #pattern for something to do in game data get keys
var score_limit: int
var better_than: int
var worse_than: int
var game_id: int
var private_key: String

#update game id and private key for when you put them in
func _process(delta):
	gamejolt.game_id = game_id
	gamejolt.private_key = private_key
