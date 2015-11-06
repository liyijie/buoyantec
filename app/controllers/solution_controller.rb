class SolutionController < ApplicationController
	def ict
	end

	def mcc
	end

	def internet
	end

	def webthing
	end

	def futclass
		@photo={
			"0"=>"solution_futclass_cse11.png",
			"1"=>"solution_futclass_cse12.png",
			"2"=>"solution_futclass_cse13.png",
			"3"=>"solution_futclass_cse14.png",
			"4"=>"solution_futclass_cse15.png",
			"5"=>"solution_futclass_cse16.png"
		}
		@futclass_advance={
			"0"=>"云端一体化",
			"1"=>"模式多元化",
			"2"=>"行为可视化",
			"3"=>"设备移动化",
			"4"=>"管控智能化",
			"5"=>"能耗绿色化"
		}
		@advance1_introduce={
			"0"=>"依托StarC教育云基础环境，集成海量优质教学资源构件、智能学科",
			"1"=>"提供多种教学模式，包括以教学为主的传统模式，以学为主的个性化",
			"2"=>"依据教学过程中学生线上线下的行为，基于大数据分析，自动输出",
			"3"=>"MDDB(Mobile Digital Discussion Board， 移动数字讨论板)、学",
			"4"=>"教室物联网对环境中所有视听、计算、显示、交互等设备进行控制",
			"5"=>"充分体现绿色建筑理念，合理利用自然资源和能源，使未来教室不"
		}
		@advance2_introduce={
			"0"=>"辅助工具、在线学习社区以及第三方服务，实现课堂教学云端一体化。",
			"1"=>"教学模式，探索传统教学与信息化教学相融合的混合教学模式。 ",
			"2"=>"智能诊断分析报告，为学生提供高质量、个性化的学习体验。",
			"3"=>"生平板等移动设备满足教学中展示、交互等各种需求。BYOD(Bring Your Own Device,<br/><br/>自带设备)有效整合于教学过程，切实优化教学效果。",
			"4"=>"，方便师生无缝地接入教学资源，从事教与学活动。 ",
			"5"=>"仅满足人们能对它的功能需要，且消耗最小，对环境的影响最小。 "
		}
	end
	def dtce
	end
end
