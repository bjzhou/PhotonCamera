.class abstract Lj$/util/stream/P0;
.super Ljava/util/concurrent/CountedCompleter;
.source "SourceFile"


# instance fields
.field protected final a:Lj$/util/stream/Z;

.field protected final b:I


# direct methods
.method constructor <init>(Lj$/util/stream/P0;Lj$/util/stream/Z;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/util/concurrent/CountedCompleter;-><init>(Ljava/util/concurrent/CountedCompleter;)V

    iput-object p2, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    iput p3, p0, Lj$/util/stream/P0;->b:I

    return-void
.end method

.method constructor <init>(Lj$/util/stream/Z;)V
    .locals 0

    invoke-direct {p0}, Ljava/util/concurrent/CountedCompleter;-><init>()V

    iput-object p1, p0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    const/4 p1, 0x0

    iput p1, p0, Lj$/util/stream/P0;->b:I

    return-void
.end method


# virtual methods
.method abstract a()V
.end method

.method abstract b(II)Lj$/util/stream/P0;
.end method

.method public final compute()V
    .locals 8

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    invoke-interface {v1}, Lj$/util/stream/Z;->s()I

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lj$/util/stream/P0;->a()V

    invoke-static {v0}, Lj$/util/stream/G0;->b(Lj$/util/stream/P0;)V

    return-void

    :cond_0
    iget-object v1, v0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    invoke-interface {v1}, Lj$/util/stream/Z;->s()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lj$/util/stream/G0;->c(Lj$/util/stream/P0;I)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v0, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    invoke-interface {v3}, Lj$/util/stream/Z;->s()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ge v1, v3, :cond_1

    iget v3, v0, Lj$/util/stream/P0;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/P0;->b(II)Lj$/util/stream/P0;

    move-result-object v3

    int-to-long v4, v2

    iget-object v2, v3, Lj$/util/stream/P0;->a:Lj$/util/stream/Z;

    invoke-interface {v2}, Lj$/util/stream/Z;->count()J

    move-result-wide v6

    add-long/2addr v4, v6

    long-to-int v2, v4

    invoke-virtual {v3}, Ljava/util/concurrent/ForkJoinTask;->fork()Ljava/util/concurrent/ForkJoinTask;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    iget v3, v0, Lj$/util/stream/P0;->b:I

    add-int/2addr v3, v2

    invoke-virtual {v0, v1, v3}, Lj$/util/stream/P0;->b(II)Lj$/util/stream/P0;

    move-result-object v0

    goto :goto_0
.end method
