
/*
 * MenuScene
 * Created by Eqela Studio 2.0b7.4
 */

public class MenuScene : SEScene
{
    SESprite image1 ;
   
    public void initialize(SEResourceCache rsc) {
        base.initialize(rsc);
        rsc.prepare_image("myfront","main",get_scene_width(), get_scene_height());
        image1= add_sprite_for_image(SEImage.for_resource("myfront"));
        image1.move(0,0);
    }

    public void on_pointer_press(SEPointerInfo pi) {
        base.on_pointer_press(pi);
        if (pi.is_inside(0,0,get_scene_width(), get_scene_height())) {
        switch_scene(new MainScene());
        }
}

    public void cleanup() {
        base.cleanup();
    }
}
