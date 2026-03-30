.class public Llkq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lllb;


# static fields
.field public static final a:Lsdb;

.field public static final b:Ljava/lang/String;

.field public static final c:Ljava/lang/String;

.field public static final d:Ljava/lang/String;


# instance fields
.field public final e:Ljava/util/concurrent/Executor;

.field public final f:Ljava/lang/Object;

.field public final g:Ljava/lang/Object;

.field public final h:Ljava/util/HashMap;

.field public final i:Llkz;

.field public final j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

.field public k:Z

.field public final l:Llld;

.field public final m:Lcom/google/googlex/gcam/Gcam;

.field public final n:Llyv;

.field public final o:Llks;

.field public final p:Lhoh;

.field private final q:Lkqj;

.field private final r:Lijl;

.field private final s:Z

.field private final t:Ltxm;

.field private final u:Lnpr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryTele_get()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    sput-object v0, Llkq;->b:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    sput-object v0, Llkq;->c:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryWide_get()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraPrimary_get()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    sput-object v0, Llkq;->d:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    sput-object v0, Llkq;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    const-string v0, "lkq"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Llks;Llld;Lkqj;Ljava/util/concurrent/Executor;Landroid/content/Context;Lhoh;Llyv;Lijl;Lnpr;Lcom/google/googlex/gcam/Gcam;Ltxm;)V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Llkq;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v1, p0, Llkq;->j:Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

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

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p4, p0, Llkq;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iput-boolean p1, p0, Llkq;->s:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iput-object p1, p0, Llkq;->o:Llks;

    nop

    nop

    iput-object p2, p0, Llkq;->l:Llld;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_c
    iput-object p7, p0, Llkq;->n:Llyv;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p1, Llkz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/Object;

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

    :goto_10
    iput-object p6, p0, Llkq;->p:Lhoh;

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

    :goto_11
    iput-object p8, p0, Llkq;->r:Lijl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_13
    iput-object p9, p0, Llkq;->u:Lnpr;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iput-object p11, p0, Llkq;->t:Ltxm;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    :goto_16
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p10, p0, Llkq;->m:Lcom/google/googlex/gcam/Gcam;

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

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p0, Llkq;->i:Llkz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p1, p5}, Llkz;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    new-instance v1, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;

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

    :goto_1d
    iput-object v1, p0, Llkq;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object p3, p0, Llkq;->q:Lkqj;

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

    nop

    :goto_1f
    const v0, 0x1a

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

    :goto_20
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v1, Ljava/lang/Object;

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

    :goto_22
    invoke-direct {v1}, Lcom/google/googlex/gcam/creativecamera/portraitmode/PortraitOutputsInterface;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    sget-object p1, Lhni;->b:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p6, p1}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_25
    iput-object v1, p0, Llkq;->h:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    iput-boolean v1, p0, Llkq;->k:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const v1, 0x12

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Lllc;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, p0, p1, v0, v0}, Lllc;-><init>(Lrss;Lrss;Lrss;Lrss;)V

    goto/32 :goto_7

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-static {p0}, Llkq;->b(Ljava/lang/String;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lllc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    return-object v1

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_a
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Llkq;->b(Ljava/lang/String;)Lrss;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop
.end method

.method public static b(Ljava/lang/String;)Lrss;
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    :try_start_0
    sget-object v0, Lexs;->a:Lts;

    nop

    nop

    nop

    invoke-static {p0}, Leyf;->a(Ljava/lang/Object;)Lexq;

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop
    :try_end_0
    .catch Lexp; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p0, Llkq;->a:Lsdb;

    nop

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

    :goto_6
    sget-object p0, Lrsa;->a:Lrsa;

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
    invoke-static {p0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const-string v0, "String was not a serialized XMPMeta."

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v0, 0xef1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0, v0}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public static f(Lnar;)Z
    .locals 4

    goto/32 :goto_18

    nop

    nop

    :goto_0
    check-cast v0, Lrss;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Landroid/hardware/HardwareBuffer;

    nop

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

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lnar;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return v3

    nop

    nop

    :goto_8
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move p0, v3

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    if-gtz p0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    :goto_14
    check-cast p0, Lrss;

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

    :goto_15
    if-gtz v1, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    return v2

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    :goto_18
    const v0, 0x10

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->i()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

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

    :goto_20
    goto/16 :goto_e

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p0, Landroid/hardware/HardwareBuffer;

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

    :goto_23
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    :goto_25
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    goto :goto_1d

    nop

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move p0, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2b
    check-cast v0, Lcom/google/googlex/gcam/InterleavedImageU8;

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

    nop

    :goto_2c
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_25

    nop
.end method


# virtual methods
.method public final c()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

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

    goto/32 :goto_5

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_6
    invoke-direct {v0, p0, v1}, Lldq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lldq;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0xd

    nop

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

    :goto_d
    const v1, 0x19

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Llkq;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/InterleavedImageU16;Lkog;Lcom/google/googlex/gcam/PortraitRequest;Lsye;Lcom/google/googlex/gcam/ShotMetadata;Lsye;Lcom/google/googlex/gcam/ShotMetadata;Liss;)Lsui;
    .locals 16

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Lsxh;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1
    if-gez v0, :cond_0

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    float-to-int v3, v3

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_3
    check-cast v0, Ljye;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_51

    nop

    nop

    :goto_5
    const/16 v7, 0x64

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_80

    nop

    nop

    :goto_8
    if-eq v3, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_a
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_spotlight_enhance_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {v3, v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_horizontal_flip_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v6, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    :goto_13
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_14
    if-nez v6, :cond_2

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_15
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_17
    const-string v6, "anBnX3NjYWxpbmdfZW5hYmxlX2tleQ"

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_18
    iget v0, v3, Lsyf;->e:I

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lsxf;->b:Lsxf;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v5, p6

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x8

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

    :goto_1e
    iget-object v0, v1, Llkq;->q:Lkqj;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_1f
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    move-object v3, v9

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct/range {v0 .. v13}, Llkm;-><init>(Llkq;JLkog;Lcom/google/googlex/gcam/PortraitRequest;Liss;ZLsye;Lcom/google/googlex/gcam/ShotMetadata;Lsye;Lcom/google/googlex/gcam/ShotMetadata;Lcom/google/googlex/gcam/InterleavedImageU16;Lcom/google/googlex/gcam/InterleavedImageU8;)V

    goto/32 :goto_5e

    nop

    nop

    :goto_25
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_27
    if-lt v0, v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v3, v4, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v13, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2a
    const/4 v8, 0x0

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object v2, Lhni;->v:Lhmn;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v6, " with value "

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v6, v7, v5, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_height_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, v1, Llkq;->u:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_31
    invoke-static {v3, v4, v5, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_enable_lancet_upscaler_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v3, Lpog;->a:Lpog;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_34
    iget v10, v9, Lsxf;->h:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v3, v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_apply_portrait_matting_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_56

    nop

    nop

    :goto_36
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_face_detection_method_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget v0, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_38
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_opencl_depth_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v15, Llkm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, v1, Llkq;->t:Ltxm;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v12, p4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v6, v7, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_width_get(JLcom/google/googlex/gcam/PortraitRequest;)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3f
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v3, Lhni;->J:Lhmn;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_41
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    :cond_7
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v0, Lsxh;->d:Lsxh;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_44
    sget-object v3, Lsxf;->g:[Lsxf;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_45
    iget-wide v9, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_47
    aget-object v3, v3, v0

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v6}, Lcom/a;->ab_mb(Ljava/lang/Object;)I

    move-result v6

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v6}, Lcom/a;->ab(Ljava/lang/String;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_execute_finish_on_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    :goto_4b
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_86

    nop

    :goto_4d
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v0, Ljava/io/File;

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v3, Lhni;->G:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

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

    :goto_54
    aget-object v9, v9, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const-string v6, "anBnX3NjYWxpbmdfa2V5"

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_57
    mul-float/2addr v3, v6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_58
    invoke-static {v3, v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_enable_gpu_boost_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_91

    nop

    nop

    :goto_59
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    :goto_5a
    move-object/from16 v10, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_5b
    move-object/from16 v5, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_af

    nop

    nop

    :goto_5e
    invoke-virtual {v14, v15}, Lkqj;->a(Lkqg;)Lsui;

    move-result-object v0

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

    :goto_5f
    sget-object v4, Lsyf;->d:[Lsyf;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_60
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_63
    const-string v6, "camera.lenstoggles_enable"

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_64
    invoke-static {v3, v4, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_depth_processing_get(JLcom/google/googlex/gcam/PortraitRequest;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_65
    const-class v1, Lsyf;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_67
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    :goto_68
    invoke-static {v6, v7, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_height_get(JLcom/google/googlex/gcam/PortraitRequest;)I

    move-result v2

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_69
    if-lt v3, v9, :cond_9

    nop

    goto/32 :goto_9a

    nop

    :cond_9
    goto/32 :goto_97

    nop

    nop

    :goto_6a
    iget-boolean v0, v1, Llkq;->s:Z

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_6b
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v4, v3, Lsyf;->e:I

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

    :goto_6f
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v0, v3}, Lnpr;->m(Lpog;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_72
    sget-object v0, Lsxf;->f:Lsxf;

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

    nop

    :goto_73
    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_74
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    move-wide/from16 v2, p1

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_76
    iget-object v14, v1, Llkq;->q:Lkqj;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_77
    invoke-static {v6}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v6

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-static {v9, v10, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_relighting_option_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_7c
    if-eq v9, v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_a
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_7d
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_7e
    move v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_7f
    move-object/from16 v11, p10

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_81
    move v0, v8

    nop

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_83
    sget-object v0, Lsxj;->a:Lsxj;

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

    :goto_84
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ef

    nop

    nop

    :goto_85
    invoke-static {v2}, Ljmo;->z(I)I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_f3

    nop

    nop

    :goto_87
    invoke-static {v6}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_88
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_8b
    move-object/from16 v8, p7

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0}, Ljye;->b()Lrss;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_8d
    move-object v0, v15

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_8e
    invoke-virtual {v5, v0}, Lcom/google/googlex/gcam/PortraitRequest;->d(Lsxf;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    :cond_c
    goto/32 :goto_6f

    nop

    :goto_91
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    sget-object v3, Lhni;->aa:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const v7, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_95
    iget-wide v6, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_97
    aget-object v4, v4, v3

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_99
    goto/16 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v2, Lhni;->H:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    if-eqz v0, :cond_d

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_92

    nop

    nop

    :goto_9d
    iget-wide v6, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9e
    const v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v0, v0, Lkqj;->a:Lkxe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    move v2, v8

    nop

    nop

    :goto_a1
    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v0, v3}, Lpog;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_a3
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_a4
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_a5
    sget-object v3, Lhni;->ab:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const-class v1, Lsxf;

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_8a

    nop

    nop

    :goto_a9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    sget-object v3, Lhni;->F:Lhmn;

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_ab
    invoke-static {v6, v7, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_width_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    sget-object v2, Lhni;->Y:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_af
    move v3, v8

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_b1
    div-float/2addr v3, v7

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_b2
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_b3
    invoke-virtual {v0}, Lijl;->a()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move-object/from16 v9, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_b5
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_b6
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_embed_gdepth_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b8
    iget-wide v6, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    mul-float/2addr v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget v0, v0, Lsxj;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_bb
    throw v2

    nop

    nop

    nop

    :goto_bc
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v6, v7, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_gpu_resample_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_b8

    nop

    nop

    :goto_be
    if-ne v6, v7, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    int-to-float v6, v6

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

    :goto_c0
    invoke-static {v6}, Lcom/a;->VariableKeyActiveLens(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_c1
    iget-wide v6, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {v0, v3}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_c3
    invoke-static {v2, v3, v5, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_force_run_stereo_depth_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    float-to-int v2, v2

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual/range {p5 .. p5}, Lpoh;->l()Lpog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    move-object/from16 v6, p11

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_ca
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_cb
    invoke-virtual/range {p5 .. p5}, Lpoh;->l()Lpog;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_cc
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    throw v2

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    sget-object v2, Lhni;->D:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_d0
    sget-object v9, Lsxf;->g:[Lsxf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_d1
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_d2
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_d3
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-wide v2, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_d5
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const-string v7, "No enum "

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_d7
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_cache_directory_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    :goto_d8
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_da
    invoke-static {v0}, Ljmo;->z(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_dc
    iget-wide v3, v5, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_dd
    if-eq v9, v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_de
    invoke-static {v3, v4, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_spotlight_enhance_v2_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    if-nez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_e0
    const/4 v4, 0x6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e1
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_e2
    if-eq v4, v0, :cond_12

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_12
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_e3
    int-to-float v2, v2

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_e4
    if-nez v7, :cond_13

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v0, v1, Llkq;->r:Lijl;

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    move-object/from16 v4, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_e7
    aget-object v3, v3, v0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_e8
    if-nez v6, :cond_14

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :cond_14
    :goto_e9
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-static {v2, v3, v5, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_enable_pd_disparity_model_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_ed
    move v3, v8

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-eq v10, v0, :cond_15

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget v9, v3, Lsxf;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_f3
    sget-object v3, Lsyf;->d:[Lsyf;

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v0, v1, Llkq;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    :goto_f5
    div-float/2addr v2, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_f6
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    iget v9, v4, Lsyf;->e:I

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_f8
    sget-object v3, Lhni;->q:Lhmn;

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 0

    goto/32 :goto_0

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
.end method
