if (async_load[? "id"] == name) {
    if (async_load[? "status"]) {
		highscore_add(async_load[? "result"],score);
    } else {
        global.name = "Anon";
    }
}

