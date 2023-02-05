// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
enum sound {
	footstep=0,
	bucketempty=1,
	bucketfill=2,
	bucketpickup=3,
	weaponpickup=4,
	gethit=5,
	killslug=6,
	killmole=7,
	killbird=8,
	weaponswing=9,
	weaponcharge=10,
	swatintro=11
}
function playSound(soundEffect){
	sound = -1;
	switch(soundEffect)
	{
		case sound.footstep:
		if(point_in_triangle(x,y,214,391,720,137,715,656) || point_in_triangle(x,y,1222,392,720,137,715,656)){
			sound=choose(FootstepGrass_B_1,FootstepGrass_B_2,FootstepGrass_B_3,FootstepGrass_B_4,FootstepGrass_B_5,FootstepGrass_B_6,FootstepGrass_B_7,FootstepGrass_B_8,FootstepGrass_B_9);
		}
		else	{
			sound=choose(FootstepPavement_B_1,FootstepPavement_B_2,FootstepPavement_B_3,FootstepPavement_B_4,FootstepPavement_B_5,FootstepPavement_B_6,FootstepPavement_B_7,FootstepPavement_B_8,FootstepPavement_B_9)
		}
		break;
		case sound.bucketempty:
			sound=choose(BucketEmpty_A_1,BucketEmpty_A_2,BucketEmpty_A_3,BucketEmpty_A_4)
		break;
		case sound.bucketfill:
			sound=choose(BucketFill_A_1,BucketFill_A_2,BucketFill_A_3,BucketFill_A_4);
		break;
		case sound.bucketpickup:
			sound=BucketPickup_A;
		break;
		case sound.weaponpickup:
			sound=WeapPickup_A;
		break;
		case sound.gethit:
			sound=choose(GetHit_F_1_50_150ms_500ms,GetHit_F_2_50_150ms_500ms,GetHit_F_3_50_150ms_500ms);
		break;
		case sound.killslug:
			sound=choose(KillSlug_A_1_60_100ms_150ms,KillSlug_A_2_60_100ms_150ms,KillSlug_A_3_60_100ms_150ms,KillSlug_A_4_60_100ms_150ms,KillSlug_A_4_60_100ms_150ms,KillSlug_A_5_60_100ms_150ms,KillSlug_A_6_60_100ms_150ms)
		break;
		case sound.killmole:
			sound=choose(KillMole_A_1_60_150ms_150ms,KillMole_A_2_60_150ms_150ms,KillMole_A_3_60_150ms_150ms,KillMole_A_4_60_150ms_150ms,KillMole_A_5_60_150ms_150ms,KillMole_A_6_60_150ms_150ms);
		break;
		case sound.killbird:
			sound=choose(KillBird_A_1_60_150ms_150ms,KillBird_A_2_60_150ms_150ms,KillBird_A_3_60_150ms_150ms,KillBird_A_4_60_150ms_150ms,KillBird_A_5_60_150ms_150ms,KillBird_A_6_60_150ms_150ms);
		break;
		case sound.weaponswing:
			sound=choose(WeapSwing_A_1,WeapSwing_A_2,WeapSwing_A_3,WeapSwing_A_4)
		break;
		case sound.weaponcharge:
			sound=choose(WeapChargeStart_A_1,WeapChargeStart_A_2,WeapChargeStart_A_3,WeapChargeStart_A_4,WeapChargeStart_A_5,WeapChargeStart_A_6)
		break;
		case sound.swatintro:
			sound=SWATVan_A;
		break;
	}
	audio_play_sound(sound,100,false)
}