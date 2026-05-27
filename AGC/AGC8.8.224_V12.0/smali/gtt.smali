.class public final Lgtt;
.super Ljava/lang/Object;

# interfaces
.implements Limu;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgtt;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lmzi;)Z
    .locals 7

    iget v0, p0, Lgtt;->a:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    return v1

    :pswitch_0
    invoke-interface {p1}, Lmzi;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lmzi;->k()Lmya;

    move-result-object v0

    invoke-interface {v0}, Lmya;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-interface {p1}, Lmzi;->j()Lmya;

    move-result-object v0

    invoke-interface {v0}, Lmya;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p1}, Lmzi;->size()I

    move-result p1

    const/16 v0, 0x96

    const/4 v6, 0x1

    if-le p1, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    sub-long/2addr v2, v4

    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x5

    invoke-virtual {p1, v4, v5}, Ljava/util/concurrent/TimeUnit;->toNanos(J)J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-lez p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
