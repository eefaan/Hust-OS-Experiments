#include <gtk/gtk.h>

int main (int argc, char *argv[])
{
   GtkWidget *window;
   GtkWidget *label;

   gtk_init (&argc, &argv);

   /* create the main, top level, window */
   window = gtk_window_new (GTK_WINDOW_TOPLEVEL);

   /* give it the title */
   gtk_window_set_title (GTK_WINDOW (window), "Hello World");

   /* Connect the destroy signal of the window to gtk_main_quit
    * When the window is about to be destroyed we get a notification and
    * stop the main GTK+ loop
    */
   g_signal_connect (window, "destroy",
                     G_CALLBACK (gtk_main_quit), NULL);

   /* Create the "Hello, World" label  */
   label = gtk_label_new ("Hello, World");

   /* and insert it into the main window  */
   gtk_container_add (GTK_CONTAINER (window), label);

   /* make sure that everything, window and label, are visible */
   gtk_widget_show_all (window);

   /* start the main loop, and let it rest there until the application is closed */
   gtk_main ();

   return 0;
}


//
// GtkWidget *label;
// GtkWidget *image;
// GtkWidget *entry;
// label = gtk_label_new("this is a test label");
// /* 创建文字标签控件 */
// image = gtk_image_new_from_file("image.png");
// /* 创建图像控件，指定要显示的图像名 */
// entry = gtk_entry_new();
// /* 创建单行输入控件 */
