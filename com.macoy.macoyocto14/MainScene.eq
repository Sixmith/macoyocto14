
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	SESprite bg;
	SEEntity player;
	SEEntity monster;
	public static int px;
	public static int py;
	int i;

	public void initialize(SEResourceCache rsc)
	{
		base.initialize(rsc);
		AudioClipManager.prepare("zelda");
		px = 0; py = 0;
		var w = get_scene_width(), h = get_scene_height();
		add_entity(SESpriteEntity.for_color(Color.instance("white"), get_scene_width(), get_scene_height()));
		rsc.prepare_image("myfield", "bg" , w, h);
		bg = add_sprite_for_image(SEImage.for_resource("myfield"));
		bg.move(0,0);
		player=add_entity(new PlayerEntity());
		for( i=0; i<Math.random(50,100); i++){
		monster=add_entity(new MonsterEntity());
		}
	}

	public void on_pointer_move(SEPointerInfo pi)
	{
		px = pi.get_x();
		py = pi.get_y();
		AudioClipManager.play("zelda");
	}
	public void cleanup()
	{
		base.cleanup();
	}
	
}