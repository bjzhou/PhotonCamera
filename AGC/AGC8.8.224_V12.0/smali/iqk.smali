.class final Liqk;
.super Ljava/lang/Object;


# instance fields
.field public a:J

.field public b:J

.field public c:Z

.field public final d:Lkaq;


# direct methods
.method public constructor <init>(Lkaq;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqk;->d:Lkaq;

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 4

    iget-boolean v0, p0, Liqk;->c:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Liqk;->b:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Liqk;->a:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    iget-wide v0, p0, Liqk;->b:J

    return-wide v0
.end method

.method public final b()V
    .locals 2

    iget-boolean v0, p0, Liqk;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Liqk;->d:Lkaq;

    const-string v1, "onSessionStart failed because session is already started!"

    invoke-interface {v0, v1}, Lkaq;->i(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Liqk;->c:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Liqk;->a:J

    return-void
.end method
