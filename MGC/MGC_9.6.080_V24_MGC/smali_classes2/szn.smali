.class public Lszn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ltav;

.field public final c:Lszz;

.field public final d:Ltap;

.field public final e:Lsuk;

.field public final f:Loyd;

.field public volatile g:Lj$/util/Optional;

.field public final h:Ljava/util/Map;

.field public final i:Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;

.field public final j:Lhdn;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "szn"

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
    return-void

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lszn;->a:Lsdb;

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltav;Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;Lszz;Lhdn;Ltap;Lsuk;Loyd;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p7, p0, Lszn;->f:Loyd;

    nop

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

    :goto_2
    iput-object p3, p0, Lszn;->c:Lszz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Lszn;->d:Ltap;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    iput-object v0, p0, Lszn;->g:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

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

    :goto_7
    iput-object p2, p0, Lszn;->i:Lcom/google/googlex/gcam/creativecamera/allin/jni/ImageConversionJniImpl;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    iput-object p1, p0, Lszn;->b:Ltav;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lszn;->h:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p6, p0, Lszn;->e:Lsuk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iput-object p4, p0, Lszn;->j:Lhdn;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public static a(Lsve;Lcom/google/ar/core/Anchor;)Lsve;
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq p0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    check-cast p0, Lsve;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p0, v1, Lsve;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    check-cast v1, Lsve;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    move p0, v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lcom/google/ar/core/Anchor;->getTrackingState()Lcom/google/ar/core/TrackingState;

    move-result-object p0

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

    :goto_8
    goto :goto_d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_b
    invoke-virtual {p1}, Lcom/google/ar/core/Anchor;->getPose()Lcom/google/ar/core/Pose;

    move-result-object p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    :goto_e
    return-object p0

    nop

    :goto_f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v1, Lcom/google/ar/core/TrackingState;->TRACKING:Lcom/google/ar/core/TrackingState;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    iget v3, v1, Lsve;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    const/4 v2, 0x1

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

    :goto_13
    if-eqz v2, :cond_2

    nop

    goto/32 :goto_1d

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    or-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    :goto_19
    const v0, 0xf

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Ltcw;->e(Lcom/google/ar/core/Pose;)Ltsi;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, p0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    iput v2, v1, Lsve;->b:I

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

    :goto_20
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ltkb;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_22
    invoke-static {p0}, Ltcw;->i(Ltsi;)Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, p0}, Ltkb;->O(Ljava/lang/Iterable;)V

    goto/32 :goto_4

    nop

    nop

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    const v1, 0xd

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(I)Lszh;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lszn;->h:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lszh;

    nop

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    const v0, 0x1e

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

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

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
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1, p0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_12

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    const-string p0, "Capture session does not exist: "

    nop

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

    nop

    :goto_11
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop
.end method

