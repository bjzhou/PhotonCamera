.class final Lkaq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkar;


# instance fields
.field private final a:Ljzf;

.field private b:Llsc;


# direct methods
.method public constructor <init>(Ljzf;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lkaq;->b:Llsc;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lkaq;->a:Ljzf;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lkak;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lkak;->h:Lkak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Llsc;Llsc;)Z
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lkaq;->b:Llsc;

    nop

    const/4 v0, 0x0

    nop

    if-eqz p2, :cond_3

    nop

    nop

    nop

    nop

    iget-wide v1, p1, Llsc;->c:J

    nop

    nop

    nop

    iget-wide v3, p2, Llsc;->c:J

    nop

    sub-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    const-wide/32 v3, 0x5f5e100

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v3

    nop

    if-lez v1, :cond_1

    nop

    nop

    goto :goto_b

    nop

    :cond_1
    iget-object v1, p0, Lkaq;->a:Ljzf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1, p2}, Ljzf;->a(Llsc;Llsc;)F

    move-result p2

    nop

    nop

    nop

    nop

    iget-wide v1, p1, Llsc;->d:J

    nop

    nop

    nop

    nop

    nop

    long-to-float v1, v1

    nop

    nop

    mul-float/2addr p2, v1

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lkaq;->b:Llsc;

    nop

    nop

    nop

    nop

    nop

    const p1, 0x4e6e6b28    # 1.0E9f

    nop

    cmpl-float p1, p2, p1

    nop

    if-lez p1, :cond_0

    nop

    const/4 p1, 0x0

    nop

    iput-object p1, p0, Lkaq;->b:Llsc;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_9
    monitor-exit p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    :cond_3
    :goto_b
    :try_start_1
    iput-object p1, p0, Lkaq;->b:Llsc;

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    return v0

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop
.end method
