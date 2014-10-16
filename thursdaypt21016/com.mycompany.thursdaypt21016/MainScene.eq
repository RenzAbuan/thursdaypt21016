
/*
 * MainScene.eq
 * Generated by Eqela Studio 2.0b7.4
 */

public class MainScene : SEScene
{
	int w;
    int h;
    int pX;
    int py;
    int wt;
    int ht;
    
    SESprite leatherface;
    SESprite saw;
    SESprite sylvester;
    SESprite tues;
    SESprite text;
    
    public void initialize(SEResourceCache rsc) 
    {
        base.initialize(rsc);
        w = get_scene_width();
        h = get_scene_height();
        add_entity(SESpriteEntity.for_color(Color.instance("red"), w, h));
        rsc.prepare_image("myleatherface", "leatherface", 0.5*w, 0.5*h);
        rsc.prepare_image("mysaw", "saw", 0.5*w, 0.5*h);
        rsc.prepare_image("mysylvester", "sylvester", 0.5*w, 0.5*h);
        rsc.prepare_image("mytues", "tues", 0.5*w, 0.5*h);
        leatherface = add_sprite_for_image(SEImage.for_resource("myleatherface"));
        saw = add_sprite_for_image(SEImage.for_resource("mysaw"));
        sylvester = add_sprite_for_image(SEImage.for_resource("mysylvester"));
        tues = add_sprite_for_image(SEImage.for_resource("mytues"));
        rsc.prepare_font("myfont","arial bold color=white",40);
        
        leatherface.move(0,0);
        saw.move(0.5*w,0);
        sylvester.move(0,h*0.5);
        tues.move(0.5*w,0.5*h);
        text = add_sprite_for_text(" ","myfont");
        wt = text.get_width();
        ht = text.get_height();
    }
    public void on_pointer_press(SEPointerInfo pi)
    {
        base.on_pointer_press(pi);
        pX = pi.get_x();
        py = pi.get_y();
        
        if (pX > 0 && pX < w*0.5 && py > 0 && py < 0.5*h)
        {
            text.set_text("LEATHERFACE");
            text.move(w*0.25-0.5*wt, h*0.25-0.5*ht);
            leatherface.set_alpha(0.5);
            saw.set_alpha(1);
            sylvester.set_alpha(1);
            tues.set_alpha(1);
        }
        else if (pX > 0.5*w && pX < w && py > 0 && py < 0.5*h)
        {
            text.set_text("JIGSAW");
            text.move(w*0.75-0.5*wt, h*0.25-0.5*ht);
            leatherface.set_alpha(1);
            saw.set_alpha(0.5);
            sylvester.set_alpha(1);
            tues.set_alpha(1);
        }
        else if (pX > 0 && pX < w*0.5 && py > 0.5*h && py < h)
        {
            text.set_text("SYLVESTER");
            text.move(w*0.25-0.5*wt, h*0.75-0.5*ht);
            leatherface.set_alpha(1);
            saw.set_alpha(1);
            sylvester.set_alpha(0.5);
            tues.set_alpha(1);
        }
        else if (pX > 0.5*w && pX < w && py > 0.5*h && py < h)
        {
            text.set_text("BIRDY");
            text.move(w*0.75-0.5*wt, h*0.75-0.5*ht);
            leatherface.set_alpha(1);
            saw.set_alpha(1);
            sylvester.set_alpha(1);
            tues.set_alpha(0.5);
        }
    }
    public void cleanup() {
        base.cleanup();
    }
}