.method public final c()V
    .locals 6

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    :goto_2
    cmp-long v0, v0, v2

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_3
    const-string v1, "Error deleting processor."

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    :goto_7
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Calling close() on an already closed processor."

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v4, Lsed;->a:Lsdr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_c
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    const-string v1, "AllInNativeProcessor"

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_f
    const-wide/16 v2, 0x0

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

    :goto_10
    const/16 v0, 0x15a8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    const/16 v1, 0x15aa

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x10

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_17
    iget-wide v0, p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

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

    nop

    :goto_18
    check-cast v0, Lscz;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lsed;->a:Lsdr;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_28

    nop

    nop

    :goto_1d
    invoke-static {v0}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a([B)Ltbf;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1f
    iput-wide v2, p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_20
    if-ne v0, v4, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    :goto_21
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v0}, La;->P(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_23
    check-cast p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    :goto_26
    invoke-virtual {p0, v4, v5}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->delete(J)[B

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v4, p0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lszn;->b:Ltav;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {p0, v0, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v4, v1}, Lsdo;->h(Lsdr;Ljava/lang/Object;)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p0, Ltbf;->a:Ltbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, v0, Ltbf;->d:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_21

    nop

    nop

    :goto_33
    goto/32 :goto_13

    nop

    nop

    :goto_34
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v0, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a:Lsdb;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final d(Lszh;ILcom/google/ar/core/Frame;Lszf;Lcom/google/googlex/gcam/YuvWriteView;Landroid/util/Size;)V
    .locals 15

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v3, Lryb;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3}, Lj$/util/Optional;->isEmpty()Z

    move-result v4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move v13, v3

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_6d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v2, v0, v3}, Lszh;->g(Lryb;Lj$/util/Optional;Ltba;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_c
    iget v4, v3, Ltbf;->b:I

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    goto/16 :goto_6d

    nop

    nop

    :goto_e
    goto/32 :goto_98

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput v13, v1, Lszh;->g:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v4, Lszs;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_16
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_19
    new-instance v4, Lszm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Ltag;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_1d
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_1e
    const/4 v5, 0x6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v3}, Lj$/util/Optional;->flatMap(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/16 v4, 0x158b

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v4, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_22
    const/4 v5, 0x0

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_23
    iget-object v3, v4, Lszm;->b:Ltba;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_24
    const/4 v11, 0x4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v10, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-wide v4, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_27
    check-cast v4, Lcom/google/ar/core/Session;

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

    :goto_28
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_29
    sget-object v3, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v3, v4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2b
    goto/16 :goto_97

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6e

    nop

    nop

    :goto_2e
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_2f
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move-object v3, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_53

    nop

    :goto_32
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static/range {p5 .. p5}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v7

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, v3, Ltba;->c:I

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_35
    if-eqz v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_36
    sget-object v4, Lrvj;->a:Lj$/util/stream/Collector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_37
    const/16 v1, 0x158d

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v4, v3, v12}, Lszm;-><init>(Lryb;Ltba;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v8, v2, Lszf;->e:Ltsi;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {v4, v3, v12}, Lszm;-><init>(Lryb;Ltba;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3c
    if-nez v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v3, Lszn;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v4, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_3f
    iget v4, v3, Ltbf;->d:I

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_41
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_42
    new-instance v4, Lszm;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_44
    new-instance v4, Lszm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    check-cast v3, Lryb;

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_46
    new-instance v4, Lsjb;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_47
    move/from16 v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget v3, Lryb;->d:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_49
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_4a
    invoke-virtual {v3}, Ltkb;->i()Ltkg;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4c
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_4d
    check-cast v7, Lcom/google/ar/core/Pose;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const/16 v4, 0x158c

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_4f
    const-string v5, "Failed to create person anchors."

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v3}, Lryb;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v6, p6

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-ne v4, v11, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_53
    goto/32 :goto_c

    nop

    nop

    :goto_54
    invoke-virtual {v3}, Lscs;->c()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_55
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_56
    iget-object v0, v0, Lszn;->g:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_57
    new-instance v14, Lszv;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v5, 0x3

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5a
    invoke-static {v4}, La;->P(I)I

    move-result v4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-direct/range {v3 .. v9}, Lszv;-><init>(Lcom/google/ar/core/Session;Lcom/google/ar/core/Frame;Landroid/util/Size;Lcom/google/ar/core/Pose;Ltsi;Z)V

    goto/32 :goto_9b

    nop

    nop

    :goto_5c
    sget v3, Lryb;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_5e
    new-instance v0, Ltag;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5f
    iget-boolean v5, v5, Lszc;->c:Z

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_60
    invoke-static {v3}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->a([B)Ltbf;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v4, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v4, Lscz;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v3, Lscz;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_64
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_65
    iget-object v2, v4, Lszm;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v4, "No tracking session, can\'t create person anchors."

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_67
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v3, Liqa;

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_69
    new-instance v4, Lsjb;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v12, v3

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    check-cast v3, Lsve;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v4, v3, v12}, Lszm;-><init>(Lryb;Ltba;)V

    :goto_6d
    goto/32 :goto_82

    nop

    nop

    :goto_6e
    sget-object v3, Lszn;->a:Lsdb;

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_6f
    invoke-virtual {v3}, Ltis;->h()[B

    move-result-object v9

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v1, "Unsupported use case: Too many people in the image."

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_72
    invoke-direct {v4, v10, v5}, Lsjb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    move-object/from16 v2, p4

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_74
    sget-object v4, Lszn;->a:Lsdb;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_75
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-wide v5, v4, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->b:J

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    check-cast v3, Ltba;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_78
    invoke-direct {v3, v10, v2, v4, v5}, Liqa;-><init>(Landroid/util/Size;Lszf;Lszm;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_79
    check-cast v5, Lszc;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_7a
    check-cast v0, Lscz;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_7b
    xor-int/lit8 v9, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual/range {v3 .. v9}, Lcom/google/googlex/gcam/creativecamera/allin/jni/AllInNativeImpl;->getPersonFiguresImpl(JIJ[B)[B

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_7d
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v4, v14, v5}, Lsjb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_7f
    const/16 v5, 0x158a

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_80
    invoke-interface {v3, v4}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object v3

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_81
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_82
    iget-object v3, v4, Lszm;->b:Ltba;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_84
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_85
    invoke-direct {v4, v11}, Lszs;-><init>(I)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v4, v0, Lszn;->b:Ltav;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_87
    invoke-virtual/range {p4 .. p4}, Lszf;->b()Ltkb;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_89
    iget-object v3, v3, Ltbf;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    :goto_8c
    goto/32 :goto_19

    nop

    nop

    :goto_8d
    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_8e
    const-string v4, "Camera is not tracking, can\'t create a person anchors."

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_8f
    iget-object v4, v0, Lszn;->g:Lj$/util/Optional;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    sget-object v3, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v0, Lszn;->a:Lsdb;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual/range {p4 .. p4}, Lszf;->a()Lj$/util/Optional;

    move-result-object v3

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

    :goto_93
    invoke-static {v3}, La;->J(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_95
    move-object v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget-object v3, Ltba;->a:Ltba;

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v5, v1, Lszh;->b:Lszo;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_99
    sget v4, Lryb;->d:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_9a
    const/4 v5, 0x2

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v3, v12, Ltba;->b:Ltkv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
