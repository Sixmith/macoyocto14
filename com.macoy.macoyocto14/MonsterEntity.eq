
/*
 * MonsterEntity
 * Created by Eqela Studio 2.0b7.4
 */

public class MonsterEntity : SEEntity
{
	SESprite monster2;
	public void initialize(SEResourceCache rsc) {
		base.initialize(rsc);
		var w = get_scene_width();
		var h = get_scene_height();
		rsc.prepare_image("mymonster","monster2", w*0.10, h*0.10);
		monster2 = add_sprite_for_image(SEImage.for_resource("mymonster"));
		monster2.move(Math.random(0,w), Math.random(0,h));
	}

	public void tick(TimeVal now, double detla)
	{
		var mx = monster2.get_x();
		var my = monster2.get_y();
		var px = MainScene.px;
		var py = MainScene.py;
		monster2.move(mx + (px-mx)/Math.random(100,1000), my + (py-my)/Math.random(1000,100));
	}
	

	public void cleanup() {
		base.cleanup();
	}
}
