.class public Lgpn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:I

.field private final c:I

.field private d:Z

.field private e:J

.field private f:J

.field private g:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const-string v0, "gpn"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lgpn;->a:Lsdb;

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
.end method

.method public constructor <init>(II)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_3
    if-gtz p2, :cond_1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    :goto_6
    goto :goto_12

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    iput p2, p0, Lgpn;->c:I

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

    :goto_9
    move v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v0, -0x8000000000000000L

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const v0, 0xc

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_f
    invoke-static {v2}, La;->au(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

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

    :goto_17
    if-gtz p1, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    iput-wide v0, p0, Lgpn;->f:J

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-wide v0, p0, Lgpn;->e:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    move v2, v1

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    iput p1, p0, Lgpn;->b:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(I)J
    .locals 10

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return-wide v0

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    :try_start_1
    iget v0, p0, Lgpn;->g:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    iget v2, p0, Lgpn;->g:I

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    const-string v2, "The polled length %s is greater than total length %s. [%x]"

    nop

    nop

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    const/4 v2, 0x0

    nop

    if-gt p1, v0, :cond_1

    nop

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Lrrf;->m(ZLjava/lang/Object;)V

    iget-wide v0, p0, Lgpn;->e:J

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lgpn;->f:J

    nop

    nop

    nop

    nop

    sub-long/2addr v3, v0

    nop

    nop

    nop

    iget v5, p0, Lgpn;->g:I

    nop

    int-to-long v6, v5

    nop

    nop

    nop

    nop

    int-to-long v8, p1

    nop

    nop

    nop

    nop

    nop

    mul-long/2addr v3, v8

    nop

    nop

    nop

    nop

    div-long/2addr v3, v6

    nop

    nop

    nop

    nop

    add-long/2addr v3, v0

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v5, :cond_2

    nop

    nop

    nop

    const-wide/high16 v3, -0x8000000000000000L

    nop

    nop

    nop

    nop

    iput-wide v3, p0, Lgpn;->e:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v3, p0, Lgpn;->f:J

    nop

    iput v2, p0, Lgpn;->g:I

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    iput-wide v3, p0, Lgpn;->e:J

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v5, p1

    nop

    nop

    iput v5, p0, Lgpn;->g:I

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final declared-synchronized b(JI)V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    :try_start_0
    invoke-static {v1}, La;->au(Z)V

    iget-boolean v1, p0, Lgpn;->d:Z

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    iput-boolean v0, p0, Lgpn;->d:Z

    nop

    nop

    nop

    nop

    :cond_0
    iget v0, p0, Lgpn;->g:I

    nop

    nop

    nop

    nop

    add-int/2addr v0, p3

    nop

    nop

    nop

    nop

    nop

    iget v1, p0, Lgpn;->c:I

    nop

    nop

    nop

    nop

    if-le v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object p1, Lgpn;->a:Lsdb;

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    const/16 p2, 0x277

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string p2, "The size offered is over the capacity."

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_e
    throw p1

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    move v1, v0

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

    :goto_11
    monitor-exit p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_14
    return-void

    nop

    :cond_2
    :try_start_2
    iget-wide v1, p0, Lgpn;->e:J

    nop

    nop

    nop

    const-wide/high16 v3, -0x8000000000000000L

    nop

    nop

    cmp-long v1, v1, v3

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_3

    nop

    nop

    iput-wide p1, p0, Lgpn;->e:J

    nop

    nop

    :cond_3
    int-to-long v1, p3

    nop

    nop

    iget p3, p0, Lgpn;->b:I

    nop

    nop

    const-wide v3, 0x1dcd65000L

    nop

    nop

    mul-long/2addr v1, v3

    nop

    int-to-long v3, p3

    nop

    div-long/2addr v1, v3

    nop

    nop

    nop

    add-long/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    iput-wide p1, p0, Lgpn;->f:J

    nop

    iput v0, p0, Lgpn;->g:I

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz p3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
