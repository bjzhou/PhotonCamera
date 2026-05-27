.class final Lkil;
.super Lkbk;


# instance fields
.field private final a:Lkdy;

.field private b:J


# direct methods
.method public constructor <init>(Lkdy;)V
    .locals 0

    invoke-direct {p0}, Lkbk;-><init>()V

    iput-object p1, p0, Lkil;->a:Lkdy;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lkil;->a:Lkdy;

    invoke-interface {v0}, Lkdy;->b()V

    return-void
.end method

.method public final c(Lkbo;)V
    .locals 5

    iget-wide v0, p0, Lkil;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iget-wide v2, p0, Lkil;->b:J

    sub-long v2, v0, v2

    goto :goto_0

    :cond_0
    :goto_0
    iget-object v0, p0, Lkil;->a:Lkdy;

    invoke-interface {v0, p1, v2, v3}, Lkdy;->a(Lkbo;J)V

    return-void
.end method

.method public final d(Lkoo;)V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtimeNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lkil;->b:J

    return-void
.end method
