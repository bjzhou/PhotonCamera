.class public final Lifu;
.super Luci;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field final synthetic a:Lcom/google/googlex/gcam/ShotMetadata;

.field final synthetic b:Ligg;

.field final synthetic c:Linb;

.field final synthetic d:Lcom/google/googlex/gcam/InterleavedImageS16;

.field final synthetic e:[F

.field final synthetic f:Ligu;


# direct methods
.method public constructor <init>(Lcom/google/googlex/gcam/ShotMetadata;Ligg;Linb;Lcom/google/googlex/gcam/InterleavedImageS16;[FLigu;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lifu;->b:Ligg;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lifu;->c:Linb;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lifu;->a:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p5, p0, Lifu;->e:[F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p4, p0, Lifu;->d:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p6, p0, Lifu;->f:Ligu;

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

    :goto_8
    invoke-direct {p0, p1}, Luci;-><init>(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lifu;->b:Ligg;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/FrameMetadata;->v(F)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    :goto_5
    invoke-virtual {v2}, Lcom/google/googlex/gcam/FrameMetadata;->b()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    iget-object v3, p0, Lifu;->d:Lcom/google/googlex/gcam/InterleavedImageS16;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    const v1, 0x8

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lifu;->c:Linb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lifu;->a:Lcom/google/googlex/gcam/ShotMetadata;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    monitor-exit v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v1, Ligu;->c:[Lppf;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_13
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v5, v1, Ligg;->j:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Linb;->a()I

    move-result v6

    nop

    nop

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    invoke-interface {v5, v6}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v1, Ligg;->d:Lpdf;

    nop

    nop

    invoke-virtual {v2}, Linb;->a()I

    move-result v6

    nop

    nop

    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v7, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-interface {v5, v0}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v2}, Linb;->a()I

    iget v0, v1, Ligg;->p:I

    nop

    nop

    add-int/lit8 v0, v0, 0x1

    nop

    iput v0, v1, Ligg;->p:I

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lige;->a:Lige;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p0, v0}, Ligg;->b([FLige;)Ltxv;

    move-result-object p0

    nop

    nop

    iget-object v0, p0, Ltxv;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v0, Ljava/lang/Iterable;

    nop

    nop

    nop

    iget-object p0, p0, Ltxv;->b:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p0, Ljava/lang/Iterable;

    nop

    nop

    nop

    nop

    nop

    sget-object v5, Lizh;->a:Lizh;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkg;->m()Ltkb;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Linb;->a()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v7}, Ltkg;->C()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_1
    iget-object v7, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lizh;

    nop

    nop

    nop

    nop

    iput v6, v7, Lizh;->c:I

    nop

    nop

    nop

    new-instance v6, Lcom/google/googlex/gcam/InterleavedReadViewS16;

    nop

    iget-wide v7, v3, Lcom/google/googlex/gcam/InterleavedImageS16;->a:J

    nop

    invoke-static {v7, v8, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->InterleavedImageS16_read_view(JLcom/google/googlex/gcam/InterleavedImageS16;)J

    move-result-wide v7

    nop

    nop

    nop

    invoke-direct {v6, v7, v8}, Lcom/google/googlex/gcam/InterleavedReadViewS16;-><init>(J)V

    iget-wide v6, v6, Lcom/google/googlex/gcam/InterleavedReadViewS16;->a:J

    nop

    nop

    iget-object v3, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_2

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_2
    iget-object v3, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v8, v3

    nop

    nop

    nop

    check-cast v8, Lizh;

    nop

    nop

    nop

    iget v9, v8, Lizh;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v9, v8, Lizh;->b:I

    nop

    nop

    iput-wide v6, v8, Lizh;->d:J

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v6

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    if-nez v3, :cond_3

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_3
    iget-object v3, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    move-object v4, v3

    nop

    nop

    nop

    check-cast v4, Lizh;

    nop

    nop

    nop

    iget v8, v4, Lizh;->b:I

    nop

    nop

    nop

    nop

    nop

    or-int/lit8 v8, v8, 0x2

    nop

    nop

    nop

    nop

    iput v8, v4, Lizh;->b:I

    nop

    nop

    nop

    nop

    iput-wide v6, v4, Lizh;->e:J

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_4

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_4
    iget-object v3, v5, Ltkb;->b:Ltkg;

    nop

    check-cast v3, Lizh;

    nop

    iget-object v4, v3, Lizh;->f:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ltkl;->c()Z

    move-result v6

    nop

    nop

    nop

    if-nez v6, :cond_5

    nop

    nop

    invoke-static {v4}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iput-object v4, v3, Lizh;->f:Ltkl;

    nop

    :cond_5
    iget-object v3, v3, Lizh;->f:Ltkl;

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object v0, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_6

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_6
    iget-object v0, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v0, Lizh;

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lizh;->g:Ltkl;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ltkl;->c()Z

    move-result v4

    nop

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ltkg;->s(Ltkl;)Ltkl;

    move-result-object v3

    nop

    nop

    iput-object v3, v0, Lizh;->g:Ltkl;

    nop

    :cond_7
    iget-object v0, v0, Lizh;->g:Ltkl;

    nop

    nop

    nop

    invoke-static {p0, v0}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-static {p1}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    iget-object v0, v5, Ltkb;->b:Ltkg;

    nop

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    if-nez v0, :cond_8

    nop

    nop

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_8
    iget-object v0, v5, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v0, Lizh;

    nop

    nop

    nop

    iget v3, v0, Lizh;->b:I

    nop

    nop

    or-int/lit8 v3, v3, 0x8

    nop

    nop

    iput v3, v0, Lizh;->b:I

    nop

    nop

    nop

    nop

    iput-wide p0, v0, Lizh;->i:J

    nop

    nop

    nop

    new-instance p0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Liyw;->a:Liyw;

    nop

    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ltkg;->C()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_9

    nop

    nop

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_9
    iget-object v3, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    check-cast v3, Liyw;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Liyw;->b:Ltkv;

    nop

    nop

    invoke-interface {v4}, Ltkv;->c()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_a

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v4

    nop

    nop

    nop

    nop

    iput-object v4, v3, Liyw;->b:Ltkv;

    nop

    :cond_a
    iget-object v3, v3, Liyw;->b:Ltkv;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v3}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    invoke-virtual {p0}, Ltkg;->C()Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    if-nez p0, :cond_b

    nop

    invoke-virtual {v0}, Ltkb;->o()V

    :cond_b
    iget-object p0, v0, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast p0, Liyw;

    nop

    iget-object v3, p0, Liyw;->c:Ltkv;

    nop

    invoke-interface {v3}, Ltkv;->c()Z

    move-result v4

    nop

    if-nez v4, :cond_c

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ltkg;->v(Ltkv;)Ltkv;

    move-result-object v3

    nop

    iput-object v3, p0, Liyw;->c:Ltkv;

    nop

    nop

    nop

    :cond_c
    iget-object p0, p0, Liyw;->c:Ltkv;

    nop

    invoke-static {p1, p0}, Ltir;->e(Ljava/lang/Iterable;Ljava/util/List;)V

    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    check-cast p0, Liyw;

    nop

    iget-object p1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_d

    nop

    invoke-virtual {v5}, Ltkb;->o()V

    :cond_d
    iget-object p1, v5, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    check-cast p1, Lizh;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p0, p1, Lizh;->h:Liyw;

    nop

    nop

    nop

    nop

    nop

    iget p0, p1, Lizh;->b:I

    nop

    nop

    nop

    or-int/lit8 p0, p0, 0x4

    nop

    nop

    nop

    iput p0, p1, Lizh;->b:I

    nop

    nop

    nop

    nop

    sget-object p0, Liyx;->a:Liyx;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ltkg;->m()Ltkb;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget p1, v1, Ligg;->f:I

    nop

    nop

    nop

    invoke-static {p1, p0}, Liyl;->f(ILtkb;)V

    const/4 p1, 0x5

    nop

    invoke-static {p1, p0}, Liyl;->g(ILtkb;)V

    invoke-virtual {v5}, Ltkb;->i()Ltkg;

    move-result-object p1

    nop

    nop

    check-cast p1, Lizh;

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_e

    nop

    nop

    nop

    invoke-virtual {p0}, Ltkb;->o()V

    :cond_e
    iget-object v0, p0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Liyx;

    nop

    nop

    nop

    nop

    iput-object p1, v0, Liyx;->e:Lizh;

    nop

    nop

    nop

    nop

    iget p1, v0, Liyx;->b:I

    nop

    nop

    nop

    or-int/lit8 p1, p1, 0x1

    nop

    nop

    nop

    nop

    nop

    iput p1, v0, Liyx;->b:I

    nop

    nop

    nop

    invoke-static {p0}, Liyl;->e(Ltkb;)Liyx;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lcom/google/android/apps/camera/jni/serengeti/SerengetiNative;->a(Liyx;)Lizf;

    move-result-object p0

    nop

    nop

    nop

    nop

    iget p1, p0, Lizf;->c:I

    nop

    nop

    invoke-static {p1}, Liyl;->d(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_f

    nop

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_f
    const/4 v0, 0x3

    nop

    nop

    if-eq p1, v0, :cond_10

    nop

    nop

    nop

    :goto_14
    sget-object p1, Ligg;->a:Lsdb;

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    const/16 v0, 0x5d9

    nop

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lsdo;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const-string v0, "Failed to add linear image for sessionId=%d, shot_id = %d"

    nop

    nop

    nop

    nop

    nop

    iget p0, p0, Lizf;->b:I

    nop

    nop

    nop

    invoke-virtual {v2}, Linb;->a()I

    move-result v2

    nop

    invoke-interface {p1, v0, p0, v2}, Lscz;->w(Ljava/lang/String;II)V

    goto :goto_15

    nop

    nop

    nop

    :cond_10
    invoke-virtual {v2}, Linb;->a()I

    :goto_15
    iget-object p0, v1, Ligg;->d:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V

    :cond_11
    invoke-virtual {v1}, Ligg;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lifu;->e:[F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_19
    iget-object v1, p0, Lifu;->f:Ligu;

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

    :goto_1a
    iget-object v4, p0, Lifu;->a:Lcom/google/googlex/gcam/ShotMetadata;

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

    :goto_1b
    monitor-exit v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Ltyg;->a:Ltyg;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    check-cast p1, Lcom/google/googlex/gcam/ShotMetadata;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "ChromaDenoisedCallback#"

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

    nop
.end method
