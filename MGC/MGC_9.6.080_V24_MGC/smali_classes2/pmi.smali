.class public final Lpmi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpsd;


# instance fields
.field private final a:Lpse;

.field private final b:Lphj;

.field private final c:Lpmk;

.field private final d:Lpcu;

.field private final e:Ljava/util/Map;

.field private final f:Lrbh;


# direct methods
.method public constructor <init>(Lrbh;Lpcu;Lpse;Lphj;Lpmk;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lpmi;->d:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lpmi;->b:Lphj;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    iput-object p1, p0, Lpmi;->f:Lrbh;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-object v0, p0, Lpmi;->e:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lpmi;->a:Lpse;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ljava/util/HashMap;

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

    :goto_7
    const-string p1, "multi-res-listener"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lpmi;->c:Lpmk;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lpsb;)V
    .locals 7

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_2
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

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

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpmi;->e:Ljava/util/Map;

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpmg;

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

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :cond_2
    :try_start_1
    const-string p1, "ImageReader("

    nop

    nop

    nop

    const-string v0, ") doesn\'t belong to this multi-resolution ImageReader"

    nop

    new-instance v2, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    invoke-static {v1, p1, v0}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {v2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :cond_3
    new-instance p1, Ljava/util/NoSuchElementException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Collection contains no element matching the predicate."

    nop

    nop

    invoke-direct {p1, v0}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    :goto_e
    :try_start_2
    iget-object v0, p0, Lpmi;->a:Lpse;

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    check-cast v1, Lpot;

    nop

    nop

    nop

    iget-object v1, v1, Lpot;->f:Ljava/util/Map;

    nop

    nop

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-static {v3, p1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_4

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lpsb;

    nop

    check-cast v0, Lpot;

    nop

    iget-object v0, v0, Lpot;->a:Lpse;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, v0

    nop

    nop

    nop

    check-cast v2, Lpnn;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lpnn;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    check-cast v0, Lpnn;

    nop

    nop

    iget-object v0, v0, Lpnn;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    move-object v2, v0

    nop

    check-cast v2, Lpnn;

    nop

    nop

    iget-object v2, v2, Lpnn;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v3, Ljava/util/Map$Entry;

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Landroid/media/ImageReader;

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lpsb;

    nop

    nop

    nop

    invoke-static {v3, v1}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_6

    nop

    nop

    nop

    nop

    move-object v2, v0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lpnn;

    nop

    iget-object v2, v2, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/hardware/camera2/MultiResolutionImageReader;->getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lpnn;

    nop

    nop

    iget-object v0, v0, Lpnn;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v2

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v2

    nop

    nop

    iget-object v0, p0, Lpmi;->d:Lpcu;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v2, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multi-Resolution, received a new reader. "

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraId="

    nop

    nop

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v1, p0, Lpmi;->f:Lrbh;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpmi;->b:Lphj;

    nop

    iget-object v4, v0, Lphj;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v5, v0, Lphj;->o:Z

    nop

    nop

    nop

    nop

    iget v6, v0, Lphj;->i:I

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    invoke-virtual/range {v1 .. v6}, Lrbh;->b(Lpnx;Lpsb;Lrss;ZI)Lpmg;

    move-result-object v0

    nop

    iget-object v1, p0, Lpmi;->c:Lpmk;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lpmk;->a(Lpmg;)V

    iget-object v1, p0, Lpmi;->e:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop
.end method
