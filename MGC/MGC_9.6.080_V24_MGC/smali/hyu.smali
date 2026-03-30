.class public final Lhyu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lhxq;


# instance fields
.field public final a:Lppe;

.field public final b:Ljava/lang/Object;

.field public c:Lppd;

.field public final d:Lhze;


# direct methods
.method public constructor <init>(Lppe;Lhze;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhyu;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lhyu;->a:Lppe;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lhyu;->d:Lhze;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpge;Lphh;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-object p2, p0, Lhyu;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter p2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhyu;->c:Lppd;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    invoke-interface {p1}, Lpge;->b()Lpgi;

    move-result-object p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p1, Lpgi;->b:J

    nop

    nop

    nop

    const-wide/32 v3, -0x2dc6c0

    nop

    add-long/2addr v3, v1

    nop

    nop

    const-wide/32 v5, 0x2dc6c0

    nop

    nop

    add-long/2addr v5, v1

    nop

    nop

    new-instance p1, Lhyt;

    nop

    nop

    invoke-direct {p1, p0, v1, v2}, Lhyt;-><init>(Lhyu;J)V

    move-wide v1, v3

    nop

    move-wide v3, v5

    nop

    move-object v5, p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v0 .. v5}, Lppd;->b(JJLppc;)V

    :cond_0
    monitor-exit p2

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop
.end method
