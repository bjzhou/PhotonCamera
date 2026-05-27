.class final Liea;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field final synthetic a:Lieb;


# direct methods
.method public constructor <init>(Lieb;)V
    .locals 0

    iput-object p1, p0, Liea;->a:Lieb;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_1

    return-void

    :pswitch_1
    iget-object p1, p0, Liea;->a:Lieb;

    invoke-virtual {p1, p2}, Lieb;->a(Landroid/content/Intent;)V

    return-void

    :pswitch_data_0
    .packed-switch -0x5bb23923
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
