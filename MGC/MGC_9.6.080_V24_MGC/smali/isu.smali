.class public final Lisu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Limo;


# instance fields
.field public final a:Llxa;

.field public final b:Ljava/util/Map;

.field public c:J

.field public d:Z

.field public e:I

.field public final synthetic f:Lisv;

.field public final g:Ltkb;

.field public final h:Lpic;

.field private final i:Lktr;

.field private final j:Lrss;

.field private final k:Ljava/util/UUID;

.field private l:Lcom/google/googlex/gcam/InterleavedImageU8;

.field private m:Lsye;

.field private n:Lcom/google/googlex/gcam/ShotMetadata;

.field private o:Lsye;

.field private p:Lcom/google/googlex/gcam/ShotMetadata;

.field private q:Lcom/google/googlex/gcam/PortraitRequest;

.field private r:Lcom/google/googlex/gcam/ShotMetadata;

.field private s:Lsui;

.field private t:Lows;

.field private u:Z

.field private v:Z

.field private final w:Liss;


# direct methods
.method public constructor <init>(Lisv;Llxa;Lktr;Lrss;Ljava/util/UUID;Lrss;)V
    .locals 1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p5, p0, Lisu;->k:Ljava/util/UUID;

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

    :goto_1
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lisu;->j:Lrss;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lisu;->b:Ljava/util/Map;

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
    invoke-direct {p1, p0, p3, p2, p6}, Liss;-><init>(Lisu;Lktr;Llxa;Lrss;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-boolean p1, p0, Lisu;->v:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    sget-object p1, Limn;->a:Lnoz;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    new-instance p1, Liss;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Lisu;->e:I

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

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Lisu;->a:Llxa;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    iput-boolean p1, p0, Lisu;->u:Z

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

    nop

    :goto_10
    iput-object p1, p0, Lisu;->g:Ltkb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iput-object p3, p0, Lisu;->i:Lktr;

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

    :goto_13
    iput-object p1, p0, Lisu;->f:Lisv;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p1, 0x0

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

    :goto_15
    iput-boolean p1, p0, Lisu;->d:Z

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iput-object p1, p0, Lisu;->h:Lpic;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p3, p1, p4}, Lktr;->a(Lnoz;F)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lisu;->w:Liss;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lsot;->a:Lsot;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1b
    invoke-direct {p1, v0, v0, v0}, Lpic;-><init>([B[C[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public static bridge synthetic h(Lisu;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_2

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

    :goto_2
    iput-boolean v0, p0, Lisu;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lprw;Lsui;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final b(Lsye;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Lsye;

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

    :goto_1
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p3}, Llxa;->u()Ljava/lang/String;

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Lisu;->m:Lsye;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget p0, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    if-eqz p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_6
    iget-object p3, p0, Lisu;->a:Llxa;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lisu;->n:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lisu;->n:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_a

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lisu;->m:Lsye;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1}, Lsye;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    new-instance p1, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    invoke-direct {p1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    goto/32 :goto_8

    nop

    nop
.end method

.method public final c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lsui;Lows;)V
    .locals 2

    goto/32 :goto_1d

    nop

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

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Ljava/io/File;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x8

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-wide p3, p2, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p5, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_6
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p1, p1, Lisq;->c:Lhoh;

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

    :goto_b
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    iput-object p4, p0, Lisu;->s:Lsui;

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lisu;->q:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p5}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p5}, Ljye;->b()Lrss;

    move-result-object p5

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

    :goto_11
    iput-object p1, p0, Lisu;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p1, Lisv;->c:Lisq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_13
    invoke-static {p3, p4}, Lijg;->c(J)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_15
    invoke-static {v0, v1, p2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_portrait_raw_path_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    :goto_16
    if-eqz p1, :cond_2

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

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p5}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0}, Llxa;->u()Ljava/lang/String;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Llxa;->e()J

    move-result-wide p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1a
    invoke-virtual {p5}, Ljava/io/File;->exists()Z

    move-result p1

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

    nop

    :goto_1b
    iget-object p5, p1, Lisq;->b:Ltxm;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p5, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1e
    const/16 v0, 0x748

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_20
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lhni;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lisu;->a:Llxa;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_25
    sget-object p1, Lisq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lisu;->a:Llxa;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lisu;->f:Lisv;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    iget-wide v0, p2, Lcom/google/googlex/gcam/PortraitRequest;->a:J

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

    nop

    :goto_29
    invoke-static {p3, p4, p2, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_shot_prefix_set(JLcom/google/googlex/gcam/PortraitRequest;Ljava/lang/String;)V

    :goto_2a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    check-cast p5, Ljye;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    :goto_2d
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_2e
    const-string v0, "portrait"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    iput-object p3, p0, Lisu;->r:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_30
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v0, "Could not create portrait mode debug data folder."

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

    :goto_32
    invoke-virtual {p5}, Ljava/io/File;->mkdirs()Z

    move-result p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p5, p0, Lisu;->t:Lows;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, v0}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 19

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

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

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    iget-object v0, v0, Lisv;->k:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lhni;->B:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_4

    nop

    iget-object v0, v1, Lisu;->m:Lsye;

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    sget-object v0, Lisv;->b:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v2, 0x75b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Attempting to close the session but no primary RAW image has been received."

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_2
    iget-object v0, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v0, v0, Lisv;->e:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lisu;->o:Lsye;

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    nop

    :cond_3
    sget-object v0, Lisv;->b:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v2, 0x759

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    const-string v2, "Attempting to close the session but no secondary RAW image has been received."

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :cond_4
    :goto_8
    :try_start_3
    iget-object v0, v1, Lisu;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lisv;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v2, 0x75a

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    const-string v2, "Attempting to close the session but no RGB image has been received."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
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

    nop

    nop

    :goto_b
    throw v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    monitor-exit p0

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

    :goto_13
    return-void

    nop

    :cond_5
    :goto_14
    :try_start_4
    iget-boolean v0, v1, Lisu;->v:Z

    nop

    if-eqz v0, :cond_6

    nop

    sget-object v0, Lisv;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    const/16 v2, 0x758

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Postprocessing has already been started from another request."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    :goto_17
    return-void

    nop

    :cond_6
    :try_start_5
    iget-object v0, v1, Lisu;->a:Llxa;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Llxa;->u()Ljava/lang/String;

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, v1, Lisu;->v:Z

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    nop

    iget-object v3, v1, Lisu;->a:Llxa;

    nop

    iget-object v2, v2, Lisv;->f:Ljava/util/Map;

    nop

    nop

    invoke-interface {v3}, Llxa;->u()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    iget-object v2, v2, Lisv;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v14

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lisu;->s:Lsui;

    nop

    invoke-static {v2}, Lisv;->e(Lsui;)Lcom/google/googlex/gcam/InterleavedImageU16;

    move-result-object v7

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lisu;->j:Lrss;

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    iget-object v2, v1, Lisu;->q:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PortraitRequest;->a()Lcom/google/googlex/gcam/PixelRectVector;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_7

    nop

    nop

    const/4 v2, 0x0

    nop

    goto :goto_18

    nop

    :cond_7
    iget-object v2, v1, Lisu;->q:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    invoke-virtual {v2}, Lcom/google/googlex/gcam/PortraitRequest;->a()Lcom/google/googlex/gcam/PixelRectVector;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, v2, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    nop

    nop

    nop

    invoke-static {v3, v4, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PixelRectVector_size(JLcom/google/googlex/gcam/PixelRectVector;)J

    move-result-wide v2

    nop

    nop

    nop

    long-to-int v2, v2

    nop

    nop

    nop

    :goto_18
    iget-object v3, v1, Lisu;->g:Ltkb;

    nop

    nop

    nop

    iget-object v4, v3, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v4}, Ltkg;->C()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkb;->o()V

    :cond_8
    iget-object v3, v3, Ltkb;->b:Ltkg;

    nop

    check-cast v3, Lsot;

    nop

    nop

    sget-object v4, Lsot;->a:Lsot;

    nop

    nop

    nop

    nop

    nop

    iget v4, v3, Lsot;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x4

    nop

    nop

    iput v4, v3, Lsot;->b:I

    nop

    nop

    nop

    iput v2, v3, Lsot;->e:I

    nop

    nop

    nop

    nop

    iget-object v2, v1, Lisu;->a:Llxa;

    nop

    invoke-interface {v2}, Llxa;->u()Ljava/lang/String;

    iget-object v2, v1, Lisu;->j:Lrss;

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Lllb;

    nop

    nop

    nop

    iget-object v6, v1, Lisu;->l:Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    iget-object v2, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v1, Lisu;->q:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    iget-object v10, v1, Lisu;->m:Lsye;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v1, Lisu;->n:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    iget-object v12, v1, Lisu;->o:Lsye;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v1, Lisu;->p:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    iget-object v8, v1, Lisu;->w:Liss;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lisv;->h:Lkog;

    nop

    move-wide v4, v14

    nop

    nop

    nop

    move-object/from16 v16, v8

    nop

    nop

    move-object v8, v2

    nop

    nop

    nop

    move-wide/from16 v17, v14

    nop

    nop

    nop

    move-object/from16 v14, v16

    nop

    nop

    nop

    invoke-interface/range {v3 .. v14}, Lllb;->d(JLcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/InterleavedImageU16;Lkog;Lcom/google/googlex/gcam/PortraitRequest;Lsye;Lcom/google/googlex/gcam/ShotMetadata;Lsye;Lcom/google/googlex/gcam/ShotMetadata;Liss;)Lsui;

    move-result-object v2

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    :cond_9
    move-wide/from16 v17, v14

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Lpfi;

    nop

    const-string v3, "Portrait controller not available or null PortraitRequest, no effect applied."

    nop

    nop

    nop

    invoke-direct {v2, v3}, Lpfi;-><init>(Ljava/lang/String;)V

    sget-object v3, Lisv;->b:Lsdb;

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "No effect applied."

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0x756

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4, v5, v3, v2}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    invoke-static {v2}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v2

    nop

    :goto_19
    new-instance v3, Lmau;

    nop

    nop

    nop

    move-wide/from16 v4, v17

    nop

    invoke-direct {v3, v1, v4, v5, v0}, Lmau;-><init>(Ljava/lang/Object;JI)V

    sget-object v0, Lstd;->a:Lstd;

    nop

    invoke-static {v2, v3, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_6

    nop

    nop
.end method

.method public final synthetic d(Lcom/google/googlex/gcam/GrayImageS16;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public final e(Lsye;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    sget p0, Lryb;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p1}, Lsye;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p1, Lsye;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz p2, :cond_0

    nop

    nop

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

    :goto_4
    sget-object p0, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lisu;->a:Llxa;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_c

    nop

    :goto_7
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p1}, Lcom/google/googlex/gcam/ShotMetadata;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    iput-object p1, p0, Lisu;->p:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    iput-object p2, p0, Lisu;->p:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_10
    iput-object p1, p0, Lisu;->o:Lsye;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    invoke-interface {p3}, Llxa;->u()Ljava/lang/String;

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    iput-object p1, p0, Lisu;->o:Lsye;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/ShotMetadata;Ljava/util/List;Lcom/google/googlex/gcam/CyclopsParameters;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    const-string p1, "Invalid operation: addSecondaryRgbImage"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(JLjava/lang/Throwable;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_39

    nop

    :goto_2
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p3}, Llxa;->u()Ljava/lang/String;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p2}, Llxa;->ag()Lmjn;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Llxa;->C()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-interface {v1}, Llxa;->u()Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p3, p0, Lisu;->a:Llxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iget-object p3, p0, Lisu;->a:Llxa;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lisu;->a:Llxa;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-interface {p0, v0}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_32

    nop

    nop

    :goto_e
    invoke-interface {p3, v2, v1, p1, p2}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_10
    check-cast v0, Lsot;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v1, v2}, Lktr;->a(Lnoz;F)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lisu;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    iget-object p2, p0, Lisu;->a:Llxa;

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

    :goto_17
    check-cast p3, Lscz;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p3}, Lscs;->b()Lsdo;

    move-result-object p3

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

    nop

    :goto_19
    iget-object v0, p0, Lisu;->h:Lpic;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p1, p2, Lmjn;->g:Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lisu;->t:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

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

    :goto_1e
    iget-object v1, p0, Lisu;->a:Llxa;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object p3, Lisv;->b:Lsdb;

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

    :goto_20
    invoke-interface {p3, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    sget-object v1, Limn;->a:Lnoz;

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

    :goto_22
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_23
    check-cast p3, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_25
    invoke-virtual {v1, v0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_26
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p1, :cond_3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_28
    check-cast v1, Ltkb;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lisu;->i:Lktr;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p3, p0, Lisu;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_2d
    const-string v1, "PostProcessingPortraitImageSaverImpl did not save any output images."

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sget-object p0, Lisv;->b:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    iget-boolean v0, p0, Lisu;->d:Z

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

    nop

    :goto_30
    new-instance v0, Lhui;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_31
    if-eqz v0, :cond_4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p3, Lisv;->b:Lsdb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lows;->close()V

    goto/32 :goto_2f

    nop

    nop

    :goto_36
    const v1, 0x1b

    nop

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

    :goto_37
    const-string v2, "Error processing the image, cancelling the session %s for %d"

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_38
    iget-object p0, p0, Lisu;->a:Llxa;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2a

    nop

    :goto_3a
    goto/32 :goto_15

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lisu;->g:Ltkb;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput-object v1, p3, Lmjn;->H:Ltkb;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Lpic;->N()I

    move-result v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v1, 0x75d

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_40
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0, v1, p3}, Lhui;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_42
    invoke-interface {p3, v1}, Lscz;->M(I)Lsdo;

    move-result-object p3

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

    :goto_43
    invoke-interface {p3}, Llxa;->ag()Lmjn;

    move-result-object p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop
.end method

.method public final i(JLnar;Lllc;ILinr;Lndt;Lrss;)V
    .locals 15

    goto/32 :goto_35

    nop

    nop

    :goto_0
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    move-object/from16 v6, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    sget-object v2, Linr;->b:Linr;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

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

    :goto_a
    invoke-direct {v3}, Lcom/google/googlex/gcam/HdrGainMapInfo;-><init>()V

    goto/32 :goto_22

    nop

    nop

    :goto_b
    move-object/from16 v3, p6

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

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

    :goto_d
    if-eq v14, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_e
    invoke-virtual {v3}, Lcom/google/googlex/gcam/PortraitRequest;->e()Z

    move-result v8

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_f
    if-eq v14, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_10
    move-object/from16 v14, p6

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object/from16 v13, p8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14
    move/from16 v7, p5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v2, v1, Lisu;->r:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    invoke-virtual/range {v2 .. v13}, Lins;->a(JLnar;Lllc;IZLinr;Llxa;Ljava/util/UUID;Lcom/google/googlex/gcam/ShotMetadata;Lrss;)Lsui;

    move-result-object v7

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

    :goto_17
    iget-object v2, v2, Lisv;->g:Lins;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-wide/from16 v4, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v6, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v3, v0, Lllc;->d:Lrss;

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

    :goto_1d
    iget-object v3, v1, Lisu;->q:Lcom/google/googlex/gcam/PortraitRequest;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1e
    iget-object v2, v1, Lisu;->f:Lisv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v7, v8, v0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v2, Ljava/lang/Boolean;

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

    :goto_22
    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/ShotMetadata;->h(Lcom/google/googlex/gcam/HdrGainMapInfo;)V

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1d

    nop

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

    :goto_25
    iget-object v2, v1, Lisu;->f:Lisv;

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

    :goto_26
    invoke-virtual {v2, v3}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v2

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

    nop

    nop

    :goto_27
    sget-object v3, Llyr;->aP:Llze;

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

    :goto_28
    invoke-direct/range {v0 .. v6}, List;-><init>(Lisu;Lndt;Linr;JLnar;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v9, p6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    iget-object v2, v0, Lllc;->d:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object v1, p0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    iget-object v2, v2, Lisv;->i:Llyv;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v3, Lcom/google/googlex/gcam/HdrGainMapInfo;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2e
    move-object v0, v8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-wide/from16 v3, p1

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

    :goto_30
    move-object/from16 v0, p4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_31
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_4
    goto/32 :goto_3d

    nop

    :goto_32
    iget-object v12, v1, Lisu;->r:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_33
    move-object/from16 v2, p7

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

    :goto_34
    sget-object v2, Linr;->d:Linr;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_35
    const v0, 0x7

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

    :goto_36
    iget-object v10, v1, Lisu;->a:Llxa;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, v1, Lisu;->r:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_38
    new-instance v8, List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto :goto_40

    nop

    :goto_3a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v11, v1, Lisu;->k:Ljava/util/UUID;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v3}, Lcom/google/googlex/gcam/ShotMetadata;->h(Lcom/google/googlex/gcam/HdrGainMapInfo;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_7

    nop

    nop

    :goto_3e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_23

    nop

    :goto_40
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop
.end method
