.class final Lj$/util/stream/f1;
.super Lj$/util/stream/j1;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field final synthetic o:Ljava/util/function/Function;


# direct methods
.method public synthetic constructor <init>(Lj$/util/stream/k1;ILjava/util/function/Function;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/f1;->n:I

    iput-object p3, p0, Lj$/util/stream/f1;->o:Ljava/util/function/Function;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    iget p1, p0, Lj$/util/stream/f1;->n:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/j;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/j;-><init>(Lj$/util/stream/f1;Lj$/util/stream/r1;)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x2

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
