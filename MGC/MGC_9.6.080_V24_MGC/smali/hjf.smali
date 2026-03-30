.class public final Lhjf;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:F

.field public static final b:F

.field private static final g:F

.field private static final h:F


# instance fields
.field public final c:F

.field public final d:F

.field public e:Lrss;

.field public f:Lrss;

.field private final i:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sput v0, Lhjf;->h:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_3
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput v2, Lhjf;->g:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    double-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    const-wide/high16 v0, 0x4034000000000000L    # 20.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    double-to-float v0, v0

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

    nop

    :goto_e
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    const v0, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput v2, Lhjf;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    double-to-float v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    sput v2, Lhjf;->a:F

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    double-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhoh;)V
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lhjf;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v1, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-wide v0, p0, Lhjf;->i:J

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    goto :goto_a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x3e8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v0}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput p1, p0, Lhjf;->d:F

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    iput-object v0, p0, Lhjf;->e:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    iput-object v0, p0, Lhjf;->f:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    sget p1, Lhjf;->h:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    const-string v0, "camera.coach.fast_up_down and camera.coach.instant_up_down should not be enabled at the same time."

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    sget p1, Lhjf;->g:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v0, 0xfa0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1e
    sget-object v0, Lhma;->g:Lhmn;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v0, Lhma;->g:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a(FFJ)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    new-instance v0, Lhje;

    nop

    nop

    nop

    invoke-direct {v0, p1, p2}, Lhje;-><init>(FF)V

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lhjf;->e:Lrss;

    nop

    nop

    iget-object p1, p0, Lhjf;->f:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_0

    nop

    new-instance p1, Lhjl;

    nop

    new-instance p2, Lhix;

    nop

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    invoke-direct {p2, p0, v0}, Lhix;-><init>(Lhjf;I)V

    new-instance v0, Lhix;

    nop

    nop

    nop

    nop

    const/4 v1, 0x3

    nop

    nop

    nop

    invoke-direct {v0, p0, v1}, Lhix;-><init>(Lhjf;I)V

    iget-wide v1, p0, Lhjf;->i:J

    nop

    invoke-direct {p1, p2, v0, v1, v2}, Lhjl;-><init>(Lhjk;Lhjk;J)V

    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p1

    nop

    iput-object p1, p0, Lhjf;->f:Lrss;

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p1, p0, Lhjf;->f:Lrss;

    nop

    nop

    nop

    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lhjl;

    nop

    invoke-virtual {p1, p3, p4}, Lhjl;->b(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    :try_start_1
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    iput-object v0, p0, Lhjf;->e:Lrss;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lhjf;->f:Lrss;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
