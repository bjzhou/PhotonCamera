.class public final Lcvz;
.super Ljwi;

# interfaces
.implements Lcwg;


# direct methods
.method public constructor <init>(Lgzv;)V
    .locals 0

    invoke-direct {p0, p1}, Ljwi;-><init>(Ljwb;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic b(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Lgyr;

    sget-object v0, Ljws;->a:Ljws;

    invoke-virtual {p1}, Lgyr;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a support FPS option"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Ljws;->f:Ljws;

    goto :goto_0

    :pswitch_1
    sget-object p1, Ljws;->e:Ljws;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected final bridge synthetic c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, Ljws;

    sget-object v0, Lgyr;->a:Lgyr;

    invoke-virtual {p1}, Ljws;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Not a support camcorderCaptureRate"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    sget-object p1, Lgyr;->c:Lgyr;

    goto :goto_0

    :pswitch_1
    sget-object p1, Lgyr;->b:Lgyr;

    :goto_0
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
