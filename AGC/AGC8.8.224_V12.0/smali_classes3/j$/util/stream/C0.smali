.class Lj$/util/stream/C0;
.super Lj$/util/stream/D0;


# instance fields
.field public final synthetic c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/C0;Lj$/util/stream/N;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/C0;->c:I

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/D0;-><init>(Lj$/util/stream/D0;Lj$/util/stream/O;I)V

    iget-object p1, p1, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/C0;Lj$/util/stream/O;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/C0;->c:I

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/D0;-><init>(Lj$/util/stream/D0;Lj$/util/stream/O;I)V

    iget-object p1, p1, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/N;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/C0;->c:I

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/O;Ljava/lang/Object;I)V

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/O;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/C0;->c:I

    invoke-direct {p0, p1}, Lj$/util/stream/D0;-><init>(Lj$/util/stream/O;)V

    iput-object p2, p0, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/O;[Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/C0;->c:I

    invoke-direct {p0, p1, p2, v0}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/O;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget v0, p0, Lj$/util/stream/C0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/D0;->a:Lj$/util/stream/O;

    check-cast v0, Lj$/util/stream/N;

    iget-object v1, p0, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/D0;->b:I

    invoke-interface {v0, v2, v1}, Lj$/util/stream/N;->y(ILjava/lang/Object;)V

    return-void

    :goto_0
    iget-object v0, p0, Lj$/util/stream/D0;->a:Lj$/util/stream/O;

    iget-object v1, p0, Lj$/util/stream/C0;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/D0;->b:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/O;->r([Ljava/lang/Object;I)V

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final b(II)Lj$/util/stream/C0;
    .locals 2

    iget v0, p0, Lj$/util/stream/C0;->c:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v0, Lj$/util/stream/C0;

    iget-object v1, p0, Lj$/util/stream/D0;->a:Lj$/util/stream/O;

    check-cast v1, Lj$/util/stream/N;

    invoke-interface {v1, p1}, Lj$/util/stream/N;->c(I)Lj$/util/stream/N;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/C0;Lj$/util/stream/N;I)V

    return-object v0

    :goto_0
    new-instance v0, Lj$/util/stream/C0;

    iget-object v1, p0, Lj$/util/stream/D0;->a:Lj$/util/stream/O;

    invoke-interface {v1, p1}, Lj$/util/stream/O;->c(I)Lj$/util/stream/O;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/C0;-><init>(Lj$/util/stream/C0;Lj$/util/stream/O;I)V

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
