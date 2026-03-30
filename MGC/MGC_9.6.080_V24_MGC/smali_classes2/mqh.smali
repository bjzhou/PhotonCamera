.class public Lmqh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/String;

.field public final d:I

.field public final e:Z

.field public final f:F

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:Ljava/util/HashMap;

.field public final k:Ljava/util/HashMap;

.field public final l:Ljava/util/HashMap;

.field public m:Lsps;

.field public n:Z

.field public o:J

.field public p:J

.field public q:J

.field public r:J

.field public s:J

.field public t:F

.field public u:F

.field public v:J

.field public w:I

.field public final x:Lnar;

.field private final y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lmqh;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-string v0, "mqh"

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>(Lmqd;ZZFIII)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_32

    nop

    :goto_2
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lmqh;->w:I

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5
    aget-object p5, p2, p4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lmqh;->t:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 p2, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    iput-boolean p3, p0, Lmqh;->y:Z

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_a
    invoke-virtual {p6, p5, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_b
    iput p7, p0, Lmqh;->i:I

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

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iput p6, p0, Lmqh;->h:I

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    array-length p2, p2

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_f
    iget-object p6, p0, Lmqh;->k:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_12
    iput p5, p0, Lmqh;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_13
    iput-boolean p1, p0, Lmqh;->n:Z

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

    :goto_14
    iput-object v3, p0, Lmqh;->x:Lnar;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    sget-object p1, Lsps;->c:Lsps;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v3, ""

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

    :goto_1a
    iput-object p2, p0, Lmqh;->l:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget p1, p1, Lmqd;->e:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean p2, p0, Lmqh;->e:Z

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

    :goto_1d
    iput v0, p0, Lmqh;->u:F

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

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p2, p0, Lmqh;->k:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_21
    move p4, p1

    nop

    :goto_22
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v3, v4}, Lnar;-><init>([B)V

    goto/32 :goto_14

    nop

    nop

    :goto_24
    iput-object p2, p0, Lmqh;->j:Ljava/util/HashMap;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {}, Lsps;->values()[Lsps;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v3, Lnar;

    nop

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

    :goto_27
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_28
    iput-wide v1, p0, Lmqh;->s:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_29
    invoke-static {}, Lmqc;->values()[Lmqc;

    move-result-object p2

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2a
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p1, p0, Lmqh;->m:Lsps;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2c
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2f
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p7

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v0, p0, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_31
    iput-object v3, p0, Lmqh;->c:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_32
    goto/32 :goto_1f

    nop

    nop

    :goto_33
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p6, p0, Lmqh;->l:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_35
    if-lt p4, p3, :cond_1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput p4, p0, Lmqh;->f:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_37
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_38
    iput-wide v1, p0, Lmqh;->v:J

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_39
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_24

    nop

    nop

    :goto_3a
    iput p1, p0, Lmqh;->d:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3b
    invoke-virtual {p6, p5, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2a

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

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

    :goto_3d
    iput-wide v1, p0, Lmqh;->r:J

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3e
    iget-object p6, p0, Lmqh;->j:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iput-wide v1, p0, Lmqh;->q:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_22

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_42
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_30

    nop

    nop

    :goto_43
    array-length p3, p2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance p2, Ljava/util/HashMap;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p6, p5, p7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_f

    nop

    nop
.end method


# virtual methods
.method public final a(Lsps;)Lmqc;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    check-cast p0, Ljava/lang/Class;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lmqc;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    iget-object p0, p0, Lmqh;->x:Lnar;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, Lnar;->k(Ljava/lang/Enum;Ljava/lang/Class;)Ljava/lang/Enum;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b(Lmqc;)V
    .locals 5

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmqh;->l:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_1

    nop

    nop

    iget-object v1, p0, Lmqh;->l:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    const-wide/16 v3, 0x1

    nop

    nop

    add-long/2addr v1, v3

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lmqh;->l:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    const-string p1, "unsupported speed up ratio"

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method public final c(Lmqc;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lmqh;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object v1, p0, Lmqh;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    iget-object p0, p0, Lmqh;->j:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    const-string p1, "unsupported speed up ratio"

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_6
    const v0, 0xf

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-boolean p0, p0, Lmqh;->y:Z

    nop

    monitor-exit v0

    nop

    nop

    nop

    return p0

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

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmqh;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    throw p0

    nop
.end method
