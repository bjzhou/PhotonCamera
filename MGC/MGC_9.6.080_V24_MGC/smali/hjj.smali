.class public final Lhjj;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:J

.field private b:J

.field private c:I

.field private final d:I


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    iput-wide v0, p0, Lhjj;->b:J

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

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lhjj;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    iput-wide p2, p0, Lhjj;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    iput p1, p0, Lhjj;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a(J)Lsmo;
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Lsmo;->a:Lsmo;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_0
    iget v1, p0, Lhjj;->d:I

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lsmo;

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    iput v1, v3, Lsmo;->c:I

    nop

    nop

    nop

    nop

    nop

    iget v1, v3, Lsmo;->b:I

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iput v1, v3, Lsmo;->b:I

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    if-nez v1, :cond_1

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_1
    iget-wide v1, p0, Lhjj;->a:J

    nop

    nop

    nop

    nop

    nop

    sub-long/2addr p1, v1

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    check-cast v2, Lsmo;

    nop

    iget v3, v2, Lsmo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v3, v3, 0x2

    nop

    iput v3, v2, Lsmo;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, v2, Lsmo;->d:J

    nop

    nop

    iget-wide p1, p0, Lhjj;->b:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_2
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    check-cast v2, Lsmo;

    nop

    nop

    nop

    nop

    nop

    iget v3, v2, Lsmo;->b:I

    nop

    or-int/lit8 v3, v3, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lsmo;->b:I

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, v2, Lsmo;->e:J

    nop

    nop

    nop

    iget p1, p0, Lhjj;->c:I

    nop

    nop

    invoke-virtual {v1}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_3
    iget-object p2, v0, Ltkb;->b:Ltkg;

    nop

    check-cast p2, Lsmo;

    nop

    iget v1, p2, Lsmo;->b:I

    nop

    nop

    nop

    nop

    or-int/lit8 v1, v1, 0x8

    nop

    nop

    nop

    nop

    nop

    iput v1, p2, Lsmo;->b:I

    nop

    iput p1, p2, Lsmo;->f:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lsmo;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const v1, 0x6

    nop

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

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method final declared-synchronized b()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget v0, p0, Lhjj;->c:I

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    iput v0, p0, Lhjj;->c:I

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized c()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

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

    nop

    :goto_1
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Lhjj;->b:J

    nop

    nop

    const-wide/16 v2, 0x1

    nop

    nop

    nop

    add-long/2addr v0, v2

    nop

    nop

    nop

    iput-wide v0, p0, Lhjj;->b:J

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method
