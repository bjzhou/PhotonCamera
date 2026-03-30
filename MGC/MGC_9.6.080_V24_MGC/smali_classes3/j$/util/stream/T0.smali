.class final Lj$/util/stream/T0;
.super Lj$/util/stream/M;
.source "SourceFile"


# instance fields
.field public final synthetic h:I

.field final synthetic i:Ljava/lang/Object;

.field final synthetic j:Ljava/lang/Object;

.field final synthetic k:Ljava/util/function/Supplier;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/N1;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;I)V
    .locals 0

    iput p5, p0, Lj$/util/stream/T0;->h:I

    iput-object p2, p0, Lj$/util/stream/T0;->i:Ljava/lang/Object;

    iput-object p3, p0, Lj$/util/stream/T0;->j:Ljava/lang/Object;

    iput-object p4, p0, Lj$/util/stream/T0;->k:Ljava/util/function/Supplier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final K()Lj$/util/stream/b1;
    .locals 4

    iget v0, p0, Lj$/util/stream/T0;->h:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/stream/X0;

    iget-object v1, p0, Lj$/util/stream/T0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/f;

    iget-object v2, p0, Lj$/util/stream/T0;->k:Ljava/util/function/Supplier;

    check-cast v2, Lj$/util/stream/f;

    iget-object v3, p0, Lj$/util/stream/T0;->j:Ljava/lang/Object;

    check-cast v3, Lj$/util/stream/f;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/X0;-><init>(Lj$/util/stream/f;Lj$/util/stream/f;Lj$/util/stream/f;)V

    return-object v0

    :pswitch_0
    new-instance v0, Lj$/util/stream/S0;

    iget-object v1, p0, Lj$/util/stream/T0;->i:Ljava/lang/Object;

    check-cast v1, Lj$/util/stream/a;

    iget-object v2, p0, Lj$/util/stream/T0;->k:Ljava/util/function/Supplier;

    check-cast v2, Lj$/util/stream/n;

    iget-object v3, p0, Lj$/util/stream/T0;->j:Ljava/lang/Object;

    check-cast v3, Lj$/util/stream/f;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/n;Lj$/util/stream/f;Lj$/util/stream/a;)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
