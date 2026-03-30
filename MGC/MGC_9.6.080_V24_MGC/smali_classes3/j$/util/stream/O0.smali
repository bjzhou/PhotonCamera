.class Lj$/util/stream/O0;
.super Lj$/util/stream/P0;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lj$/util/stream/O0;Lj$/util/stream/Y;I)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj$/util/stream/O0;->c:I

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/P0;Lj$/util/stream/Z;I)V

    iget-object p1, p1, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lj$/util/stream/O0;Lj$/util/stream/Z;I)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lj$/util/stream/O0;->c:I

    invoke-direct {p0, p1, p2, p3}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/P0;Lj$/util/stream/Z;I)V

    iget-object p1, p1, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    check-cast p1, [Ljava/lang/Object;

    iput-object p1, p0, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lj$/util/stream/Z;Ljava/lang/Object;I)V
    .locals 0

    iput p3, p0, Lj$/util/stream/O0;->c:I

    invoke-direct {p0, p1}, Lj$/util/stream/P0;-><init>(Lj$/util/stream/Z;)V

    iput-object p2, p0, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget v0, p0, Lj$/util/stream/O0;->c:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    iget-object v1, p0, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/P0;->b:I

    invoke-interface {v0, v1, v2}, Lj$/util/stream/Z;->h([Ljava/lang/Object;I)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    check-cast v0, Lj$/util/stream/Y;

    iget-object v1, p0, Lj$/util/stream/O0;->d:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/P0;->b:I

    invoke-interface {v0, v2, v1}, Lj$/util/stream/Y;->t(ILjava/lang/Object;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method final b(II)Lj$/util/stream/P0;
    .locals 2

    iget v0, p0, Lj$/util/stream/O0;->c:I

    packed-switch v0, :pswitch_data_0

    new-instance v0, Lj$/util/stream/O0;

    iget-object v1, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    invoke-interface {v1, p1}, Lj$/util/stream/Z;->b(I)Lj$/util/stream/Z;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/O0;-><init>(Lj$/util/stream/O0;Lj$/util/stream/Z;I)V

    return-object v0

    :pswitch_0
    new-instance v0, Lj$/util/stream/O0;

    iget-object v1, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    check-cast v1, Lj$/util/stream/Y;

    invoke-interface {v1, p1}, Lj$/util/stream/Y;->b(I)Lj$/util/stream/Y;

    move-result-object p1

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/O0;-><init>(Lj$/util/stream/O0;Lj$/util/stream/Y;I)V

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
