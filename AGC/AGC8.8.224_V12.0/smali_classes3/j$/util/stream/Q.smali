.class abstract Lj$/util/stream/Q;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/O;


# instance fields
.field protected final a:Lj$/util/stream/O;

.field protected final b:Lj$/util/stream/O;

.field private final c:J


# direct methods
.method constructor <init>(Lj$/util/stream/O;Lj$/util/stream/O;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj$/util/stream/Q;->a:Lj$/util/stream/O;

    iput-object p2, p0, Lj$/util/stream/Q;->b:Lj$/util/stream/O;

    invoke-interface {p1}, Lj$/util/stream/O;->count()J

    move-result-wide v0

    invoke-interface {p2}, Lj$/util/stream/O;->count()J

    move-result-wide p1

    add-long/2addr v0, p1

    iput-wide v0, p0, Lj$/util/stream/Q;->c:J

    return-void
.end method


# virtual methods
.method public bridge synthetic c(I)Lj$/util/stream/N;
    .locals 0

    invoke-virtual {p0, p1}, Lj$/util/stream/Q;->c(I)Lj$/util/stream/O;

    move-result-object p1

    check-cast p1, Lj$/util/stream/N;

    return-object p1
.end method

.method public final c(I)Lj$/util/stream/O;
    .locals 1

    if-nez p1, :cond_0

    iget-object p1, p0, Lj$/util/stream/Q;->a:Lj$/util/stream/O;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lj$/util/stream/Q;->b:Lj$/util/stream/O;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final count()J
    .locals 2

    iget-wide v0, p0, Lj$/util/stream/Q;->c:J

    return-wide v0
.end method

.method public final u()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method
