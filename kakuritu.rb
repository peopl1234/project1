#レア変数
var rare_5 = 0;
var rare_4 = 0;
var rare_3 = 0;
var rare_2 = 0;

# レア毎の確率
var rare_5_probability = 125;  // 1.25%
var rare_4_probability = 558;  // 5.58%
var rare_3_probability = 2389; // 23.89%
var rare_2_probability = 6928; // 69.28%

// 回す回数(デフォルト値)
var run_number = (1 .. 3);

// ランダムの確率
$random_probability = 10000;
// ガチャ回す
for($i = 0; $i < $run_number; $i++) {
	// ランダム乱数取得
	$probability = rand(1, $random_probability);

	if($probability <= $rare_5_probability) {
		$rare_5++;
	}
		else if($probability <= ($rare_4_probability + $rare_5_probability)) {
			$rare_4++;
		}
			else if($probability <=  ($rare_3_probability + $rare_4_probability + $rare_5_probability)) {
				$rare_3++;
			}
				else if($probability <= $rare_2_probability) {
					$rare_2++;
				}
					else {
						$rare_2++;
					}
} // for($i = 0; $i < $run_number; $i++) {

