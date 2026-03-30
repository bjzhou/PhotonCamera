.class public final Lpng;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lprw;
.implements Lprd;


# static fields
.field private static final e:Lprs;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:J

.field private final f:Ljava/lang/Object;

.field private final g:Landroid/media/Image;

.field private h:Lprs;

.field private volatile i:Lryb;

.field private j:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lpng;->e:Lprs;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lpnf;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    new-instance v0, Lpnf;

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
.end method

.method public constructor <init>(Landroid/media/Image;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lpng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    sget-object p1, Lpng;->e:Lprs;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_16

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

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, p0, Lpng;->h:Lprs;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    :goto_e
    iput v0, p0, Lpng;->c:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    iput v0, p0, Lpng;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    iput-wide v0, p0, Lpng;->d:J

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

    :goto_12
    iput-object v0, p0, Lpng;->f:Ljava/lang/Object;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lpng;->g:Landroid/media/Image;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpng;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method

.method public final b()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget p0, p0, Lpng;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lpng;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpng;->f:Ljava/lang/Object;

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
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-interface {v1, v2}, Lprs;->a(Ljava/lang/Object;)V

    goto/32 :goto_1

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

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_8

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lpng;->h:Lprs;

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object v2, p0, Lpng;->g:Landroid/media/Image;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    iput-object v3, p0, Lpng;->h:Lprs;

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_a
    const v1, 0x1c

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x19

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lpng;->d:J

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x20

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    return-wide v0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final e()Landroid/graphics/Rect;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0xe

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpng;->f:Ljava/lang/Object;

    nop

    nop

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

    :goto_4
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lpng;->g:Landroid/media/Image;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Lpng;->j:Landroid/graphics/Rect;

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    :catch_0
    iget-object p0, p0, Lpng;->j:Landroid/graphics/Rect;

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    :goto_5
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    const v0, 0xa

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Lpng;->c:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Lprw;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    invoke-interface {p1}, Lprw;->d()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide p0, p0, Lpng;->d:J

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x7

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

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

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    return v0

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    :goto_13
    if-eq v1, v2, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_14
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    :goto_15
    iget v2, p0, Lpng;->b:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p1}, Lprw;->b()I

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lprw;

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

    :goto_19
    instance-of v1, p1, Lprw;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1}, Lprw;->c()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1e
    cmp-long p0, v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1f
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_c

    nop

    :goto_21
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v2, p0, Lpng;->a:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()Landroid/hardware/HardwareBuffer;
    .locals 1

    :try_start_0
    iget-object v0, p0, Lpng;->f:Ljava/lang/Object;

    nop

    monitor-enter v0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lpng;->g:Landroid/media/Image;

    nop

    invoke-virtual {p0}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
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

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final g()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lpng;->k()Lryb;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final h(Lprs;)V
    .locals 3

    goto/32 :goto_e

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

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-interface {v0, v2}, Lprs;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_10

    nop

    :goto_a
    iget-object v0, p0, Lpng;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lpng;->f:Ljava/lang/Object;

    nop

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

    nop

    :goto_c
    monitor-enter v1

    nop

    :try_start_2
    iget-object v0, p0, Lpng;->h:Lprs;

    nop

    nop

    nop

    nop

    iput-object p1, p0, Lpng;->h:Lprs;

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    monitor-enter v0

    nop

    nop

    :try_start_3
    iget-object v1, p0, Lpng;->h:Lprs;

    nop

    const/4 v2, 0x0

    nop

    if-nez v1, :cond_2

    nop

    nop

    invoke-interface {p1, v2}, Lprs;->a(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v0

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x19

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    :goto_12
    const v1, 0xb

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final hashCode()I
    .locals 5

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-wide v3, p0, Lpng;->d:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lpng;->c:I

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

    :goto_5
    filled-new-array {v0, v1, v2, p0}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_b
    invoke-static {p0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result p0

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

    :goto_c
    iget v0, p0, Lpng;->a:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_e
    iget v1, p0, Lpng;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    return p0

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x14

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop
.end method

.method public final j()Lpic;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v1, Lpic;

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpng;->g:Landroid/media/Image;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0}, Lpic;-><init>(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    return-object v1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpng;->f:Ljava/lang/Object;

    nop

    nop

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

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

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

    :goto_7
    goto/32 :goto_5

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k()Lryb;
    .locals 8

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_8
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpng;->i:Lryb;

    nop

    nop

    if-nez v0, :cond_3

    nop

    nop

    iget-object v0, p0, Lpng;->g:Landroid/media/Image;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    move-result-object v0

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    sget v0, Lryb;->d:I

    nop

    sget-object v0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    new-instance v2, Lrxw;

    nop

    invoke-direct {v2}, Lrxw;-><init>()V

    array-length v3, v0

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_9
    if-ge v4, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    aget-object v5, v0, v4

    nop

    nop

    nop

    nop

    new-instance v6, Lppk;

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6, v5, v7}, Lppk;-><init>(Landroid/media/Image$Plane;I)V

    invoke-virtual {v2, v6}, Lrxw;->h(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    :cond_2
    invoke-virtual {v2}, Lrxw;->g()Lryb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lpng;->i:Lryb;

    nop

    nop

    nop

    nop

    :cond_3
    monitor-exit v1

    nop

    nop

    nop

    goto/16 :goto_1

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

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

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lpng;->i:Lryb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    const v0, 0xd

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lpng;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    goto/32 :goto_19

    nop

    nop

    :goto_0
    iget v0, p0, Lpng;->b:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const-string v0, "w"

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "Image-"

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

    nop

    :goto_a
    invoke-static {v0}, Lpuq;->ba(I)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v2, p0, Lpng;->d:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v0, p0, Lpng;->a:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "-"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    const-string v0, "h"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    iget v0, p0, Lpng;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method
