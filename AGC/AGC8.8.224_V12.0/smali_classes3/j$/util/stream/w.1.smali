.class final Lj$/util/stream/w;
.super Lj$/util/stream/T0;


# instance fields
.field public final synthetic m:I

.field final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/c;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/w;->m:I

    iput-object p3, p0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/T0;-><init>(Lj$/util/stream/c;I)V

    return-void
.end method


# virtual methods
.method final P(ILj$/util/stream/Z0;)Lj$/util/stream/Z0;
    .locals 1

    iget p1, p0, Lj$/util/stream/w;->m:I

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/c;Lj$/util/stream/Z0;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj$/util/stream/v;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/v;-><init>(Lj$/util/stream/w;Lj$/util/stream/Z0;)V

    return-object p1

    :goto_0
    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/c;Lj$/util/stream/Z0;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
