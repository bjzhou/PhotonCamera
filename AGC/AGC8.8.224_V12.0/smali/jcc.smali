.class final Ljcc;
.super Ljmb;


# instance fields
.field final synthetic a:Ljcd;

.field private final b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljcd;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Ljcc;->a:Ljcd;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    :goto_0
    invoke-direct {p0, p1}, Ljmb;-><init>(Landroid/os/Looper;)V

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Ljcc;->b:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    iget p1, p1, Landroid/os/Message;->what:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Don\'t know how to handle this message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GoogleApiAvailability"

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :pswitch_0
    iget-object p1, p0, Ljcc;->a:Ljcd;

    iget-object v0, p0, Ljcc;->b:Landroid/content/Context;

    invoke-virtual {p1, v0}, Ljce;->e(Landroid/content/Context;)I

    move-result p1

    sget v0, Ljcr;->c:I

    sparse-switch p1, :sswitch_data_0

    return-void

    :sswitch_0
    iget-object v0, p0, Ljcc;->a:Ljcd;

    iget-object v1, p0, Ljcc;->b:Landroid/content/Context;

    const-string v2, "n"

    invoke-virtual {v0, v1, p1, v2}, Ljce;->h(Landroid/content/Context;ILjava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v0, v1, p1, v2}, Ljcd;->d(Landroid/content/Context;ILandroid/app/PendingIntent;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x9 -> :sswitch_0
    .end sparse-switch
.end method
