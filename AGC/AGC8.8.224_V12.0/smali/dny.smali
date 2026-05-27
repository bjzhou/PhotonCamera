.class public final Ldny;
.super Ldoe;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ldoe;-><init>()V

    return-void
.end method

.method public constructor <init>(ILjava/lang/Throwable;)V
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "null"

    goto :goto_0

    :pswitch_0
    const-string v0, "TEST_REASON"

    goto :goto_0

    :pswitch_1
    const-string v0, "LONG_PRESS_TOO_SHORT"

    goto :goto_0

    :pswitch_2
    const-string v0, "TOO_SHORT"

    goto :goto_0

    :pswitch_3
    const-string v0, "START_TOO_CLOSE_TO_SHUTTER"

    goto :goto_0

    :pswitch_4
    const-string v0, "STATIC_SCENE_OR_NO_BETTER_FRAME"

    goto :goto_0

    :pswitch_5
    const-string v0, "CANCELLED_EXTERNALLY"

    goto :goto_0

    :pswitch_6
    const-string v0, "CANCEL_AFTER_SHUTDOWN"

    goto :goto_0

    :pswitch_7
    const-string v0, "UNKNOWN"

    :goto_0
    if-eqz p1, :cond_0

    const-string p1, "LongShot Video Cancelled."

    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Ldoe;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "LongShot Video Cancelled."

    invoke-direct {p0, v0, p1}, Ldoe;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
