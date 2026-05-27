.class public final Lki;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/view/View;FF)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->drawableHotspotChanged(FF)V

    return-void
.end method

.method public static synthetic b(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "null"

    return-object p0

    :pswitch_0
    const-string p0, "CLOSED"

    return-object p0

    :pswitch_1
    const-string p0, "CLOSING"

    return-object p0

    :pswitch_2
    const-string p0, "CREATED"

    return-object p0

    :pswitch_3
    const-string p0, "CREATING"

    return-object p0

    :pswitch_4
    const-string p0, "PENDING"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
