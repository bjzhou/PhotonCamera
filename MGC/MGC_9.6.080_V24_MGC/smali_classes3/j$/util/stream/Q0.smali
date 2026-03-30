.class final Lj$/util/stream/Q0;
.super Lj$/util/stream/M;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field final synthetic i:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/N1;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/Q0;->h:I

    iput-object p2, p0, Lj$/util/stream/Q0;->i:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()Lj$/util/stream/b1;
    .locals 2

    iget v0, p0, Lj$/util/stream/Q0;->h:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/stream/Z0;

    iget-object v1, p0, Lj$/util/stream/Q0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/n;

    invoke-direct {v0, v1}, Lj$/util/stream/Z0;-><init>(Lj$/util/stream/n;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lj$/util/stream/U0;

    iget-object v1, p0, Lj$/util/stream/Q0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/desugar/sun/nio/fs/h;

    invoke-direct {v0, v1}, Lj$/util/stream/U0;-><init>(Lj$/desugar/sun/nio/fs/h;)V

    return-object v0

    :pswitch_1
    new-instance v0, Lj$/util/stream/R0;

    iget-object v1, p0, Lj$/util/stream/Q0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/n;

    invoke-direct {v0, v1}, Lj$/util/stream/R0;-><init>(Lj$/util/stream/n;)V

    return-object v0

    :pswitch_2
    new-instance v0, Lj$/util/stream/a1;

    iget-object v1, p0, Lj$/util/stream/Q0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/n;

    invoke-direct {v0, v1}, Lj$/util/stream/a1;-><init>(Lj$/util/stream/n;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
