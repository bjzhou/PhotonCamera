.class public final Lkk;
.super Ljava/lang/Object;


# direct methods
.method static a(Landroid/widget/AbsListView;Z)V
    .locals 0

    invoke-virtual {p0, p1}, Landroid/widget/AbsListView;->setSelectedChildViewEnabled(Z)V

    return-void
.end method

.method static b(Landroid/widget/AbsListView;)Z
    .locals 0

    invoke-virtual {p0}, Landroid/widget/AbsListView;->isSelectedChildViewEnabled()Z

    move-result p0

    return p0
.end method

.method public static synthetic c(I)Ljava/lang/String;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const-string p0, "CAMERA2_EXCEPTION"

    return-object p0

    :pswitch_0
    const-string p0, "CAMERA2_ERROR"

    return-object p0

    :pswitch_1
    const-string p0, "CAMERA2_DISCONNECTED"

    return-object p0

    :pswitch_2
    const-string p0, "CAMERA2_CLOSED"

    return-object p0

    :pswitch_3
    const-string p0, "APP_DISCONNECTED"

    return-object p0

    :pswitch_4
    const-string p0, "APP_CLOSED"

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
