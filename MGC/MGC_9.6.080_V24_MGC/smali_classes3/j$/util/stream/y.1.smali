.class final Lj$/util/stream/y;
.super Lj$/util/stream/j1;
.source "SourceFile"


# instance fields
.field public final synthetic n:I

.field final synthetic o:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/G;Lj$/util/stream/n;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/y;->n:I

    iput-object p2, p0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/b;ILjava/lang/Object;I)V
    .locals 0

    iput p4, p0, Lj$/util/stream/y;->n:I

    iput-object p3, p0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    const/4 p3, 0x1

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    return-void
.end method


# virtual methods
.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    iget p1, p0, Lj$/util/stream/y;->n:I

    packed-switch p1, :pswitch_data_0

    new-instance p1, Lj$/util/stream/k;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/k;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    :pswitch_0
    new-instance p1, Lj$/util/stream/E;

    invoke-direct {p1, p0, p2}, Lj$/util/stream/E;-><init>(Lj$/util/stream/y;Lj$/util/stream/r1;)V

    return-object p1

    :pswitch_1
    new-instance p1, Lj$/util/stream/x;

    const/4 v0, 0x0

    invoke-direct {p1, p0, p2, v0}, Lj$/util/stream/x;-><init>(Lj$/util/stream/b;Lj$/util/stream/r1;I)V

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
