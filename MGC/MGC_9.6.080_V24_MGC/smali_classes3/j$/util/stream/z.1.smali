.class final Lj$/util/stream/z;
.super Lj$/util/stream/B;
.source "SourceFile"


# instance fields
.field public final synthetic m:I

.field final synthetic n:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/z;->m:I

    iput-object p3, p0, Lj$/util/stream/z;->n:Ljava/lang/Object;

    invoke-direct {p0, p1, p2}, Lj$/util/stream/b;-><init>(Lj$/util/stream/b;I)V

    return-void
.end method


# virtual methods
.method final t()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    iget p1, p0, Lj$/util/stream/z;->m:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x3

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/x;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/x;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj$/util/stream/x;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/x;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
