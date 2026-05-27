.class public final Lakp;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lakr;)Lakq;
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lakr;->a:Lakr;

    invoke-virtual {p0}, Lakr;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    sget-object p0, Lakq;->ON_RESUME:Lakq;

    return-object p0

    :pswitch_1
    sget-object p0, Lakq;->ON_START:Lakq;

    return-object p0

    :pswitch_2
    sget-object p0, Lakq;->ON_CREATE:Lakq;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
