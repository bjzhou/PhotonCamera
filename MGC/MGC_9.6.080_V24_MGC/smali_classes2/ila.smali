.class public Lila;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likv;


# static fields
.field public static final b:Lpck;

.field public static final c:Lpck;

.field private static final f:Lsdb;


# instance fields
.field private final A:Lijg;

.field private final B:Lijo;

.field private final C:Likt;

.field private final D:Loyd;

.field private final E:Lknm;

.field private final F:Likn;

.field private final G:Ljava/util/concurrent/Executor;

.field private final H:Llss;

.field private final I:Llld;

.field private final J:Lprb;

.field private final K:Lnpq;

.field private final L:Loyd;

.field private final M:Lpnv;

.field private final N:Lkvt;

.field private final O:Liim;

.field private final P:Lmmx;

.field private final Q:Liou;

.field private final R:Limf;

.field private final S:Loyd;

.field private final T:Litd;

.field private final U:Lrss;

.field private final V:Z

.field private final W:Loyd;

.field private final X:Limj;

.field private final Y:Lnne;

.field private final Z:Lpty;

.field public final aa:Llyv;

.field private final ab:Lhoh;

.field private final ac:Liof;

.field private final ad:Liof;

.field private final ae:Lhon;

.field private final af:Lfdn;

.field private final ag:Lfdn;

.field public final d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

.field public final e:Lpdf;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Lryh;

.field private final j:Lcom/google/googlex/gcam/Gcam;

.field private final k:Ltbq;

.field private final l:Lijl;

.field private final m:Ltxm;

.field private final n:Loyd;

.field private final o:Lils;

.field private final p:Landroid/util/DisplayMetrics;

.field private final q:Ltbs;

.field private final r:Lpnu;

.field private final s:Lpck;

.field private final t:Ltxm;

.field private final u:Lows;

.field private final v:Lknq;

.field private final w:Ltxm;

.field private x:Ljava/lang/String;

.field private final y:Lhoa;

.field private final z:Lijm;


# direct methods
.method private final 3d137ff4afbdf0b6afbfa059c81ece9bm(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;ZIIZIZLrss;Lioy;ZZ)Linb;
    .locals 38

    goto/32 :goto_487

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, v13

    nop

    :goto_1
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v4, v4, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3bf

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_12b

    nop

    nop

    :goto_4
    if-eqz v3, :cond_0

    nop

    nop

    goto/32 :goto_32f

    nop

    nop

    :cond_0
    goto/32 :goto_31c

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_466

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v4}, Lsza;-><init>()V

    goto/32 :goto_458

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    :goto_8
    move-object/from16 p6, v0

    nop

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v3, "updateAndGetPhotoSize"

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v11, Ltcd;

    nop

    goto/32 :goto_1e7

    nop

    nop

    :goto_b
    invoke-virtual {v2, v3}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-wide/from16 p5, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual/range {p13 .. p13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v1, Linc;->w:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v9, v10, v5}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedPdAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU16ClientAllocator;)V

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3c0

    nop

    nop

    :goto_11
    iget v1, v1, Lsym;->c:I

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    :goto_12
    invoke-direct {v4}, Lsyv;-><init>()V

    goto/32 :goto_3e9

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v3, Lsyi;->g:Lsyi;

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_363

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_362

    nop

    nop

    :goto_16
    invoke-virtual {v5, v9, v10, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedRawImageAllocator(JLcom/google/googlex/gcam/clientallocator/RawClientAllocator;)V

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_17
    new-instance v10, Ltcb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_18
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v8, v0

    nop

    goto/32 :goto_431

    nop

    nop

    nop

    nop

    :goto_1a
    iget v2, v1, Lpck;->a:I

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_35e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_339

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_1e
    move-object/from16 v4, p4

    nop

    nop

    nop

    goto/32 :goto_4a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move/from16 v35, v8

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFrameRescorerCallback(JLcom/google/googlex/gcam/hdrplus/FrameRescorerCallback;)V

    :goto_21
    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v16, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v15, v13, v0}, Lila;->k(Lpro;Lpnx;)Lsyi;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_25
    if-nez p10, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :cond_3
    goto/32 :goto_33c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_367

    nop

    nop

    :goto_27
    invoke-virtual {v4}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v4, v4, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_29
    if-eqz v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_342

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_330

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_151

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_179

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_5
    goto/32 :goto_2c5

    nop

    nop

    nop

    :goto_2d
    invoke-static {v13, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_344

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    :goto_30
    goto/32 :goto_31a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, v14, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    goto/32 :goto_493

    nop

    nop

    nop

    :goto_33
    if-eqz v3, :cond_6

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_275

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f3

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move/from16 v6, p7

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

    :goto_36
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_151

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, v1, Linc;->E:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v2, v1, Linc;->o:Lryy;

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_3d
    iget-object v3, v15, Lila;->R:Limf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_379

    nop

    nop

    :goto_3e
    move/from16 v2, p8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_3f
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    :goto_40
    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move/from16 v21, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    :goto_44
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v0, v14, Lila;->P:Lmmx;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v9, v5}, Ltbx;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_392

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v1, "createShot"

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v5, v3, v6}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_192

    nop

    nop

    nop

    :goto_49
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37f

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v4, v15, Lila;->r:Lpnu;

    nop

    nop

    goto/32 :goto_3ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    new-instance v5, Limx;

    nop

    goto/32 :goto_305

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v2, v1, Linc;->s:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_51
    iget-object v1, v1, Linc;->E:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v5, v7, v8, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V

    :goto_53
    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move-object/from16 v31, v2

    nop

    goto/32 :goto_f3

    nop

    nop

    :goto_55
    invoke-static/range {v5 .. v6}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->z(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    :goto_56
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_57
    iget-object v5, v3, Linb;->h:Lszb;

    nop

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {v13, v1}, Lcom/a;->getExposureISOPostRAW(Lpro;Lcom/google/googlex/gcam/FrameMetadata;)V

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v5, v3, Linb;->v:Lina;

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v2, v1, Linc;->p:Lryw;

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    move-object/from16 v13, p6

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v2, Llla;->f:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v14, Lila;->ag:Lfdn;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v2, v1, Linc;->k:Lryy;

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_2f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    goto/32 :goto_3a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    iget-wide v10, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v2

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    :goto_64
    move-object v10, v6

    nop

    nop

    nop

    nop

    nop

    :cond_8
    :goto_65
    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_66
    iget-object v1, v14, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_43b

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual/range {p14 .. p14}, Lioy;->a()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_443

    nop

    nop

    :goto_69
    if-nez p10, :cond_9

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :cond_9
    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual/range {p13 .. p13}, Lrss;->h()Z

    move-result v16

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v4, v3, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    goto/32 :goto_346

    nop

    nop

    :goto_6e
    check-cast v1, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v1, v2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2cd

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v1, Lpby;->b:Lpby;

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    :goto_71
    invoke-virtual/range {p13 .. p13}, Lrss;->h()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_72
    invoke-interface {v3}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    :goto_74
    invoke-virtual {v0, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3b8

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v2, Lkmq;

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    :goto_76
    check-cast v1, Ljrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_32b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move-object/from16 v24, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49f

    nop

    nop

    nop

    :goto_78
    sget-object v1, Lpby;->b:Lpby;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_79
    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    :cond_a
    goto/32 :goto_1b5

    nop

    nop

    :goto_7a
    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->Intersect(JLcom/google/googlex/gcam/NormalizedRect;JLcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_2a8

    nop

    nop

    :goto_7d
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    goto/32 :goto_287

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v4, v1, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_80
    check-cast v2, Loxv;

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_81
    iget-object v0, v14, Lila;->D:Loyd;

    nop

    nop

    nop

    goto/32 :goto_49c

    nop

    nop

    nop

    nop

    :goto_82
    invoke-direct {v5, v3, v6}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_2ce

    nop

    nop

    :goto_83
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3a1

    nop

    nop

    nop

    :goto_84
    if-nez v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v4, v4, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_40c

    nop

    nop

    nop

    :goto_86
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_87
    invoke-interface {v9}, Llxa;->e()J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_459

    nop

    nop

    nop

    :goto_88
    iput v0, v3, Linb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_369

    nop

    nop

    nop

    :goto_89
    if-eq v2, v1, :cond_c

    nop

    goto/32 :goto_151

    nop

    nop

    :cond_c
    goto/32 :goto_31b

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_44a

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0, v1}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_471

    nop

    nop

    :goto_8d
    move-object/from16 v8, p3

    nop

    goto/32 :goto_25a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v18, p14

    nop

    goto/32 :goto_318

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    move-object/from16 v32, v2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_90
    invoke-interface {v0}, Lmmx;->e()Lmmw;

    move-result-object v17

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_91
    invoke-interface {v1, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_92
    invoke-direct {v10, v5}, Ltcb;-><init>(Lina;)V

    goto/32 :goto_2c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_94
    new-instance v10, Ltcd;

    nop

    nop

    nop

    nop

    goto/32 :goto_3ec

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-direct {v2, v3, v1}, Lpck;-><init>(II)V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_220

    nop

    nop

    :goto_97
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    goto/32 :goto_469

    nop

    nop

    nop

    :goto_98
    if-eqz v2, :cond_e

    nop

    goto/32 :goto_44a

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move-object/from16 v15, p0

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v4, v1, Lila;->A:Lijg;

    nop

    goto/32 :goto_442

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v0}, Lila;->S(Lsxh;)I

    move-result v6

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_9c
    goto/16 :goto_460

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_45f

    nop

    nop

    nop

    nop

    :goto_9e
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_37c

    nop

    nop

    nop

    :goto_9f
    goto/16 :goto_455

    nop

    :goto_a0
    goto/32 :goto_299

    nop

    nop

    nop

    :goto_a1
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_a2
    check-cast v4, Ljye;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    :goto_a3
    iget-object v2, v1, Linc;->e:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_a4
    new-instance v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    goto/32 :goto_408

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-interface {v2, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_2df

    nop

    nop

    nop

    :goto_a7
    if-nez v1, :cond_f

    nop

    nop

    goto/32 :goto_3ce

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_43c

    nop

    nop

    nop

    :goto_a8
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_464

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_134

    nop

    nop

    nop

    :goto_a9
    move/from16 v11, p10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v1, v14, Lila;->J:Lprb;

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v0

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1d5

    nop

    nop

    :goto_ad
    iget-object v0, v14, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_ae
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    nop

    nop

    :goto_af
    if-eqz v2, :cond_12

    nop

    nop

    nop

    goto/32 :goto_430

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_32e

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v2, v1, Linc;->i:Lryy;

    nop

    goto/32 :goto_3be

    nop

    nop

    :goto_b1
    if-ltz v2, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_13
    goto/32 :goto_ed

    nop

    nop

    :goto_b2
    goto/16 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    if-nez v4, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_b5
    if-nez v4, :cond_15

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_15
    goto/32 :goto_251

    nop

    nop

    :goto_b6
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move-object/from16 v37, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_428

    nop

    nop

    :goto_b8
    invoke-direct {v4}, Lsyx;-><init>()V

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v3, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    :goto_ba
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_bb
    iget-object v5, v3, Linb;->x:Lqnt;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    goto/16 :goto_65

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v1}, Lprb;->c()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    :goto_be
    if-eqz v2, :cond_16

    nop

    nop

    nop

    goto/32 :goto_455

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_3c4

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    new-instance v9, Limz;

    nop

    goto/32 :goto_1ac

    nop

    nop

    :goto_c0
    goto/16 :goto_1a5

    nop

    nop

    :goto_c1
    goto/32 :goto_107

    nop

    nop

    :goto_c2
    if-ge v0, v1, :cond_17

    nop

    goto/32 :goto_3fc

    nop

    nop

    :cond_17
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-interface {v0, v1}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_364

    nop

    nop

    :goto_c5
    new-instance v5, Linb;

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    :goto_c6
    iget-object v2, v5, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    if-eqz v2, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_307

    nop

    :cond_18
    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_c8
    if-nez v4, :cond_19

    nop

    goto/32 :goto_24a

    nop

    :cond_19
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_c9
    iget-wide v1, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    :goto_cb
    if-eqz v4, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    sget-object v2, Lhoa;->d:Lhoa;

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object v0, v14, Lila;->ag:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    :goto_cf
    invoke-static {v1}, Lhni;->a(Lhoh;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v1

    nop

    nop

    goto/32 :goto_3c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    move-object/from16 v4, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    goto/32 :goto_3da

    nop

    nop

    nop

    :goto_d3
    iget-object v6, v15, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_2c6

    nop

    nop

    :goto_d4
    invoke-virtual {v5, v10, v11, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedChromaDenoisedCallback(JLcom/google/googlex/gcam/hdrplus/MergedChromaDenoisedCallback;)V

    :goto_d5
    goto/32 :goto_348

    nop

    nop

    nop

    nop

    :goto_d6
    sget-object v2, Lkvu;->a:Lkvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_390

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object v3, v8

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v4, v9, v10, v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPlanarMergedRawCallback(JLcom/google/googlex/gcam/hdrplus/PlanarMergedRawCallback;)V

    :goto_d9
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v2, v14, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    nop

    nop

    :goto_db
    if-nez v9, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_45a

    nop

    :cond_1b
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-static {v7}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v5

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_dd
    move v1, v12

    nop

    :goto_de
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    sget-object v2, Llla;->b:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3ed

    nop

    nop

    nop

    nop

    :goto_e0
    const-string v9, "%s"

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v2, v14, Lila;->k:Ltbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_453

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    sget-object v1, Lils;->a:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    invoke-virtual {v4}, Lind;->e()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_38c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    move-object/from16 v23, v2

    nop

    nop

    nop

    goto/32 :goto_319

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static {v0, v1, v15, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_zsl_base_frame_index_hint_set(JLcom/google/googlex/gcam/ShotParams;I)V

    :goto_e6
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_e7
    move-object v12, v0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    if-ne v0, v7, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :cond_1c
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    move-object/from16 v4, p6

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_406

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    nop

    :goto_ed
    iget-object v0, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41a

    nop

    nop

    nop

    nop

    :goto_ee
    div-int/2addr v2, v11

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_ef
    iget-object v0, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_328

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    goto/16 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_435

    nop

    nop

    :goto_f2
    new-instance v9, Limz;

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v2, v1, Linc;->C:Lrss;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v1, v15, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    :goto_f5
    new-instance v7, Limw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual/range {v34 .. v34}, Lind;->n()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_f7
    invoke-interface {v0, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3f7

    nop

    nop

    nop

    nop

    :goto_f8
    if-nez p7, :cond_1d

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_334

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    sput-object v1, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v2, v1, Linc;->y:Lryy;

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_fb
    invoke-direct {v11, v5, v8}, Ltbr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    const-string v1, "ShrinkCropIfNecessary"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_fd
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_26c

    nop

    nop

    :goto_fe
    iget-object v0, v1, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    :goto_100
    const-string v2, "d"

    nop

    nop

    nop

    nop

    :goto_101
    goto/32 :goto_35b

    nop

    nop

    nop

    :goto_102
    iget-object v2, v1, Linc;->f:Lryw;

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    :goto_103
    iget-object v4, v3, Linb;->h:Lszb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move-object/from16 v20, v2

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    :goto_105
    move-object/from16 p10, p4

    nop

    nop

    goto/32 :goto_3ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    if-nez v0, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_107
    iget-object v2, v1, Linc;->u:Lryy;

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_108
    invoke-virtual {v4, v5, v6, v7}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetProgressCallback(JLcom/google/googlex/gcam/base/function/IntFloatConsumer;)V

    :goto_109
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_10a
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_169

    nop

    nop

    :goto_10b
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v2, v14, Lila;->o:Lils;

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v4}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_393

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    iget-object v2, v1, Linc;->m:Lryy;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    goto :goto_113

    nop

    nop

    nop

    nop

    :goto_111
    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_499

    nop

    nop

    nop

    nop

    nop

    :goto_113
    goto/32 :goto_498

    nop

    nop

    :goto_114
    invoke-static {v13}, La;->au(Z)V

    goto/32 :goto_228

    nop

    nop

    nop

    :goto_115
    new-instance v5, Limv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    :goto_116
    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_117
    iget-object v5, v5, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43e

    nop

    nop

    nop

    nop

    nop

    :goto_118
    iput-object v2, v1, Linc;->i:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    if-eqz v2, :cond_1f

    nop

    nop

    goto/32 :goto_497

    nop

    nop

    :cond_1f
    goto/32 :goto_3f8

    nop

    nop

    nop

    nop

    :goto_11a
    if-nez v4, :cond_20

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_20
    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_38e

    nop

    nop

    :goto_11c
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v11, v12}, Liof;->j(Ljava/lang/String;)V

    :goto_11e
    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    iget-object v5, v1, Lijm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_337

    nop

    nop

    nop

    :goto_120
    iget-object v4, v4, Lind;->b:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    :goto_121
    if-nez v3, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_3db

    nop

    nop

    :cond_21
    goto/32 :goto_3dd

    nop

    nop

    nop

    nop

    nop

    :goto_122
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_123
    cmpl-float v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_28e

    nop

    nop

    nop

    nop

    :goto_124
    sget-object v1, Lils;->b:Lils;

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    iget-object v0, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    nop

    nop

    nop

    :goto_126
    if-eqz v2, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_332

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v9, v11, v12, v4, v0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_40b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    iget-wide v2, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    nop

    :goto_129
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_495

    nop

    nop

    :goto_12c
    invoke-direct/range {v1 .. v17}, Linb;-><init>(Ltbq;Lind;Landroid/util/DisplayMetrics;Llko;IILhon;Lhoa;Liof;Lcom/google/googlex/gcam/ShotParams;Lils;ZLpro;Lioy;Lpnx;Lmmw;)V

    goto/32 :goto_42a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    goto/16 :goto_421

    nop

    nop

    :goto_12e
    goto/32 :goto_420

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object v2, v1, Linc;->t:Lryw;

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    new-instance v4, Ltbw;

    nop

    nop

    goto/32 :goto_2b3

    nop

    nop

    :goto_131
    invoke-virtual {v0, v9, v10}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    invoke-static {v2, v3, v15}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_GcamAwbDesired(JLcom/google/googlex/gcam/ShotParams;)Z

    move-result v2

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_133
    sget-object v0, Lijg;->b:Lsya;

    nop

    nop

    nop

    nop

    goto/32 :goto_380

    nop

    nop

    nop

    nop

    nop

    :goto_134
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    if-nez p10, :cond_23

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    :cond_23
    :try_start_0
    iget-object v11, v1, Lila;->o:Lils;

    nop

    nop

    nop

    sget-object v12, Lils;->b:Lils;

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v12}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_24

    nop

    nop

    nop

    nop

    iget-object v11, v1, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lils;->a:Lils;

    nop

    nop

    invoke-virtual {v11, v12}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    nop

    if-nez v11, :cond_24

    nop

    nop

    nop

    iget-object v11, v1, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    sget-object v12, Lils;->e:Lils;

    nop

    invoke-virtual {v11, v12}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_28

    nop

    nop

    nop

    :cond_24
    iget-object v11, v1, Lila;->o:Lils;

    nop

    nop

    sget-object v12, Lils;->b:Lils;

    nop

    invoke-virtual {v11, v12}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    nop

    if-eqz v11, :cond_25

    nop

    nop

    iget-object v11, v1, Lila;->ab:Lhoh;

    nop

    nop

    sget-object v12, Lhmq;->ae:Lhmn;

    nop

    nop

    invoke-virtual {v11, v12}, Lhoh;->p(Lhmn;)Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_26

    nop

    nop

    :cond_25
    invoke-virtual/range {p14 .. p14}, Lioy;->a()I

    move-result v11

    nop

    nop

    nop

    nop

    if-ne v11, v0, :cond_27

    nop

    nop

    nop

    nop

    nop

    :cond_26
    iget-object v0, v1, Lila;->h:Ljava/lang/String;

    nop

    nop

    goto :goto_136

    nop

    nop

    :cond_27
    iget-object v0, v1, Lila;->g:Ljava/lang/String;

    nop

    nop

    nop

    :goto_136
    iget-object v11, v1, Lila;->A:Lijg;

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/io/File;

    nop

    nop

    nop

    const-string v12, "camera_"

    nop

    invoke-static {v0, v12}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v11, v4, v9, v10, v0}, Lijg;->b(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_138

    nop

    :catch_1
    move-exception v0

    nop

    nop

    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    :cond_28
    :goto_137
    if-eqz p10, :cond_29

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Lils;->c:Lils;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v11}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_29

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lila;->A:Lijg;

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Ljava/io/File;

    nop

    nop

    nop

    nop

    nop

    const-string v11, "camera_kepler_"

    nop

    move/from16 v12, p11

    nop

    nop

    invoke-static {v12, v11}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    nop

    nop

    nop

    invoke-virtual {v0, v4, v9, v10, v11}, Lijg;->b(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto :goto_138

    nop

    nop

    :cond_29
    const-string v0, ""

    nop

    nop

    iget-object v11, v1, Lila;->A:Lijg;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Ljava/io/File;

    nop

    invoke-virtual {v11, v4, v9, v10, v0}, Lijg;->b(Ljava/io/File;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    :goto_138
    iput-object v0, v1, Lila;->x:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v4, Lcom/google/googlex/gcam/ImageSaverParams;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Lcom/google/googlex/gcam/ImageSaverParams;-><init>()V

    invoke-virtual {v4, v0}, Lcom/google/googlex/gcam/ImageSaverParams;->b(Ljava/lang/String;)V

    new-instance v10, Lcom/google/googlex/gcam/DebugParams;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v10}, Lcom/google/googlex/gcam/DebugParams;-><init>()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    sget-wide v11, Lijg;->e:J

    nop

    nop

    nop

    nop

    invoke-virtual {v10, v11, v12}, Lcom/google/googlex/gcam/DebugParams;->d(J)V

    invoke-virtual {v10, v4}, Lcom/google/googlex/gcam/DebugParams;->c(Lcom/google/googlex/gcam/ImageSaverParams;)V

    if-nez p10, :cond_8

    nop

    nop

    iget-object v4, v5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    new-instance v9, Lfdn;

    nop

    nop

    nop

    invoke-direct {v9, v0}, Lfdn;-><init>(Ljava/lang/Object;)V

    invoke-interface {v4, v9}, Llxa;->aj(Lfdn;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_139
    iget-wide v3, v1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_13a
    invoke-direct {v9, v3, v4}, Limz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    nop

    :goto_13b
    move v1, v13

    nop

    nop

    nop

    goto/32 :goto_3fb

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    goto/32 :goto_3ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    iget-object v0, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_140
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    iget-wide v11, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_142
    move-object/from16 v35, v1

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_143
    move-object/from16 v27, v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_144
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_416

    nop

    nop

    nop

    nop

    :goto_145
    invoke-static {v1, v2, v15, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_base_frame_override_index_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_146
    goto/16 :goto_1ea

    nop

    nop

    nop

    :goto_147
    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_148
    move/from16 v11, p9

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    nop

    :goto_149
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14a
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_14b
    goto/16 :goto_23f

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_1cc

    nop

    nop

    :goto_14d
    if-nez v1, :cond_2a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_388

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_387

    nop

    nop

    nop

    :goto_14e
    new-instance v2, Lpck;

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-object v4, v3, Linb;->x:Lqnt;

    nop

    nop

    goto/32 :goto_3d9

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    :goto_151
    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    :goto_152
    invoke-static {v3, v4, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_width_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_3de

    nop

    nop

    nop

    :goto_153
    const-string v4, "getPrimaryOutputFormat"

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_154
    move-object/from16 v29, v2

    nop

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    :goto_155
    goto/16 :goto_35c

    nop

    nop

    :goto_156
    goto/32 :goto_293

    nop

    nop

    nop

    nop

    :goto_157
    move/from16 v0, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_158
    iget-object v4, v4, Lqnt;->a:Ljava/lang/Object;

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

    nop

    :goto_159
    iput-object v2, v1, Linc;->b:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_461

    nop

    nop

    nop

    :goto_15a
    iget-object v2, v1, Linc;->B:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_15b
    if-eq v0, v2, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    iget-object v2, v1, Linc;->h:Lryw;

    nop

    nop

    goto/32 :goto_357

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    goto/32 :goto_306

    nop

    nop

    nop

    :goto_15e
    if-nez v4, :cond_2c

    nop

    nop

    goto/32 :goto_37d

    nop

    nop

    :cond_2c
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_15f
    iget-object v4, v1, Lila;->t:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_160
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    :goto_161
    const-string v2, "overrideMergedCrop"

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_162
    const-string v2, "wb"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_163
    const/4 v13, 0x0

    nop

    nop

    nop

    :goto_164
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    :goto_165
    if-eq v0, v2, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_438

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_46c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    iput-object v2, v1, Linc;->i:Lryy;

    nop

    nop

    :goto_167
    goto/32 :goto_2d8

    nop

    nop

    nop

    :goto_168
    iget-object v5, v5, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    :goto_169
    goto/16 :goto_151

    nop

    nop

    nop

    :goto_16a
    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    move-wide/from16 p8, v13

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    :goto_16c
    new-instance v9, Ltbx;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_16d
    check-cast v1, Linc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    :goto_16e
    const-string v11, "Failed to create Gcam debug data folder!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_16f
    const/16 v12, 0x649

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_170
    move-wide/from16 v22, v4

    nop

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    :goto_171
    iget-object v3, v14, Lila;->Q:Liou;

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    :goto_172
    iget-object v0, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3c7

    nop

    nop

    :goto_173
    iput-object v2, v1, Linc;->q:Lryy;

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    :goto_174
    iget v2, v1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_4a1

    nop

    nop

    nop

    nop

    :goto_175
    invoke-virtual {v1}, Lprb;->q()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v4}, Lind;->a()Lrss;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_177
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->f(Lcom/google/googlex/gcam/NormalizedRect;)V

    :goto_178
    goto/32 :goto_3a9

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_457

    nop

    nop

    :goto_17a
    if-nez v1, :cond_2e

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_187

    nop

    nop

    nop

    :goto_17b
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    sget-object v1, Lhnl;->k:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    move-object/from16 v22, v2

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_17e
    iget-object v4, v3, Linb;->i:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_17f
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_180
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_b2

    nop

    nop

    :goto_181
    if-ne v13, v0, :cond_2f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_405

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_452

    nop

    nop

    nop

    :goto_182
    if-nez v4, :cond_30

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_27d

    nop

    nop

    nop

    :goto_183
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3ca

    nop

    nop

    nop

    :goto_184
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_355

    nop

    nop

    nop

    nop

    nop

    :goto_185
    iget-object v5, v5, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b0

    nop

    nop

    nop

    :goto_186
    invoke-virtual {v4}, Lind;->j()Lrss;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    :goto_187
    sget-object v0, Llla;->h:Lpck;

    nop

    goto/32 :goto_34a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_188
    const/4 v13, 0x1

    nop

    goto/32 :goto_417

    nop

    nop

    nop

    nop

    :goto_189
    sget-object v0, Lijg;->d:Lsya;

    nop

    nop

    goto/32 :goto_47f

    nop

    nop

    nop

    :goto_18a
    move-object/from16 v3, v34

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    :goto_18b
    goto/32 :goto_3d7

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-static {v4}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    iget-wide v5, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18f
    iget-object v0, v1, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_191
    iget-object v2, v1, Linc;->r:Lryw;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_192
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_45e

    nop

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v7

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    :goto_194
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_195
    check-cast v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_196
    iget-object v4, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_197
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    :goto_198
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_199
    iget-object v2, v1, Linc;->y:Lryy;

    nop

    goto/32 :goto_267

    nop

    nop

    nop

    nop

    :goto_19a
    if-eqz v2, :cond_31

    nop

    goto/32 :goto_1a5

    nop

    :cond_31
    goto/32 :goto_3bd

    nop

    nop

    nop

    nop

    :goto_19b
    move/from16 v12, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_473

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    iput-object v2, v1, Linc;->o:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_375

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    iget-object v5, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_19e
    sget-object v1, Lsyi;->r:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_19f
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_3a7

    nop

    nop

    nop

    nop

    :goto_1a0
    iget-object v2, v14, Lila;->l:Lijl;

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    :goto_1a1
    invoke-interface {v1, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3e7

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    move-object/from16 v30, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_1a3
    invoke-static {v0}, Lsxh;->a(I)Lsxh;

    move-result-object v0

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    iput-object v2, v1, Linc;->u:Lryy;

    nop

    nop

    nop

    nop

    :goto_1a5
    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_1a6
    if-eqz v2, :cond_32

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_33f

    nop

    nop

    nop

    nop

    :goto_1a7
    if-lez v0, :cond_33

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    :cond_33
    goto/32 :goto_18b

    nop

    :goto_1a8
    iget v5, v2, Lijl;->f:F

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_1a9
    invoke-virtual {v1}, Lprb;->l()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36b

    nop

    nop

    nop

    :goto_1aa
    if-nez v2, :cond_34

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_246

    nop

    nop

    nop

    :goto_1ab
    iget-object v1, v14, Lila;->J:Lprb;

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    invoke-direct {v9, v3, v4}, Limz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_1ad
    iget v2, v0, Lpck;->b:I

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    goto/16 :goto_46e

    nop

    nop

    nop

    nop

    :goto_1af
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    iget-object v4, v15, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_378

    nop

    nop

    :goto_1b1
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_1b2
    new-instance v5, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_494

    nop

    nop

    nop

    :goto_1b3
    if-nez v2, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    :cond_35
    goto/32 :goto_230

    nop

    nop

    :goto_1b4
    invoke-static/range {p4 .. p16}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_StartShotCapture(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/DebugParams;)I

    move-result v0

    nop

    goto/32 :goto_486

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    goto/32 :goto_294

    nop

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual {v15, v13}, Lila;->h(Lpro;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v1

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    :goto_1b7
    move-object v11, v0

    nop

    nop

    nop

    nop

    :goto_1b8
    goto/32 :goto_3a2

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    iget-wide v13, v4, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    :goto_1ba
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    :goto_1bc
    invoke-virtual {v4, v9, v10, v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedDngCallback(JLcom/google/googlex/gcam/hdrplus/EncodedBlobCallback;)V

    :goto_1bd
    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_1be
    iget-wide v0, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a6

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    iput-object v2, v1, Linc;->w:Lryy;

    nop

    nop

    nop

    nop

    :goto_1c0
    goto/32 :goto_43a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    move v0, v11

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_1c2
    invoke-direct {v5, v1, v4, v7, v6}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_315

    nop

    nop

    :goto_1c3
    if-nez v2, :cond_36

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_3d4

    nop

    nop

    :goto_1c4
    new-instance v34, Lind;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    iget-object v1, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    :goto_1c6
    if-ne v0, v1, :cond_37

    nop

    goto/32 :goto_2a7

    nop

    :cond_37
    goto/32 :goto_409

    nop

    nop

    nop

    :goto_1c7
    if-eqz v2, :cond_38

    nop

    nop

    nop

    goto/32 :goto_3ce

    nop

    nop

    nop

    nop

    nop

    :cond_38
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    throw v0

    nop

    nop

    :goto_1c9
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    check-cast v2, Ljava/lang/Integer;

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

    nop

    nop

    :goto_1cb
    if-eqz v2, :cond_39

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    :cond_39
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    :goto_1cd
    if-nez v2, :cond_3a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ab

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_1ce
    if-eqz v2, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_46a

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    move-object/from16 v18, v2

    nop

    goto/32 :goto_489

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    invoke-direct/range {v1 .. v21}, Lila;->ca40d22f1631a8d5d6ec3ccdb7c19696m(FILkvu;IZZZLrss;ZZZLpro;Lpnx;JFLioy;ZZLpro;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v15

    nop

    nop

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

    :goto_1d1
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    iget-object v1, v14, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_3bb

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    invoke-virtual {v0, v2}, Lpby;->e(Lpck;)Landroid/graphics/Rect;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_490

    nop

    nop

    :goto_1d4
    iget-object v2, v1, Linc;->D:Lryw;

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    nop

    nop

    :goto_1d5
    sget-object v0, Llla;->i:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    iput-object v2, v1, Linc;->E:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_411

    nop

    nop

    nop

    :goto_1d7
    sget-object v1, Lsym;->a:Lsym;

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_1d8
    sget-object v1, Lsyi;->b:Lsyi;

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    :goto_1d9
    if-eqz v2, :cond_3c

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    :cond_3c
    goto/32 :goto_316

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_414

    nop

    nop

    nop

    nop

    :goto_1db
    invoke-virtual {v3, v4}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    :goto_1dc
    iget-wide v11, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3d5

    nop

    nop

    :goto_1dd
    goto/16 :goto_151

    nop

    nop

    :goto_1de
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    invoke-interface {v3}, Liou;->e()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_1e0
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    goto/32 :goto_481

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    iget-object v1, v15, Lila;->R:Limf;

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_1e2
    if-eqz v2, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    :cond_3d
    goto/32 :goto_41c

    nop

    nop

    nop

    :goto_1e3
    move-object v10, v0

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_1e6
    if-nez v4, :cond_3e

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_422

    nop

    nop

    nop

    nop

    :goto_1e7
    invoke-direct {v11, v5}, Ltcd;-><init>(Ltcf;)V

    goto/32 :goto_158

    nop

    nop

    :goto_1e8
    iget-object v5, v3, Linb;->j:Lszb;

    nop

    nop

    nop

    goto/32 :goto_483

    nop

    nop

    nop

    :goto_1e9
    const-wide/16 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    goto/32 :goto_170

    nop

    nop

    :goto_1eb
    invoke-direct {v1, v2, v3, v13}, Lcom/google/googlex/gcam/NormalizedRect;-><init>(JZ)V

    goto/32 :goto_341

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    invoke-virtual {v4}, Lind;->c()Lrss;

    move-result-object v4

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_1ed
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-static {v10}, Lcom/google/googlex/gcam/DebugParams;->a(Lcom/google/googlex/gcam/DebugParams;)J

    move-result-wide v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f1

    nop

    nop

    :goto_1ef
    invoke-virtual {v1, v2}, Ltbt;->a(I)F

    move-result v2

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_1f0
    iget-object v0, v0, Lkmq;->j:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    :goto_1f1
    iget-object v4, v1, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    sget-object v1, Lsyi;->d:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_291

    nop

    nop

    :goto_1f3
    if-nez v1, :cond_3f

    nop

    goto/32 :goto_233

    nop

    nop

    :cond_3f
    goto/32 :goto_232

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f5
    new-instance v9, Ltca;

    nop

    nop

    nop

    nop

    goto/32 :goto_359

    nop

    nop

    nop

    nop

    :goto_1f6
    sget-object v2, Llla;->c:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    goto/32 :goto_41b

    nop

    nop

    nop

    nop

    :goto_1f7
    iget-object v2, v1, Linc;->d:Lryw;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    goto/16 :goto_233

    nop

    nop

    nop

    :goto_1f9
    goto/32 :goto_1f3

    nop

    nop

    nop

    :goto_1fa
    iget-object v2, v1, Linc;->z:Lryw;

    nop

    goto/32 :goto_482

    nop

    nop

    nop

    nop

    :goto_1fb
    iget-object v1, v14, Lila;->J:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_1fc
    if-nez v7, :cond_40

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    invoke-virtual {v4}, Ljye;->b()Lrss;

    move-result-object v4

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    iput-object v2, v1, Linc;->A:Lryy;

    nop

    nop

    nop

    nop

    :goto_1ff
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_200
    move-object/from16 v33, v1

    nop

    goto/32 :goto_36d

    nop

    nop

    nop

    :goto_201
    if-nez v2, :cond_41

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_41
    goto/32 :goto_26

    nop

    nop

    :goto_202
    iget-object v4, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    :goto_203
    sget-object v3, Lils;->e:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    :goto_204
    invoke-interface {v2}, Lpdf;->g()V

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_205
    iget-object v4, v3, Linb;->j:Lszb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_432

    nop

    nop

    :goto_206
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    goto/32 :goto_34e

    nop

    nop

    :goto_207
    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_437

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_208
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    :goto_209
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_20a
    goto/32 :goto_3e4

    nop

    nop

    :goto_20b
    move-object v9, v1

    nop

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    :goto_20c
    invoke-direct {v2}, Lcom/google/googlex/gcam/ShotCallbacks;-><init>()V

    goto/32 :goto_3c9

    nop

    nop

    :goto_20d
    iget-object v11, v1, Lila;->ad:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d2

    nop

    nop

    nop

    nop

    :goto_20e
    iget-object v0, v14, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_20f
    invoke-virtual {v15, v1}, Lila;->b(Lsyi;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_472

    nop

    nop

    nop

    :goto_210
    sget-object v4, Lila;->f:Lsdb;

    nop

    nop

    goto/32 :goto_470

    nop

    nop

    nop

    nop

    nop

    :goto_211
    if-nez v0, :cond_42

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a7

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_1be

    nop

    nop

    :goto_212
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    :goto_213
    move/from16 v8, p12

    nop

    nop

    nop

    nop

    goto/32 :goto_39b

    nop

    nop

    nop

    :goto_214
    if-nez v2, :cond_43

    nop

    nop

    goto/32 :goto_41e

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_448

    nop

    nop

    nop

    :goto_215
    if-eqz v4, :cond_44

    nop

    nop

    goto/32 :goto_278

    nop

    :cond_44
    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    nop

    :goto_216
    move-object/from16 v26, v2

    nop

    nop

    goto/32 :goto_39a

    nop

    nop

    :goto_217
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_218
    invoke-virtual {v5, v8, v9, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    :goto_219
    goto/32 :goto_205

    nop

    nop

    :goto_21a
    new-instance v7, Limu;

    nop

    nop

    nop

    goto/32 :goto_383

    nop

    nop

    :goto_21b
    invoke-interface {v7}, Llxa;->o()Lrss;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    sget-object v2, Llla;->d:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_21d
    move-object/from16 v36, v5

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_21e
    const-string v5, "slowRawSetup"

    nop

    nop

    goto/32 :goto_3bc

    nop

    nop

    nop

    nop

    :goto_21f
    sget-object v2, Lkvu;->a:Lkvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_220
    sget-object v0, Lijg;->c:Lsya;

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_221
    invoke-virtual {v15, v1}, Lcom/google/googlex/gcam/ShotParams;->h(Lsyg;)V

    goto/32 :goto_350

    nop

    nop

    :goto_222
    iget v2, v1, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_223
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    nop

    goto/32 :goto_492

    nop

    nop

    :goto_224
    check-cast v0, Lcom/google/googlex/gcam/AwbInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_225
    invoke-static {v2, v3, v15, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_software_suffix_set(JLcom/google/googlex/gcam/ShotParams;Ljava/lang/String;)V

    goto/32 :goto_42b

    nop

    nop

    nop

    nop

    :goto_226
    iget-object v1, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_227
    iget-object v2, v1, Linc;->i:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_31e

    nop

    nop

    nop

    nop

    :goto_228
    iget v1, v3, Linb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    :goto_229
    goto/16 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_22a
    goto/32 :goto_3f5

    nop

    nop

    :goto_22b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22c
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    iget-object v3, v15, Lila;->W:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_22f
    check-cast v1, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_230
    invoke-interface {v13}, Lnhm;->f()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_231
    goto/32 :goto_243

    nop

    nop

    :goto_232
    invoke-virtual {v15, v0}, Lcom/google/googlex/gcam/ShotParams;->d(Lcom/google/googlex/gcam/AwbInfo;)V

    :goto_233
    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_234
    iget-object v2, v1, Linc;->q:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_235
    if-nez v3, :cond_45

    nop

    nop

    goto/32 :goto_3db

    nop

    :cond_45
    goto/32 :goto_398

    nop

    nop

    nop

    nop

    nop

    :goto_236
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kInvalidShotId_get()I

    move-result v2

    nop

    nop

    goto/32 :goto_47c

    nop

    nop

    nop

    nop

    :goto_237
    invoke-static {v1, v3, v4, v5, v6}, Lfxj;->d(ILnpq;Lpnu;Loyd;Lhoh;)I

    move-result v3

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_238
    invoke-virtual {v1, v6}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_239
    const-string v9, "Gcam::StartShotCapture"

    nop

    nop

    goto/32 :goto_39f

    nop

    nop

    nop

    :goto_23a
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    :goto_23b
    move-object/from16 v0, p1

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    :goto_23c
    goto/16 :goto_298

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    goto/32 :goto_ae

    nop

    nop

    :goto_23e
    goto/16 :goto_2af

    nop

    nop

    nop

    :goto_23f
    goto/32 :goto_b4

    nop

    nop

    :goto_240
    invoke-static {v1, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_3b6

    nop

    nop

    nop

    :goto_241
    const-string v2, "setBfIndex"

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_242
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    nop

    :goto_243
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    :goto_244
    check-cast v0, Lscz;

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_245
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_403

    nop

    nop

    nop

    nop

    nop

    :goto_246
    goto/16 :goto_385

    nop

    nop

    nop

    nop

    :goto_247
    goto/32 :goto_2d1

    nop

    nop

    :goto_248
    const-string v4, "create"

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_249
    invoke-virtual {v4, v7, v8, v5}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetBaseFrameCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameCallback;)V

    :goto_24a
    goto/32 :goto_284

    nop

    nop

    nop

    nop

    :goto_24b
    invoke-virtual {v1, v2}, Lpby;->m(Lpby;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24c
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    :goto_24d
    goto/16 :goto_101

    nop

    nop

    nop

    :goto_24e
    goto/32 :goto_386

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    new-instance v11, Ltbr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_250
    move-object/from16 p10, v4

    nop

    nop

    goto/32 :goto_43f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_251
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_3ac

    nop

    nop

    nop

    nop

    :goto_252
    iget-object v1, v1, Lila;->z:Lijm;

    nop

    nop

    nop

    nop

    goto/32 :goto_366

    nop

    nop

    :goto_253
    iget-object v1, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    :goto_254
    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_255
    if-ne v2, v7, :cond_46

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    :goto_256
    move-object/from16 v14, p3

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_257
    if-eqz v2, :cond_47

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    nop

    :cond_47
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_258
    invoke-virtual {v0}, Lcom/google/googlex/gcam/AeShotParams;->b()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_259
    iget-object v2, v2, Lkmq;->f:Lows;

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    :goto_25a
    iget-object v0, v8, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_479

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25b
    if-nez v4, :cond_48

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    :cond_48
    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    if-nez v2, :cond_49

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ab

    nop

    nop

    nop

    :cond_49
    :goto_25d
    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_25e
    if-nez v0, :cond_4a

    nop

    nop

    goto/32 :goto_480

    nop

    :cond_4a
    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_25f
    check-cast v0, Lcom/google/googlex/gcam/InitParams;

    nop

    nop

    nop

    goto/32 :goto_45d

    nop

    nop

    nop

    nop

    nop

    :goto_260
    if-eqz v1, :cond_4b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :cond_4b
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_261
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    :goto_262
    move v0, v12

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_263
    invoke-virtual {v15, v13, v1, v0}, Lila;->g(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_264
    if-eqz v1, :cond_4c

    nop

    goto/32 :goto_402

    nop

    nop

    nop

    nop

    nop

    :cond_4c
    goto/32 :goto_374

    nop

    nop

    nop

    nop

    :goto_265
    invoke-direct {v7, v3}, Limw;-><init>(Linb;)V

    goto/32 :goto_2fa

    nop

    nop

    nop

    nop

    :goto_266
    if-nez v4, :cond_4d

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :cond_4d
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_267
    if-eqz v2, :cond_4e

    nop

    goto/32 :goto_3f4

    nop

    :cond_4e
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_268
    iget-wide v5, v4, Lcom/google/googlex/gcam/LiveHdrMetadata;->a:J

    nop

    goto/32 :goto_373

    nop

    nop

    nop

    nop

    :goto_269
    invoke-direct {v1, v2, v0}, Lpck;-><init>(II)V

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_26a
    invoke-static {v2, v3, v15, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_wb_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_26c
    iget-object v1, v14, Lila;->v:Lknq;

    nop

    nop

    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    :goto_26d
    invoke-static {v13}, Lcom/a;->id(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    :goto_26e
    iget-object v2, v1, Linc;->b:Lryy;

    nop

    nop

    goto/32 :goto_3cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26f
    goto/16 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_270
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_271
    new-instance v4, Ltby;

    nop

    goto/32 :goto_30a

    nop

    nop

    nop

    :goto_272
    move/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ea

    nop

    nop

    nop

    :goto_273
    goto/16 :goto_46a

    nop

    nop

    nop

    nop

    nop

    :goto_274
    goto/32 :goto_234

    nop

    nop

    nop

    :goto_275
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a4

    nop

    nop

    nop

    :goto_276
    if-nez v4, :cond_4f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ff

    nop

    nop

    nop

    nop

    :cond_4f
    goto/32 :goto_326

    nop

    nop

    nop

    nop

    nop

    :goto_277
    goto/16 :goto_336

    nop

    nop

    nop

    nop

    nop

    :goto_278
    goto/32 :goto_2d3

    nop

    nop

    nop

    nop

    :goto_279
    if-eqz v2, :cond_50

    nop

    nop

    nop

    goto/32 :goto_385

    nop

    nop

    nop

    nop

    :cond_50
    goto/32 :goto_3d0

    nop

    nop

    :goto_27a
    sget-object v2, Lcom/google/android/apps/camera/imax/cyclops/capture/xzG/uebAI;->uJxOtg:Ljava/lang/String;

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    invoke-virtual {v1}, Lprb;->e()Z

    move-result v1

    nop

    goto/32 :goto_39e

    nop

    nop

    nop

    :goto_27c
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27d
    iget-object v4, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27e
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1c8

    nop

    nop

    :goto_27f
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_49a

    nop

    nop

    nop

    :goto_280
    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_3eb

    nop

    nop

    nop

    nop

    nop

    :goto_281
    iget-object v0, v1, Lila;->y:Lhoa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b2

    nop

    nop

    nop

    nop

    :goto_282
    move-wide/from16 p8, v13

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_283
    move-wide/from16 p14, v15

    nop

    nop

    goto/32 :goto_36a

    nop

    nop

    nop

    nop

    nop

    :goto_284
    iget-object v4, v3, Linb;->g:Lcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;

    nop

    nop

    goto/32 :goto_48e

    nop

    nop

    nop

    :goto_285
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e5

    nop

    nop

    nop

    :goto_286
    if-eq v1, v2, :cond_51

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :cond_51
    goto/32 :goto_2dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_287
    if-nez v5, :cond_52

    nop

    goto/32 :goto_20a

    nop

    :cond_52
    goto/32 :goto_413

    nop

    nop

    nop

    nop

    nop

    :goto_288
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_44f

    nop

    nop

    :goto_289
    invoke-virtual/range {v34 .. v34}, Lind;->l()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28a
    move-object/from16 v17, v2

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    :goto_28b
    move/from16 p7, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_28c
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_377

    nop

    nop

    nop

    nop

    nop

    :goto_28d
    invoke-virtual {v2}, Lils;->ordinal()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    if-gtz v3, :cond_53

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    nop

    :cond_53
    goto/32 :goto_44e

    nop

    nop

    :goto_28f
    invoke-direct {v5, v3}, Limv;-><init>(Linb;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_290
    invoke-direct {v4, v0}, Luoj;-><init>(I)V

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_291
    if-eq v2, v1, :cond_54

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_450

    nop

    :cond_54
    goto/32 :goto_2ef

    nop

    nop

    nop

    nop

    nop

    :goto_292
    iget-object v2, v15, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    :goto_293
    const-string v2, "m"

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    :goto_294
    iput-object v2, v1, Linc;->m:Lryy;

    nop

    :goto_295
    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    nop

    :goto_296
    new-instance v4, Lsza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_297
    goto/16 :goto_444

    nop

    nop

    :goto_298
    goto/32 :goto_2c1

    nop

    nop

    :goto_299
    iget-object v2, v1, Linc;->g:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_29a
    iget-object v1, v15, Lila;->ac:Liof;

    nop

    nop

    goto/32 :goto_3a0

    nop

    nop

    :goto_29b
    invoke-direct {v1}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_29c
    goto/16 :goto_53

    nop

    nop

    :goto_29d
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29e
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    goto/32 :goto_3b1

    nop

    nop

    :goto_29f
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    :goto_2a0
    if-nez v2, :cond_55

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_412

    nop

    nop

    nop

    :cond_55
    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a1
    move-object v11, v15

    nop

    nop

    nop

    goto/32 :goto_370

    nop

    nop

    nop

    nop

    nop

    :goto_2a2
    invoke-virtual {v2}, Lils;->ordinal()I

    move-result v2

    nop

    goto/32 :goto_347

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a3
    if-nez v3, :cond_56

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_56
    goto/32 :goto_308

    nop

    nop

    nop

    :goto_2a4
    if-eqz v1, :cond_57

    nop

    goto/32 :goto_b3

    nop

    :cond_57
    goto/32 :goto_3f2

    nop

    nop

    nop

    :goto_2a5
    iget-object v2, v1, Linc;->n:Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_485

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a6
    if-eq v0, v1, :cond_58

    nop

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    :cond_58
    :goto_2a7
    goto/32 :goto_323

    nop

    nop

    nop

    nop

    :goto_2a8
    iget-object v2, v1, Linc;->w:Lryy;

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_2a9
    new-instance v4, Lsyx;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    const-wide v13, 0x140000000L

    nop

    goto/32 :goto_33a

    nop

    nop

    nop

    :goto_2ab
    iget-object v2, v1, Linc;->k:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    :goto_2ac
    sget-object v3, Lhml;->P:Lhmn;

    nop

    goto/32 :goto_41f

    nop

    nop

    nop

    :goto_2ad
    if-eq v2, v1, :cond_59

    nop

    nop

    nop

    goto/32 :goto_34b

    nop

    nop

    nop

    :cond_59
    goto/32 :goto_465

    nop

    nop

    nop

    :goto_2ae
    invoke-virtual {v4, v8, v9, v10}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V

    :goto_2af
    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    :goto_2b0
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    goto/32 :goto_451

    nop

    nop

    nop

    nop

    nop

    :goto_2b1
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_467

    nop

    nop

    nop

    :goto_2b2
    if-nez p15, :cond_5a

    nop

    nop

    nop

    goto/32 :goto_4a7

    nop

    :cond_5a
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_2b3
    invoke-direct {v4, v9}, Ltbw;-><init>(Limz;)V

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    if-nez v4, :cond_5b

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    :cond_5b
    goto/32 :goto_7e

    nop

    nop

    :goto_2b5
    const/16 v19, 0x1

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

    :goto_2b6
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_47a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b7
    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42d

    nop

    nop

    :goto_2b8
    if-nez v1, :cond_5c

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    :cond_5c
    goto/32 :goto_226

    nop

    nop

    nop

    nop

    :goto_2b9
    iget-wide v10, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_271

    nop

    nop

    nop

    :goto_2ba
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_3c2

    nop

    nop

    nop

    nop

    nop

    :goto_2bb
    iget-object v1, v15, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bc
    move-object/from16 v21, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bd
    sput-boolean v3, Lcom/a;->eh:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2be
    move-object v1, v5

    nop

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    nop

    nop

    :goto_2bf
    invoke-virtual {v1, v12}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    sget-object v2, Lhmu;->b:Lhmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c1
    if-nez v4, :cond_5d

    nop

    nop

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    :cond_5d
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c2
    if-nez v2, :cond_5e

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :cond_5e
    goto/32 :goto_491

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c3
    const-string v2, "p"

    nop

    nop

    nop

    goto/32 :goto_425

    nop

    nop

    nop

    nop

    :goto_2c4
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_449

    nop

    nop

    nop

    nop

    nop

    :goto_2c5
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_478

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    iget-object v7, v14, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c7
    invoke-virtual/range {v34 .. v34}, Lind;->c()Lrss;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_2c8
    new-instance v11, Ltcc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3cf

    nop

    nop

    :goto_2c9
    goto/16 :goto_60

    nop

    nop

    nop

    nop

    :goto_2ca
    goto/32 :goto_43d

    nop

    nop

    nop

    nop

    :goto_2cb
    goto/16 :goto_101

    nop

    nop

    :goto_2cc
    goto/32 :goto_2c3

    nop

    nop

    nop

    nop

    nop

    :goto_2cd
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    nop

    :goto_2ce
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_2cf
    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    nop

    :goto_2d0
    check-cast v0, Lcom/google/googlex/gcam/InitParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_372

    nop

    nop

    :goto_2d1
    iget-boolean v2, v1, Lprb;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    :goto_2d2
    sget-object v2, Lcom/a;->nonzsl_auto_base_frame_disable:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_40a

    nop

    nop

    :goto_2d3
    const/16 v3, -0x1

    nop

    goto/32 :goto_335

    nop

    nop

    nop

    nop

    nop

    :goto_2d4
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_463

    nop

    nop

    nop

    nop

    :goto_2d5
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d6
    if-nez v0, :cond_5f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_381

    nop

    nop

    nop

    nop

    :cond_5f
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_2d7
    iget-object v2, v1, Linc;->a:Lryw;

    nop

    goto/32 :goto_3c1

    nop

    nop

    nop

    nop

    :goto_2d8
    iget-object v2, v1, Linc;->j:Lryw;

    nop

    nop

    nop

    goto/32 :goto_3dc

    nop

    nop

    nop

    nop

    nop

    :goto_2d9
    const/16 v2, 0x648

    nop

    nop

    nop

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2da
    if-ne v0, v1, :cond_60

    nop

    nop

    goto/32 :goto_3b5

    nop

    :cond_60
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_2db
    invoke-virtual {v1}, Loyv;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_44c

    nop

    nop

    nop

    nop

    nop

    :goto_2dc
    iget-object v1, v14, Lila;->W:Loyd;

    nop

    nop

    goto/32 :goto_396

    nop

    nop

    :goto_2dd
    move-object/from16 v14, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38b

    nop

    nop

    nop

    :goto_2de
    invoke-virtual/range {v1 .. v6}, Ltbt;->y(Lpnx;Lcom/google/googlex/gcam/AeShotParams;Lpro;FLpck;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2df
    new-instance v2, Lcom/google/googlex/gcam/ShotCallbacks;

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    :goto_2e0
    iget-object v2, v1, Linc;->v:Lryw;

    nop

    nop

    goto/32 :goto_440

    nop

    nop

    :goto_2e1
    iget-object v9, v5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e2
    move v1, v13

    nop

    goto/32 :goto_42f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e3
    iget-object v2, v1, Linc;->A:Lryy;

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_2e4
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    goto/32 :goto_3fd

    nop

    nop

    nop

    nop

    :goto_2e5
    sget-object v2, Llla;->g:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    :goto_2e6
    new-instance v5, Lhig;

    nop

    nop

    goto/32 :goto_49b

    nop

    nop

    nop

    :goto_2e7
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_2e8
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

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

    :goto_2e9
    if-ne v2, v3, :cond_61

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    :cond_61
    goto/32 :goto_340

    nop

    nop

    nop

    :goto_2ea
    sget-object v1, Lils;->b:Lils;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_2eb
    move/from16 v3, p7

    nop

    nop

    nop

    goto/32 :goto_3f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ec
    invoke-virtual {v4}, Lind;->b()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_4a3

    nop

    nop

    :goto_2ed
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ee
    invoke-direct {v4, v9}, Ltbz;-><init>(Limz;)V

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ef
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    :goto_2f0
    move v5, v8

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2f1
    move-wide/from16 p4, v11

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    invoke-static {v0}, Lila;->S(Lsxh;)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_3a3

    nop

    nop

    nop

    nop

    nop

    :goto_2f3
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2f4
    invoke-virtual {v5, v8, v9, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageYuvAllocator(JLcom/google/googlex/gcam/clientallocator/YuvClientAllocator;)V

    :goto_2f5
    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_2f6
    iget-object v2, v1, Linc;->c:Lrss;

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f7
    iget-object v4, v4, Lind;->a:Lrss;

    nop

    nop

    goto/32 :goto_3e0

    nop

    nop

    :goto_2f8
    move-object/from16 v5, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_3b9

    nop

    nop

    nop

    :goto_2f9
    iget-object v2, v1, Linc;->l:Lryw;

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    :goto_2fa
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2fb
    if-nez v1, :cond_62

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :cond_62
    goto/32 :goto_206

    nop

    nop

    nop

    nop

    :goto_2fc
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    iget-object v5, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_3cc

    nop

    nop

    nop

    nop

    :goto_2fe
    invoke-virtual {v5, v10, v11, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedLumaDenoisedCallback(JLcom/google/googlex/gcam/hdrplus/MergedLumaDenoisedCallback;)V

    :goto_2ff
    goto/32 :goto_261

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_300
    iput-object v2, v1, Linc;->y:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35f

    nop

    nop

    nop

    nop

    nop

    :goto_301
    invoke-static {v0}, Lpby;->j(Lpck;)Lpby;

    move-result-object v2

    nop

    goto/32 :goto_42c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_302
    new-instance v5, Limy;

    nop

    goto/32 :goto_3c5

    nop

    nop

    nop

    nop

    :goto_303
    iput-object v2, v1, Linc;->s:Lryy;

    nop

    goto/32 :goto_35d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_304
    move-object/from16 v14, p1

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    :goto_305
    invoke-direct {v5, v3}, Limx;-><init>(Linb;)V

    goto/32 :goto_36c

    nop

    nop

    :goto_306
    iput-object v2, v1, Linc;->E:Lryy;

    nop

    nop

    nop

    nop

    nop

    :goto_307
    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    :goto_308
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_309
    check-cast v0, Lkmq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30a
    invoke-direct {v4, v9}, Ltby;-><init>(Limz;)V

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_30b
    iget-object v0, v0, Lfdn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    nop

    nop

    :goto_30c
    move-object/from16 p7, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_282

    nop

    nop

    nop

    nop

    :goto_30d
    goto/16 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_30e
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_30f
    iget-object v4, v4, Lind;->c:Lrss;

    nop

    nop

    goto/32 :goto_446

    nop

    nop

    nop

    :goto_310
    iget-object v0, v14, Lila;->ad:Liof;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_311
    const-string v1, "AwbInfo"

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

    nop

    :goto_312
    iget v2, v1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_399

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_313
    const/4 v13, 0x1

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    :goto_314
    const/4 v13, 0x1

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    :goto_315
    invoke-virtual {v2, v5}, Lows;->d(Lpci;)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_316
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_317
    if-nez v5, :cond_63

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    :cond_63
    goto/32 :goto_14b

    nop

    nop

    :goto_318
    move/from16 v20, p16

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_319
    iget-object v2, v1, Linc;->o:Lryy;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_31a
    iget-wide v0, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    :goto_31b
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_31c
    if-eqz p7, :cond_64

    nop

    nop

    goto/32 :goto_430

    nop

    nop

    nop

    nop

    :cond_64
    goto/32 :goto_445

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31d
    if-ne v2, v11, :cond_65

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    :cond_65
    goto/32 :goto_255

    nop

    nop

    :goto_31e
    move-object/from16 v21, v2

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    :goto_31f
    sget-object v3, Lils;->a:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_320
    iget v0, v0, Lsya;->k:I

    nop

    nop

    nop

    goto/32 :goto_3d1

    nop

    nop

    nop

    nop

    :goto_321
    invoke-interface {v0, v2}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    :goto_322
    invoke-direct {v5, v3, v7}, Limy;-><init>(Linb;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_323
    iget-object v0, v14, Lila;->Q:Liou;

    nop

    nop

    nop

    nop

    goto/32 :goto_38d

    nop

    nop

    nop

    nop

    nop

    :goto_324
    iget-object v4, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_325
    if-eqz v1, :cond_66

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    nop

    nop

    :cond_66
    goto/32 :goto_17f

    nop

    nop

    :goto_326
    new-instance v4, Lsyv;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_327
    iput-object v2, v1, Linc;->u:Lryy;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_328
    const-string v1, "disableCrop"

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_329
    iget-boolean v2, v1, Lprb;->n:Z

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    :goto_32a
    check-cast v1, Lkmq;

    nop

    goto/32 :goto_42e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32b
    iget-object v1, v1, Ljrz;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    nop

    nop

    :goto_32c
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_384

    nop

    nop

    nop

    nop

    :goto_32d
    invoke-virtual/range {v6 .. v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetShotStatusCallbacks(JLcom/google/googlex/gcam/base/function/IntByteArrayConsumer;Lcom/google/googlex/gcam/base/function/IntStringConsumer;Lcom/google/googlex/gcam/base/function/IntConsumer;)V

    goto/32 :goto_389

    nop

    nop

    nop

    :goto_32e
    if-ne v1, v11, :cond_67

    nop

    nop

    nop

    nop

    goto/32 :goto_430

    nop

    :cond_67
    :goto_32f
    goto/32 :goto_2e2

    nop

    nop

    :goto_330
    invoke-virtual {v0}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v4

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_331
    move-object v9, v0

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    nop

    :goto_332
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_333
    invoke-virtual {v4}, Lind;->i()Lrss;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    :goto_334
    const-string v0, "Incorrect base frame hint."

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_335
    sput v3, Lcom/a;->sCorrectorAutoHDRP:I

    nop

    nop

    nop

    nop

    :goto_336
    goto/32 :goto_397

    nop

    nop

    nop

    nop

    nop

    :goto_337
    monitor-enter v5

    nop

    nop

    :try_start_2
    iget-object v7, v1, Lijm;->b:Ljava/util/List;

    nop

    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_338
    invoke-static {v9, v0}, Ltbt;->k(Lpro;Lpnu;)Lcom/google/googlex/gcam/AwbInfo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_441

    nop

    nop

    nop

    nop

    :goto_339
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_303

    nop

    nop

    nop

    :goto_33a
    cmp-long v11, v11, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_45c

    nop

    nop

    :goto_33b
    move-object/from16 v14, p6

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_33c
    iget-object v0, v14, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_33d
    invoke-interface {v13, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33e
    invoke-virtual {v2, v3}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33f
    iget-boolean v1, v1, Lprb;->v:Z

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    :goto_340
    sget-object v3, Lsyi;->i:Lsyi;

    nop

    goto/32 :goto_3e8

    nop

    nop

    nop

    nop

    nop

    :goto_341
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/AeShotParams;->f(Lcom/google/googlex/gcam/NormalizedRect;)V

    :goto_342
    goto/32 :goto_172

    nop

    nop

    nop

    :goto_343
    iget-object v4, v3, Ljrz;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_344
    iput-object v2, v1, Linc;->A:Lryy;

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_345
    check-cast v0, Lkmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_415

    nop

    nop

    :goto_346
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_468

    nop

    nop

    nop

    :goto_347
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_419

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_348
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_37e

    nop

    nop

    nop

    :goto_349
    invoke-interface {v1, v2}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_314

    nop

    nop

    nop

    nop

    nop

    :goto_34a
    goto/16 :goto_151

    nop

    :goto_34b
    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    :goto_34c
    iget-object v2, v1, Linc;->b:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34d
    iget-object v0, v14, Lila;->e:Lpdf;

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34e
    iget v2, v0, Lpck;->a:I

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34f
    if-nez v2, :cond_68

    nop

    nop

    nop

    goto/32 :goto_426

    nop

    nop

    nop

    nop

    :cond_68
    goto/32 :goto_3df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_350
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_351
    invoke-virtual {v5, v9, v10, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedChromaDenoisedAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedS16ClientAllocator;)V

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_352
    invoke-direct {v9, v3, v4}, Limz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_46b

    nop

    nop

    nop

    nop

    :goto_353
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    nop

    nop

    :goto_354
    goto/32 :goto_29e

    nop

    nop

    :goto_355
    const-string v2, "setSuffix"

    nop

    nop

    goto/32 :goto_349

    nop

    nop

    nop

    :goto_356
    invoke-virtual {v5, v9, v10, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedLumaDenoisedAllocator(JLcom/google/googlex/gcam/clientallocator/GrayS16ClientAllocator;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_357
    if-nez v2, :cond_69

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    :cond_69
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_358
    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38f

    nop

    nop

    :goto_359
    invoke-direct {v9, v5}, Ltca;-><init>(Lina;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_35a
    const-string v2, "Incorrect base frame override."

    nop

    nop

    nop

    nop

    goto/32 :goto_240

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35b
    invoke-virtual {v1, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    :goto_35c
    goto/32 :goto_128

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35d
    goto/16 :goto_497

    nop

    nop

    nop

    nop

    :goto_35e
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_35f
    goto/16 :goto_3f4

    nop

    nop

    :goto_360
    goto/32 :goto_199

    nop

    nop

    nop

    :goto_361
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_362
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_363
    goto/32 :goto_242

    nop

    nop

    nop

    nop

    :goto_364
    iget-object v0, v14, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    goto/32 :goto_427

    nop

    nop

    nop

    :goto_365
    move-object/from16 v25, v2

    nop

    nop

    goto/32 :goto_400

    nop

    nop

    nop

    :goto_366
    new-instance v4, Luoj;

    nop

    nop

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    :goto_367
    iput-object v2, v1, Linc;->g:Lryy;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_368
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    :goto_369
    return-object v3

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_3
    monitor-exit v5

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_3d6

    nop

    nop

    nop

    nop

    nop

    :goto_36a
    move-object/from16 p16, v10

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36b
    if-eqz v1, :cond_6a

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :cond_6a
    goto/32 :goto_1fb

    nop

    nop

    :goto_36c
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    :goto_36d
    invoke-direct/range {v16 .. v33}, Lind;-><init>(Lryy;Lrss;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lryy;Lrss;Lrss;Lryy;)V

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36e
    invoke-direct {v5, v3, v8}, Limy;-><init>(Linb;I)V

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_36f
    iget-object v2, v1, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_3e3

    nop

    nop

    nop

    nop

    nop

    :goto_370
    move/from16 v13, v21

    nop

    nop

    goto/32 :goto_33b

    nop

    nop

    nop

    nop

    :goto_371
    invoke-virtual {v11}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    :goto_372
    invoke-virtual {v0}, Lcom/google/googlex/gcam/InitParams;->a()Lsxh;

    move-result-object v0

    nop

    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    nop

    :goto_373
    invoke-static {v5, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->LiveHdrMetadata_night_factor_get(JLcom/google/googlex/gcam/LiveHdrMetadata;)F

    move-result v17

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_374
    new-instance v1, Linc;

    nop

    nop

    nop

    goto/32 :goto_401

    nop

    nop

    nop

    :goto_375
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_376
    goto/32 :goto_3c8

    nop

    nop

    nop

    nop

    :goto_377
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    nop

    :goto_378
    invoke-virtual {v1}, Limf;->i()Z

    move-result v21

    nop

    goto/32 :goto_4a5

    nop

    nop

    nop

    nop

    nop

    :goto_379
    invoke-virtual {v3}, Limf;->h()Z

    move-result v3

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    :goto_37a
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36e

    nop

    nop

    nop

    nop

    nop

    :goto_37b
    move-object v0, v1

    nop

    nop

    nop

    goto/32 :goto_3aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37c
    invoke-virtual {v4, v9, v10, v5}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedPdCallback(JLcom/google/googlex/gcam/base/function/IntLongConsumer;)V

    :goto_37d
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37e
    invoke-virtual {v4}, Lind;->d()Lrss;

    move-result-object v4

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_37f
    move v0, v11

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_380
    goto/16 :goto_46e

    nop

    :goto_381
    goto/32 :goto_289

    nop

    nop

    nop

    nop

    nop

    :goto_382
    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    :goto_383
    invoke-direct {v7, v3}, Limu;-><init>(Linb;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_384
    goto/16 :goto_151

    nop

    nop

    nop

    nop

    :goto_385
    goto/32 :goto_477

    nop

    nop

    :goto_386
    const-string v2, "l"

    nop

    nop

    nop

    goto/32 :goto_2cb

    nop

    nop

    nop

    :goto_387
    const/4 v0, 0x0

    nop

    nop

    :goto_388
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_389
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38a
    move/from16 v12, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    :goto_38b
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_407

    nop

    nop

    nop

    nop

    nop

    :goto_38c
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38d
    invoke-interface {v0}, Liou;->b()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3b4

    nop

    nop

    nop

    nop

    :goto_38e
    new-instance v1, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    :goto_38f
    iget-object v2, v1, Linc;->g:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_390
    iget-object v2, v14, Lila;->o:Lils;

    nop

    nop

    nop

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    nop

    :goto_391
    sget-object v4, Lils;->b:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_392
    iget-object v4, v4, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_393
    if-eqz v4, :cond_6b

    nop

    nop

    goto/32 :goto_278

    nop

    :cond_6b
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_394
    move-object/from16 v9, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_395
    new-instance v4, Ltbz;

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    nop

    :goto_396
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_397
    invoke-static/range {v1 .. v3}, Lcom/a;->set_pthcr(III)V

    goto/32 :goto_38a

    nop

    nop

    nop

    :goto_398
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_399
    div-int/2addr v2, v11

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_39a
    iget-object v2, v1, Linc;->u:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39b
    move/from16 v10, v21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_39c
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_39d
    iget-wide v9, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    :goto_39e
    if-eqz v1, :cond_6c

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    :cond_6c
    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_39f
    invoke-interface {v4, v9}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_476

    nop

    nop

    nop

    nop

    nop

    :goto_3a0
    iget-object v1, v1, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_484

    nop

    nop

    nop

    nop

    nop

    :goto_3a1
    const/4 v1, -0x1

    nop

    goto/32 :goto_47e

    nop

    nop

    nop

    nop

    :goto_3a2
    invoke-virtual {v4, v11}, Liof;->j(Ljava/lang/String;)V

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a3
    iget-object v0, v14, Lila;->ae:Lhon;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a4
    if-le v2, v4, :cond_6d

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    :cond_6d
    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_3a5
    new-instance v1, Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_3a6
    iput-object v2, v1, Linc;->w:Lryy;

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_3a7
    if-nez v4, :cond_6e

    nop

    nop

    nop

    nop

    goto/32 :goto_48d

    nop

    nop

    :cond_6e
    goto/32 :goto_296

    nop

    nop

    nop

    :goto_3a8
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    :goto_3a9
    iget-object v0, v8, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_309

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3aa
    goto/16 :goto_151

    nop

    nop

    nop

    nop

    :goto_3ab
    goto/32 :goto_447

    nop

    nop

    nop

    nop

    nop

    :goto_3ac
    iget-wide v7, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    goto/32 :goto_39c

    nop

    nop

    :goto_3ad
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    :goto_3ae
    if-nez v2, :cond_6f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_360

    nop

    nop

    nop

    :cond_6f
    goto/32 :goto_40d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3af
    invoke-static {v13}, Lrrf;->x(Z)V

    goto/32 :goto_88

    nop

    nop

    :goto_3b0
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    :goto_3b1
    check-cast v11, Ljava/io/File;

    nop

    nop

    nop

    nop

    goto/32 :goto_371

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b2
    const-string v1, "Gcam::StartShotCapture() returned an invalid shot id."

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_3b3
    invoke-static {v2, v3, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->NormalizedRect_IsEmpty(JLcom/google/googlex/gcam/NormalizedRect;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b4
    if-nez v0, :cond_70

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :cond_70
    :goto_3b5
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_3b6
    if-ltz v0, :cond_71

    nop

    nop

    nop

    goto/32 :goto_388

    nop

    nop

    :cond_71
    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_3b7
    iget-wide v2, v1, Lcom/google/googlex/gcam/NormalizedRect;->a:J

    nop

    goto/32 :goto_3b3

    nop

    nop

    nop

    :goto_3b8
    check-cast v0, Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    :goto_3b9
    move-object/from16 v6, v35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_3ba
    iget-object v5, v15, Lila;->L:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_3bb
    move/from16 v6, v35

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3bc
    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_3bd
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_3be
    if-eqz v2, :cond_72

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :cond_72
    goto/32 :goto_44b

    nop

    nop

    nop

    :goto_3bf
    check-cast v4, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c0
    iget-object v3, v14, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_391

    nop

    nop

    nop

    nop

    :goto_3c1
    if-nez v2, :cond_73

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_462

    nop

    nop

    nop

    nop

    nop

    :cond_73
    goto/32 :goto_49d

    nop

    nop

    nop

    nop

    nop

    :goto_3c2
    const-string v2, "updateAe"

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c3
    if-ne v0, v1, :cond_74

    nop

    nop

    nop

    nop

    goto/32 :goto_418

    nop

    nop

    nop

    :cond_74
    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :goto_3c4
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_454

    nop

    nop

    nop

    nop

    :goto_3c5
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    nop

    :goto_3c6
    invoke-static {v6, v7, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->InitParams_execute_postview_on_get(JLcom/google/googlex/gcam/InitParams;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_3c7
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    :goto_3c8
    iget-object v2, v1, Linc;->o:Lryy;

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_3c9
    move-object/from16 v3, v36

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3ca
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_356

    nop

    nop

    nop

    nop

    :goto_3cb
    if-eqz v2, :cond_75

    nop

    goto/32 :goto_3fe

    nop

    nop

    nop

    nop

    nop

    :cond_75
    goto/32 :goto_2e4

    nop

    nop

    :goto_3cc
    new-instance v9, Limz;

    nop

    nop

    goto/32 :goto_352

    nop

    nop

    nop

    :goto_3cd
    goto/16 :goto_231

    nop

    nop

    nop

    :goto_3ce
    goto/32 :goto_3e6

    nop

    nop

    nop

    nop

    nop

    :goto_3cf
    invoke-direct {v11, v5}, Ltcc;-><init>(Lina;)V

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d0
    iget-boolean v2, v1, Lprb;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    :goto_3d1
    invoke-static {v11, v12, v2, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotCallbacks_final_image_pixel_format_set(JLcom/google/googlex/gcam/ShotCallbacks;I)V

    goto/32 :goto_141

    nop

    nop

    :goto_3d2
    const-string v12, "Storage space is running low, when out of space the app may crash."

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_3d3
    invoke-virtual {v0}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_44d

    nop

    nop

    nop

    :goto_3d4
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_3d5
    move-object/from16 v4, v37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    :goto_3d6
    throw v0

    nop

    nop

    nop

    :goto_3d7
    goto/32 :goto_49e

    nop

    nop

    nop

    nop

    nop

    :goto_3d8
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_3d9
    new-instance v5, Limy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37a

    nop

    nop

    nop

    nop

    nop

    :goto_3da
    goto/16 :goto_4a2

    nop

    nop

    nop

    :goto_3db
    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3dc
    if-nez v2, :cond_76

    nop

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    :cond_76
    goto/32 :goto_423

    nop

    nop

    nop

    :goto_3dd
    invoke-virtual {v2}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_3de
    iget-wide v4, v1, Lcom/google/googlex/gcam/StaticMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45b

    nop

    nop

    :goto_3df
    if-ne v2, v13, :cond_77

    nop

    nop

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    :cond_77
    goto/32 :goto_31d

    nop

    nop

    nop

    nop

    nop

    :goto_3e0
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_3e1
    goto/16 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_3e2
    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_3e3
    const-string v3, "createShotCallbacks"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_3e4
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3e5
    invoke-virtual {v4, v7, v8, v9}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetBaseFrameAeCallback(JLcom/google/googlex/gcam/hdrplus/BaseFrameAeCallback;)V

    goto/32 :goto_14

    nop

    nop

    :goto_3e6
    sget-object v1, Lcom/CameraLensesScan;->sActiveCamIDValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    nop

    nop

    :goto_3e7
    sget-object v1, Lsyg;->a:Lsyg;

    nop

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    :goto_3e8
    if-eq v2, v3, :cond_78

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :cond_78
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_3e9
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    :goto_3ea
    move-object v6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    :goto_3eb
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ec
    invoke-direct {v10, v5}, Ltcd;-><init>(Ltcf;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3ed
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ee
    iput-object v2, v1, Linc;->k:Lryy;

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    :goto_3ef
    sget-object v2, Llla;->e:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f0
    sget-object v3, Lcom/a;->gcam_hdrpus_force_wb:Lhmn;

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_3f1
    sput v3, Lcom/a;->sCorrectorAutoHDRP:I

    nop

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    :goto_3f2
    iget-object v1, v14, Lila;->J:Lprb;

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_3f3
    iput-object v2, v1, Linc;->y:Lryy;

    nop

    nop

    nop

    :goto_3f4
    goto/32 :goto_1fa

    nop

    nop

    nop

    :goto_3f5
    iget-object v2, v1, Linc;->A:Lryy;

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_3f6
    move-object/from16 v28, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_3f7
    invoke-virtual/range {v34 .. v34}, Lind;->k()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_3a8

    nop

    nop

    nop

    nop

    :goto_3f8
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_496

    nop

    nop

    nop

    nop

    :goto_3f9
    invoke-virtual {v15, v0}, Lcom/google/googlex/gcam/ShotParams;->d(Lcom/google/googlex/gcam/AwbInfo;)V

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3fa
    invoke-interface {v4, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_3fb
    goto/16 :goto_48b

    nop

    :goto_3fc
    goto/32 :goto_48a

    nop

    nop

    nop

    nop

    :goto_3fd
    iput-object v2, v1, Linc;->b:Lryy;

    nop

    :goto_3fe
    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_3ff
    invoke-static/range {p5 .. p10}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotCallbacks_postview_params_set(JLcom/google/googlex/gcam/ShotCallbacks;JLcom/google/googlex/gcam/PostviewParams;)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_400
    iget-object v2, v1, Linc;->s:Lryy;

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    nop

    :goto_401
    invoke-direct {v1, v10}, Linc;-><init>([B)V

    :goto_402
    goto/32 :goto_2d7

    nop

    nop

    nop

    :goto_403
    iget-object v2, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f0

    nop

    nop

    nop

    nop

    :goto_404
    goto/16 :goto_475

    nop

    nop

    nop

    nop

    nop

    :goto_405
    goto/32 :goto_474

    nop

    nop

    nop

    nop

    :goto_406
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_407
    const-string v2, "setWb"

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_408
    cmpg-float v0, v0, v2

    nop

    nop

    nop

    goto/32 :goto_433

    nop

    nop

    :goto_409
    sget-object v1, Lils;->e:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    :goto_40a
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_40b
    iget-object v4, v1, Lila;->ad:Liof;

    nop

    goto/32 :goto_3d3

    nop

    nop

    nop

    nop

    :goto_40c
    move-object v6, v4

    nop

    goto/32 :goto_382

    nop

    nop

    :goto_40d
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    :goto_40e
    check-cast v3, Ljrz;

    nop

    nop

    goto/32 :goto_343

    nop

    nop

    nop

    nop

    nop

    :goto_40f
    move-wide/from16 v15, v22

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_410
    iget-object v4, v3, Linb;->l:Lind;

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_411
    goto/16 :goto_307

    nop

    nop

    nop

    :goto_412
    goto/32 :goto_39

    nop

    nop

    :goto_413
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    nop

    :goto_414
    sget-object v2, Llla;->a:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    nop

    :goto_415
    iget-object v0, v0, Lkmq;->n:Lrss;

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_416
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_488

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_417
    goto/16 :goto_164

    nop

    nop

    :goto_418
    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :goto_419
    const/4 v11, 0x2

    nop

    goto/32 :goto_34f

    nop

    nop

    nop

    nop

    nop

    :goto_41a
    sget-object v1, Lcom/a;->zsl_auto_base_frame_disable:Lhmn;

    nop

    nop

    goto/32 :goto_3ad

    nop

    nop

    nop

    :goto_41b
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_78

    nop

    nop

    :goto_41c
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41d
    goto/16 :goto_295

    nop

    nop

    nop

    :goto_41e
    goto/32 :goto_429

    nop

    nop

    nop

    nop

    :goto_41f
    invoke-virtual {v2, v3}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v2

    nop

    goto/32 :goto_171

    nop

    nop

    :goto_420
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    :goto_421
    goto/32 :goto_3af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_422
    iget-object v4, v3, Linb;->x:Lqnt;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_423
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_3ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_424
    invoke-virtual {v4, v5}, Lijg;->e(Lils;)Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    :goto_425
    goto/16 :goto_101

    nop

    :goto_426
    goto/32 :goto_100

    nop

    nop

    :goto_427
    move-object/from16 v10, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_394

    nop

    nop

    nop

    nop

    :goto_428
    move-object/from16 v15, p14

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_429
    iget-object v2, v1, Linc;->m:Lryy;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_42a
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_36f

    nop

    nop

    nop

    :goto_42b
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    goto/32 :goto_241

    nop

    nop

    :goto_42c
    invoke-virtual {v1, v2}, Lpby;->m(Lpby;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42d
    if-ne v2, v3, :cond_79

    nop

    nop

    nop

    nop

    goto/32 :goto_426

    nop

    nop

    :cond_79
    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_42e
    iget v1, v1, Lkmq;->a:I

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    :goto_42f
    goto/16 :goto_de

    nop

    :goto_430
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_431
    iget-object v0, v14, Lila;->y:Lhoa;

    nop

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    nop

    :goto_432
    if-nez v4, :cond_7a

    nop

    nop

    goto/32 :goto_2f5

    nop

    nop

    nop

    nop

    nop

    :cond_7a
    goto/32 :goto_223

    nop

    nop

    :goto_433
    if-ltz v0, :cond_7b

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    nop

    nop

    :cond_7b
    goto/32 :goto_1f4

    nop

    nop

    :goto_434
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    nop

    :goto_435
    move v2, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_436
    iget-wide v2, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_437
    return-object v6

    nop

    nop

    nop

    nop

    :goto_438
    goto/32 :goto_434

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_439
    iget-object v0, v14, Lila;->o:Lils;

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    :goto_43a
    iget-object v2, v1, Linc;->x:Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3ae

    nop

    nop

    nop

    :goto_43b
    iget-object v3, v15, Lila;->K:Lnpq;

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_43c
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43d
    iget-object v2, v1, Linc;->k:Lryy;

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    :goto_43e
    check-cast v5, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    goto/32 :goto_48c

    nop

    nop

    nop

    nop

    :goto_43f
    move-wide/from16 p11, v7

    nop

    goto/32 :goto_456

    nop

    nop

    :goto_440
    if-nez v2, :cond_7c

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :cond_7c
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_441
    iget-object v1, v14, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_442
    iget-object v5, v1, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_424

    nop

    nop

    nop

    :goto_443
    invoke-virtual {v4, v9, v10, v11}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetFinalImageCallback(JLcom/google/googlex/gcam/hdrplus/ManagedImageCallback;)V

    :goto_444
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_445
    iget-wide v2, v15, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_446
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    :goto_447
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->k()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2fb

    nop

    nop

    nop

    :goto_448
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4a4

    nop

    nop

    :goto_449
    iput-object v2, v1, Linc;->e:Lryy;

    nop

    nop

    :goto_44a
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_44b
    sget-object v2, Lsbn;->a:Lsbn;

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_44c
    sget-object v2, Lknp;->a:Lknp;

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    :goto_44d
    if-eqz v0, :cond_7d

    nop

    goto/32 :goto_3e2

    nop

    :cond_7d
    goto/32 :goto_3e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44e
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    :goto_44f
    goto/16 :goto_151

    nop

    nop

    nop

    nop

    :goto_450
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_451
    if-nez v1, :cond_7e

    nop

    goto/32 :goto_111

    nop

    :cond_7e
    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_452
    const-string v1, "n"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_404

    nop

    nop

    nop

    nop

    nop

    :goto_453
    iget-object v4, v14, Lila;->p:Landroid/util/DisplayMetrics;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_454
    iput-object v2, v1, Linc;->g:Lryy;

    nop

    nop

    nop

    nop

    :goto_455
    goto/32 :goto_15c

    nop

    nop

    nop

    :goto_456
    move-object/from16 p13, v2

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    :goto_457
    sget-object v2, Llla;->e:Lcom/google/googlex/gcam/NormalizedRect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_458
    iget-object v5, v3, Linb;->f:Ltbq;

    nop

    nop

    goto/32 :goto_39d

    nop

    nop

    nop

    nop

    nop

    :goto_459
    goto/16 :goto_354

    nop

    nop

    nop

    :goto_45a
    goto/32 :goto_353

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45b
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->StaticMetadata_pixel_array_height_get(JLcom/google/googlex/gcam/StaticMetadata;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45c
    if-lez v11, :cond_7f

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :cond_7f
    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    :goto_45d
    iget-wide v6, v0, Lcom/google/googlex/gcam/InitParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45e
    new-instance v11, Ltce;

    nop

    goto/32 :goto_48f

    nop

    nop

    :goto_45f
    move-object v10, v6

    nop

    nop

    nop

    :goto_460
    goto/32 :goto_210

    nop

    nop

    :goto_461
    goto/16 :goto_3fe

    nop

    nop

    nop

    nop

    :goto_462
    goto/32 :goto_26e

    nop

    nop

    nop

    nop

    nop

    :goto_463
    invoke-static {v1, v0}, Lila;->O(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/RectF;)V

    :goto_464
    goto/32 :goto_439

    nop

    nop

    nop

    nop

    nop

    :goto_465
    iget-object v1, v14, Lila;->J:Lprb;

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_466
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_312

    nop

    nop

    nop

    :goto_467
    iget-object v5, v3, Linb;->k:Lsyy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f3

    nop

    nop

    :goto_468
    invoke-virtual {v5, v7, v8, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetPostviewRgbAllocator(JLcom/google/googlex/gcam/clientallocator/InterleavedU8ClientAllocator;)V

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    :goto_469
    iput-object v2, v1, Linc;->q:Lryy;

    nop

    nop

    nop

    :goto_46a
    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    :goto_46b
    iget-wide v10, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_395

    nop

    nop

    nop

    nop

    nop

    :goto_46c
    sget-object v0, Lila;->f:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_361

    nop

    nop

    nop

    nop

    nop

    :goto_46d
    sget-object v0, Lsya;->a:Lsya;

    nop

    nop

    nop

    nop

    nop

    :goto_46e
    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46f
    iget-object v2, v15, Lila;->n:Loyd;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_470
    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_471
    if-nez v0, :cond_80

    nop

    nop

    goto/32 :goto_342

    nop

    :cond_80
    goto/32 :goto_34d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_472
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_473
    move-object/from16 v13, p6

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    nop

    nop

    :goto_474
    const-string v1, "z"

    nop

    nop

    nop

    :goto_475
    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_476
    iget-wide v11, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    nop

    goto/32 :goto_320

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_477
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    :goto_478
    iput-object v2, v1, Linc;->e:Lryy;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_479
    iget-object v1, v14, Lila;->s:Lpck;

    nop

    nop

    goto/32 :goto_345

    nop

    nop

    nop

    :goto_47a
    new-instance v5, Ltbr;

    nop

    goto/32 :goto_47b

    nop

    nop

    nop

    :goto_47b
    invoke-direct {v5, v3, v7}, Ltbr;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_24f

    nop

    nop

    :goto_47c
    if-eq v1, v2, :cond_81

    nop

    goto/32 :goto_12e

    nop

    :cond_81
    goto/32 :goto_313

    nop

    nop

    nop

    nop

    :goto_47d
    move-object/from16 v16, v34

    nop

    nop

    nop

    goto/32 :goto_34c

    nop

    nop

    nop

    nop

    nop

    :goto_47e
    const/4 v12, 0x0

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    :goto_47f
    goto/16 :goto_46e

    nop

    nop

    nop

    nop

    :goto_480
    goto/32 :goto_46d

    nop

    nop

    nop

    nop

    nop

    :goto_481
    iget-wide v5, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_482
    if-nez v2, :cond_82

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    :cond_82
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_483
    if-nez v5, :cond_83

    nop

    nop

    nop

    goto/32 :goto_23d

    nop

    :cond_83
    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_484
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_485
    if-nez v2, :cond_84

    nop

    nop

    nop

    nop

    goto/32 :goto_376

    nop

    nop

    :cond_84
    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_486
    iget-object v2, v1, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_487
    const v0, 0x1f

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_488
    iget-object v2, v14, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    :goto_489
    iget-object v2, v1, Linc;->e:Lryy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_358

    nop

    nop

    nop

    :goto_48a
    move v1, v12

    nop

    :goto_48b
    goto/32 :goto_35a

    nop

    nop

    nop

    nop

    nop

    :goto_48c
    invoke-virtual {v5, v10, v11, v4}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeSetMergedRawImageCallback(JLcom/google/googlex/gcam/hdrplus/MergedRawCallback;)V

    :goto_48d
    goto/32 :goto_410

    nop

    nop

    nop

    nop

    nop

    :goto_48e
    if-eqz v4, :cond_85

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    :cond_85
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_48f
    invoke-direct {v11, v5}, Ltce;-><init>(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_28

    nop

    nop

    :goto_490
    new-instance v1, Lpck;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_491
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_327

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_492
    iget-wide v8, v2, Lcom/google/googlex/gcam/ShotCallbacks;->a:J

    nop

    goto/32 :goto_368

    nop

    nop

    :goto_493
    invoke-virtual {v15}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_494
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_495
    invoke-virtual {v0}, Lcom/google/googlex/gcam/AeShotParams;->c()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v1

    nop

    goto/32 :goto_3b7

    nop

    nop

    nop

    :goto_496
    iput-object v2, v1, Linc;->s:Lryy;

    nop

    nop

    :goto_497
    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_498
    sget-object v1, Lsym;->b:Lsym;

    nop

    nop

    nop

    :goto_499
    goto/32 :goto_436

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49a
    if-nez v4, :cond_86

    nop

    goto/32 :goto_109

    nop

    nop

    :cond_86
    goto/32 :goto_324

    nop

    nop

    :goto_49b
    const/16 v7, 0x10

    nop

    goto/32 :goto_1c2

    nop

    nop

    :goto_49c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    :goto_49d
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_49e
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    :goto_49f
    iget-object v2, v1, Linc;->q:Lryy;

    nop

    nop

    goto/32 :goto_365

    nop

    nop

    nop

    nop

    nop

    :goto_4a0
    iget-wide v13, v4, Lcom/google/googlex/gcam/PostviewParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4a1
    invoke-virtual {v0, v2}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    :goto_4a2
    goto/32 :goto_37b

    nop

    nop

    nop

    :goto_4a3
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_4a4
    iput-object v2, v1, Linc;->m:Lryy;

    nop

    nop

    goto/32 :goto_41d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a5
    const-string v1, "shotParams"

    nop

    nop

    nop

    goto/32 :goto_3fa

    nop

    nop

    :goto_4a6
    invoke-static {v0, v1, v15, v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_use_binned_metering_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :goto_4a7
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 58bdc013cbfa0784191428aca07544ffm(FZ)Lcom/google/googlex/gcam/AeShotParams;
    .locals 2

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_0
    iget p1, p1, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lcom/google/googlex/gcam/AeShotParams;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide p1, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

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

    :goto_4
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3f

    nop

    nop

    :goto_8
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_9
    iget p1, p1, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    goto/16 :goto_4a

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p1, Lsyk;->b:Lsyk;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

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

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->e(Lswz;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lils;->ordinal()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->g(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lila;->s:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->m(Lsyk;)V

    goto/32 :goto_14

    nop

    nop

    :goto_14
    goto/16 :goto_4a

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p1, p2, v0, p0}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeShotParams_legacy_pre_slm_processing_set(JLcom/google/googlex/gcam/AeShotParams;Z)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->m(Lsyk;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lila;->S:Loyd;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Lknm;->c()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1e
    if-ne p1, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    :goto_1f
    sget-object p1, Lswz;->d:Lswz;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_24
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    goto/32 :goto_38

    nop

    nop

    :goto_25
    sget-object p1, Lsyk;->d:Lsyk;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

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

    :goto_27
    if-ne p1, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_28
    sget-object p1, Lsyk;->a:Lsyk;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    sget-object p1, Lswz;->c:Lswz;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2b
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p1, Lsyj;->e:Lsyj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object p1, Lsyk;->c:Lsyk;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0x2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_30
    if-nez p2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p1, Lswz;->b:Lswz;

    nop

    nop

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Lila;->s:Lpck;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lcom/google/googlex/gcam/AeShotParams;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->e(Lswz;)V

    :goto_37
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_38
    sget-object p1, Lkvu;->a:Lkvu;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->l(Lsyj;)V

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3c
    goto :goto_37

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_41
    goto :goto_4a

    nop

    nop

    :goto_42
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ne p1, v1, :cond_7

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_7
    goto/32 :goto_2e

    nop

    nop

    :goto_44
    sget-object p1, Lhmu;->bx:Lhmn;

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

    :goto_45
    goto/16 :goto_32

    nop

    :goto_46
    goto/32 :goto_31

    nop

    nop

    :goto_47
    if-nez p1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p1, p0, Lila;->E:Lknm;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_49
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->m(Lsyk;)V

    :goto_4a
    goto/32 :goto_30

    nop

    nop

    :goto_4b
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/AeShotParams;->m(Lsyk;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 6d3821fac0840ee9e72137504d3d1e1em(Lmmw;Lioy;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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

    :goto_1
    if-eqz p0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lila;->P:Lmmx;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lioy;->a()I

    move-result p2

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

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lmmw;->a(Lmmw;)Z

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lmmx;->e()Lmmw;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eq p2, v0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    return p0

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

    nop

    :goto_c
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x0

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
.end method

.method private final 7852ab18ac4bc461fee1a84b3ceac02dm(Lpro;Lrss;)Lcom/google/googlex/gcam/GyroSampleVector;
    .locals 11

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    new-instance v0, Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    goto/32 :goto_1

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    return-object v0

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {p1, v3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    iget-object v5, p0, Lila;->T:Litd;

    nop

    iget-object v6, v5, Litd;->b:Ltbt;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->f()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lpnx;

    nop

    invoke-virtual {v6, p1, v7}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v6

    nop

    iget-boolean v7, v5, Litd;->c:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v7, :cond_0

    nop

    nop

    nop

    nop

    invoke-static {v6}, Ltbt;->d(Lpnu;)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/16 :goto_e

    nop

    :cond_0
    invoke-virtual {p2}, Lrss;->h()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Lpnx;

    nop

    iget-object p1, p1, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    :cond_1
    iget-object p2, v5, Litd;->e:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {p1, p2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    check-cast p2, Ljava/lang/String;

    nop

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    move-object p1, p2

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {p1}, Lpro;->b()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez p1, :cond_3

    nop

    nop

    :goto_c
    move-object p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    iget-object p2, v5, Litd;->d:Lryh;

    nop

    nop

    invoke-virtual {p2, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    check-cast p1, Llhu;

    nop

    nop

    nop

    nop

    sget-object p2, Llhu;->f:Llhu;

    nop

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    if-eqz p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lpck;

    nop

    nop

    nop

    nop

    iget-object p2, v5, Litd;->f:Lhoh;

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lhlx;->b:Lhmo;

    nop

    nop

    invoke-virtual {p2, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    nop

    iget-object v5, v5, Litd;->f:Lhoh;

    nop

    nop

    sget-object v7, Lhlx;->c:Lhmo;

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2, v5}, Lpck;-><init>(II)V

    goto/16 :goto_d

    nop

    nop

    :cond_4
    sget-object p2, Llhu;->d:Llhu;

    nop

    nop

    nop

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_5

    nop

    nop

    new-instance p1, Lpck;

    nop

    nop

    nop

    nop

    iget-object p2, v5, Litd;->f:Lhoh;

    nop

    nop

    nop

    sget-object v7, Lhlx;->f:Lhmo;

    nop

    nop

    invoke-virtual {p2, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    iget-object v5, v5, Litd;->f:Lhoh;

    nop

    nop

    sget-object v7, Lhlx;->g:Lhmo;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2, v5}, Lpck;-><init>(II)V

    goto/16 :goto_d

    nop

    :cond_5
    sget-object p2, Llhu;->b:Llhu;

    nop

    invoke-static {p1, p2}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    new-instance p1, Lpck;

    nop

    iget-object p2, v5, Litd;->f:Lhoh;

    nop

    nop

    nop

    sget-object v7, Lhlx;->d:Lhmo;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p2

    nop

    nop

    invoke-virtual {p2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    iget-object v5, v5, Litd;->f:Lhoh;

    nop

    nop

    sget-object v7, Lhlx;->e:Lhmo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    invoke-direct {p1, p2, v5}, Lpck;-><init>(II)V

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    sget-object p2, Litd;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    const/16 v5, 0x762

    nop

    nop

    nop

    invoke-interface {p2, v5}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    const-string v5, "Could not find matching binned size. Camera type: %s"

    nop

    nop

    const-string v7, "null"

    nop

    nop

    nop

    nop

    nop

    if-nez p1, :cond_7

    nop

    nop

    move-object p1, v7

    nop

    nop

    nop

    nop

    :cond_7
    invoke-interface {p2, v5, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v6, p1}, Ltbt;->e(Lpnu;Lpck;)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    :goto_e
    add-long/2addr v1, v3

    nop

    new-instance v0, Lcom/google/googlex/gcam/GyroSampleVector;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Lcom/google/googlex/gcam/GyroSampleVector;-><init>()V

    iget-object v5, p0, Lila;->w:Ltxm;

    nop

    invoke-interface {v5}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lrss;

    nop

    nop

    invoke-virtual {v5}, Lrss;->h()Z

    move-result v6

    nop

    if-eqz v6, :cond_8

    nop

    add-long/2addr v1, p1

    nop

    nop

    nop

    invoke-virtual {v5}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    move-object v5, p1

    nop

    nop

    check-cast v5, Lppd;

    nop

    nop

    iget-object p1, p0, Lila;->e:Lpdf;

    nop

    nop

    const-string p2, "gyro"

    nop

    nop

    invoke-interface {p1, p2}, Lpdf;->f(Ljava/lang/String;)V

    const-wide/32 p1, -0x4c4b40

    nop

    nop

    nop

    nop

    add-long v6, v3, p1

    nop

    nop

    nop

    nop

    nop

    const-wide/32 p1, 0x4c4b40

    nop

    nop

    add-long v8, v1, p1

    nop

    new-instance v10, Liif;

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v10, v0, p1}, Liif;-><init>(Ljava/lang/Object;I)V

    invoke-interface/range {v5 .. v10}, Lppd;->b(JJLppc;)V

    iget-object p0, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    invoke-interface {p0}, Lpdf;->g()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Lcom/google/googlex/gcam/GyroSampleVector;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_9

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop
.end method

.method private final 881c79c34bf9fa64d93830b11a6c3f5am(Lpnx;Lpro;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2, v0}, Lila;->7852ab18ac4bc461fee1a84b3ceac02dm(Lpro;Lrss;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2, v0, p1}, Lila;->g(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v2, v1}, Lpck;-><init>(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lila;->b:Lpck;

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

    :goto_2
    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v0, 0x1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lpck;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lila;->f:Lsdb;

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

    :goto_6
    const/16 v1, 0x5a0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_8
    const/16 v2, 0x780

    nop

    nop

    nop

    goto/32 :goto_0

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
    goto/32 :goto_d

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
    const-string v0, "ila"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    const v1, 0x1a

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

    :goto_11
    sput-object v0, Lila;->c:Lpck;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    new-instance v0, Lpck;

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

    nop

    :goto_13
    invoke-direct {v0, v2, v1}, Lpck;-><init>(II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v1, 0x438

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

    :goto_15
    if-lez v0, :cond_0

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
    goto/32 :goto_9

    nop
.end method

.method public constructor <init>(Landroid/util/DisplayMetrics;Lijl;Lfdn;Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;Ltbs;Lpnu;Lhwy;Lkxj;Lcom/google/googlex/gcam/Gcam;Ltbq;Ling;Ltxm;Lhoh;Llyv;Ltxm;Lows;Lknq;Lils;Ltxm;Lhon;Lhoa;Liof;Lijm;Lijg;Lijo;Likt;Loyd;Lpdf;Lknm;Liof;Likn;Ljava/util/concurrent/Executor;Llss;Llld;Lprb;Lfdn;Lnpq;Loyd;Lpnv;Lkvt;Liim;Lmmx;Liou;Limf;Loyd;Litd;Lrss;Loyd;Lpty;ZLimj;Lnne;)V
    .locals 16

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v8, p28

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v5, v0, Lila;->ad:Liof;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v5, 0x0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_5f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_57

    nop

    nop

    :goto_5
    iput-object v2, v0, Lila;->u:Lows;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v5, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_7
    iput-object v5, v0, Lila;->m:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iput-object v5, v0, Lila;->B:Lijo;

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_9
    iput-object v5, v0, Lila;->w:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_a
    move-object/from16 v8, p36

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v6, 0x11

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_c
    move-object/from16 v5, p35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v5, p23

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

    :goto_e
    move-object/from16 v5, p19

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

    :goto_f
    iput-object v5, v0, Lila;->z:Lijm;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_10
    if-eqz v14, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_11
    iget-wide v11, v1, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_12
    iput-object v8, v0, Lila;->Z:Lpty;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v9, v10, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_post_shutter_af_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v9

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

    :goto_14
    iput-object v5, v0, Lila;->M:Lpnv;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_15
    iput-object v5, v0, Lila;->y:Lhoa;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    move/from16 v8, p50

    nop

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

    :goto_17
    iput-object v5, v0, Lila;->U:Lrss;

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

    :goto_18
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v8, v0, Lila;->h:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    iput-object v5, v0, Lila;->C:Likt;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmp-long v14, v12, v6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v12, v5

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v5, p29

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_1e
    iput-object v6, v0, Lila;->i:Lryh;

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object v5, v0, Lila;->F:Likn;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_20
    invoke-static {v13, v14, v12}, Lcom/google/googlex/gcam/GcamModuleJNI;->Tuning_physical_stability_params_get(JLcom/google/googlex/gcam/Tuning;)J

    move-result-wide v12

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

    :goto_21
    move-object/from16 v5, p3

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput-object v5, v0, Lila;->ae:Lhon;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_23
    invoke-virtual {v8}, Lryd;->b()Lryh;

    move-result-object v6

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

    :goto_24
    iput-object v5, v0, Lila;->n:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_25
    iput-object v5, v0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v8, Lryd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v4, v0, v3}, Loyu;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_28
    move-object/from16 v5, p22

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1, v10}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v12

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v12, Lcom/google/googlex/gcam/PostShutterAfParams;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2b
    iput-object v5, v0, Lila;->v:Lknq;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v5, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v5, p27

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v8}, Lryd;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v1, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_30
    move-object/from16 v5, p10

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object/from16 v5, p18

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_33
    iput-object v5, v0, Lila;->ac:Liof;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_34
    sget-object v8, Lhmu;->a:Lhmo;

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

    :goto_35
    iput-object v5, v0, Lila;->aa:Llyv;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_23

    nop

    nop

    :goto_38
    iput-object v8, v0, Lila;->T:Litd;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v1, p9

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v5, v5, Lhwy;->c:Ljava/lang/Object;

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

    :goto_3b
    iput-object v5, v0, Lila;->o:Lils;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3c
    move-object/from16 v5, p8

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v5, p14

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object/from16 v5, p2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_40
    move-object/from16 v8, p52

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v5, p31

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

    :goto_44
    invoke-direct {v12, v9, v10, v15}, Lcom/google/googlex/gcam/PostShutterAfParams;-><init>(JZ)V

    :goto_45
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iput-object v5, v0, Lila;->x:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_48
    iput-object v5, v0, Lila;->J:Lprb;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v5, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move v13, v10

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4d
    const/4 v9, 0x0

    nop

    nop

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

    :goto_4e
    iput-object v5, v0, Lila;->l:Lijl;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4f
    goto :goto_45

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v5, v0, Lila;->L:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eqz v12, :cond_1

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_53
    invoke-virtual {v8, v11, v9}, Lryd;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_54
    move-object/from16 v8, p48

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_55
    iput-object v8, v0, Lila;->W:Loyd;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object/from16 v5, p21

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

    :goto_57
    new-instance v14, Lcom/google/googlex/gcam/PhysicalStabilityParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_58
    iput-object v5, v0, Lila;->r:Lpnu;

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_59
    iput-object v5, v0, Lila;->K:Lnpq;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v5, v0, Lila;->D:Loyd;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v5, p24

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryWide_get()Ljava/lang/String;

    move-result-object v8

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

    nop

    :goto_5d
    move-object/from16 v5, p17

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v14, v12, v13, v9}, Lcom/google/googlex/gcam/PhysicalStabilityParams;-><init>(JZ)V

    :goto_5f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-wide v9, v12, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v8, v0, Lila;->S:Loyd;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_63
    move-object/from16 v5, p37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v9, v15

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_66
    move-object/from16 v5, p39

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_67
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_68
    invoke-direct {v9, v14, v12}, Likz;-><init>(Lcom/google/googlex/gcam/PhysicalStabilityParams;Lcom/google/googlex/gcam/PostShutterAfParams;)V

    goto/32 :goto_53

    nop

    nop

    :goto_69
    add-int/lit8 v10, v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6a
    iput-object v5, v0, Lila;->s:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_6b
    move-object/from16 v5, p20

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

    :goto_6c
    move-object/from16 v8, p49

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6d
    iput-object v8, v0, Lila;->Y:Lnne;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6e
    if-lt v10, v11, :cond_2

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v5, p15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_70
    move-object/from16 v5, p12

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_71
    move-object/from16 v5, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-object/from16 v5, p34

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_73
    iput-object v5, v0, Lila;->p:Landroid/util/DisplayMetrics;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_74
    iput-object v5, v0, Lila;->A:Lijg;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_75
    move-object/from16 v5, p38

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_76
    const-wide/16 v6, 0x0

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

    :goto_77
    cmp-long v12, v9, v6

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v8, p46

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_79
    iput-object v5, v0, Lila;->ag:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_7a
    iput-object v5, v0, Lila;->t:Ltxm;

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

    :goto_7b
    iput-boolean v8, v0, Lila;->V:Z

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_7c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-object v5, v0, Lila;->q:Ltbs;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object/from16 v5, p4

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v0, v1, v7, v6, v5}, Lgzw;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v4, p44

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_81
    iput-object v8, v0, Lila;->X:Limj;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v5, v5, Lkxj;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_83
    new-instance v9, Likz;

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

    :goto_84
    move-object/from16 v8, p41

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-object v8, v0, Lila;->O:Liim;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_86
    move v10, v9

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_11

    nop

    nop

    :goto_88
    iput-object v3, v0, Lila;->G:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iput-object v5, v0, Lila;->H:Llss;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_8a
    move-object/from16 v5, p13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_8b
    iput-object v5, v0, Lila;->ab:Lhoh;

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

    :goto_8c
    iget-wide v13, v12, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_8d
    move-object/from16 v5, p25

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

    :goto_8e
    move-object/from16 v5, p30

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

    :goto_8f
    move-object/from16 v8, p43

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_90
    move-object/from16 v8, p45

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_91
    move-object/from16 v3, p32

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move-object/from16 v5, p5

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    :goto_94
    iput-object v8, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_95
    iput-object v8, v0, Lila;->g:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move-object v14, v5

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move-object/from16 v5, p47

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

    :goto_98
    iput-object v8, v0, Lila;->af:Lfdn;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_99
    move-object/from16 v8, p40

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_9a
    move-object/from16 v5, p26

    nop

    nop

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

    :goto_9b
    invoke-virtual {v2, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iput-object v5, v0, Lila;->E:Lknm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_9d
    iput-object v8, v0, Lila;->N:Lkvt;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_9e
    iput-object v8, v0, Lila;->P:Lmmx;

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_9f
    move-object/from16 v5, p33

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_a1
    invoke-static {v11, v12, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetNumCameras(JLcom/google/googlex/gcam/Gcam;)I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_a2
    move-object/from16 v0, p0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v5, p6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_a4
    iput-object v5, v0, Lila;->k:Ltbq;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->kRequestCameraSecondaryTele_get()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_a6
    move-object/from16 v7, p11

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_a7
    move-object/from16 v2, p16

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_a8
    iput-object v4, v0, Lila;->R:Limf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move-object/from16 v8, p42

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_aa
    new-instance v0, Lgzw;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_ab
    iput-object v8, v0, Lila;->Q:Liou;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v8, p51

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v1, v10}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_ae
    iput-object v5, v0, Lila;->I:Llld;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method private static O(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/RectF;)V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget v1, p1, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/NormalizedRect;->e(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    const v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/googlex/gcam/AeShotParams;->f(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/32 :goto_12

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, p1, Landroid/graphics/RectF;->right:F

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

    :goto_9
    iget v1, p1, Landroid/graphics/RectF;->top:F

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

    nop

    :goto_a
    invoke-direct {v0}, Lcom/google/googlex/gcam/NormalizedRect;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    invoke-virtual {v0, p1}, Lcom/google/googlex/gcam/NormalizedRect;->f(F)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/NormalizedRect;->c(F)V

    goto/32 :goto_9

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0}, Lcom/google/googlex/gcam/AeShotParams;->h(Lcom/google/googlex/gcam/NormalizedRect;)V

    goto/32 :goto_f

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    new-instance v0, Lcom/google/googlex/gcam/NormalizedRect;

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

    :goto_13
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/NormalizedRect;->d(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method private static S(Lsxh;)I
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lsxh;->e:I

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
    invoke-static {p0}, La;->N(I)I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    return p0

    nop
.end method

.method private final aaadf0a9c0da915f2782a301bde92c44m()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Lijg;->e(Lils;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iget-object v0, p0, Lila;->A:Lijg;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final aaec1d22915a22823a4c3f7bc703c9d8m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lila;->u:Lows;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lpfi;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Lpfi;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lows;->b()Z

    move-result p0

    nop

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

    :goto_5
    if-eqz p0, :cond_0

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

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

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Camera already closed"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final ca40d22f1631a8d5d6ec3ccdb7c19696m(FILkvu;IZZZLrss;ZZZLpro;Lpnx;JFLioy;ZZLpro;)Lcom/google/googlex/gcam/ShotParams;
    .locals 19

    goto/32 :goto_33e

    nop

    nop

    :goto_0
    iget-wide v11, v3, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    nop

    goto/32 :goto_305

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_3b5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1ae

    nop

    nop

    :goto_3
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_eevee_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_38e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_318

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_3b5

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_394

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_3fb

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    :cond_0
    goto/32 :goto_24c

    nop

    nop

    nop

    :goto_a
    invoke-interface {v9, v10}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-wide v2, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v8, 0x1

    nop

    goto/32 :goto_379

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v8, v9}, Lnne;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v8, Lsyl;->b:Lsyl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_f
    sget-object v2, Lhmu;->aQ:Lhmn;

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v4, v1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, v0, Lila;->l:Lijl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v9, v0, Lila;->I:Llld;

    nop

    nop

    nop

    goto/32 :goto_38c

    nop

    nop

    nop

    :goto_13
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    :goto_14
    iget-object v4, v5, Ljrz;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_15
    iget-wide v4, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_16
    const/16 v4, 0x9

    nop

    nop

    goto/32 :goto_428

    nop

    nop

    nop

    :goto_17
    const-string v8, "OFF"

    nop

    nop

    nop

    goto/32 :goto_3ff

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aget v9, v13, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_1a
    sget-object v8, Lhmu;->bj:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d8

    nop

    nop

    nop

    :goto_1b
    iget-object v8, v5, Ljrz;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_1c
    if-eqz p11, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    :cond_1
    goto/32 :goto_38f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v9, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v15, v3, v2}, Limi;-><init>(Lsxz;Z)V

    goto/32 :goto_420

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->i(Z)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_22
    if-eqz v7, :cond_2

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_0
    iget-object v7, v0, Lila;->r:Lpnu;

    nop

    nop

    nop

    invoke-interface {v7}, Lpnu;->S()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_2a

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Lcom/CameraLensSpecification;

    nop

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7}, Lcom/CameraLensSpecification;->A()Z

    move-result v7

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_240

    nop

    nop

    :goto_23
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v2, 0x1

    nop

    goto/32 :goto_226

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-wide v2, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_28
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    :goto_29
    iget-boolean v2, v15, Limj;->b:Z

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-ne v15, v12, :cond_3

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_114

    nop

    nop

    :goto_2b
    if-nez v7, :cond_4

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_4
    goto/32 :goto_1f5

    nop

    nop

    nop

    :goto_2c
    sget-object v8, Lils;->b:Lils;

    nop

    goto/32 :goto_3f7

    nop

    nop

    nop

    :goto_2d
    new-instance v1, Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    :goto_2e
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    :cond_5
    goto/32 :goto_282

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v9

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_371

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_425

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_35
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_287

    nop

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    :cond_8
    goto/32 :goto_32d

    nop

    nop

    nop

    nop

    :goto_38
    invoke-interface {v1}, Liou;->e()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_39
    iget-boolean v7, v15, Limi;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    :cond_9
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v8, Lijv;

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    :goto_3c
    invoke-static {v2, v3, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_bento_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_28e

    nop

    nop

    nop

    :goto_3d
    iget-boolean v2, v15, Limj;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v8, Ljrz;

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v9, v1, v10}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    :goto_40
    sget-object v3, Lhmu;->be:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2d6

    nop

    nop

    :goto_43
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_66

    nop

    nop

    :goto_45
    goto/16 :goto_24f

    nop

    :goto_46
    goto/32 :goto_31

    nop

    nop

    :goto_47
    if-eqz v1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/ShotParams;->i(Z)V

    :goto_49
    goto/32 :goto_37c

    nop

    nop

    :goto_4a
    const-string v8, "OFF"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_422

    nop

    nop

    :goto_4b
    iget-wide v8, v1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v10, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-wide/from16 v3, p14

    nop

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    :goto_4e
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ShotParams__SWIG_0()J

    move-result-wide v7

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_4f
    sget v8, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_shadow_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_51
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_34c

    nop

    nop

    nop

    :goto_52
    if-gtz v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    :cond_b
    goto/32 :goto_152

    nop

    nop

    nop

    :goto_53
    invoke-static {v8, v9, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_image_rotation_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_357

    nop

    nop

    nop

    nop

    nop

    :goto_55
    if-nez v7, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_466

    nop

    nop

    :cond_c
    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v8, "SHASTA_ENABLE"

    nop

    nop

    nop

    goto/32 :goto_3ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_471

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const-string v7, "SHASTA_ENABLE and SHASTA_FORCE"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_59
    const-string v8, "shasta"

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v6, v7, v8}, Lcom/google/googlex/gcam/ShotParams;-><init>(J)V

    goto/32 :goto_3a1

    nop

    nop

    nop

    :goto_5b
    if-nez v3, :cond_d

    nop

    goto/32 :goto_3f5

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_476

    nop

    nop

    :goto_5c
    const/4 v1, 0x0

    nop

    goto/32 :goto_293

    nop

    nop

    :goto_5d
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5e
    if-gez v9, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_5f
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v8, v0, Lila;->Y:Lnne;

    nop

    goto/32 :goto_41b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v5, v1, v12}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2db

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v7}, Lmkn;->c()J

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v8, 0x6

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_65
    iget-object v2, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3cf

    nop

    nop

    nop

    :goto_66
    iget-object v9, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_383

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v1, v8}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v3, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-direct {v0, v1, v5}, Lila;->6d3821fac0840ee9e72137504d3d1e1em(Lmmw;Lioy;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v2, Lhmu;->aR:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_42b

    nop

    nop

    nop

    :goto_6c
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    :goto_6d
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v9, v10}, Lhoh;->p(Lhmn;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_motion_ef_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v8, Lhmu;->bi:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto :goto_7c

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_425

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_75
    new-instance v8, Lijv;

    nop

    goto/32 :goto_1b5

    nop

    nop

    :goto_76
    goto/16 :goto_36f

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_78
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_79
    invoke-static {v2, v3, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_bento_use_separable_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_20d

    nop

    nop

    nop

    :goto_7a
    sget-object v2, Lcom/a;->camera_bento_zsl_disable:Lhmn;

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    :goto_7b
    const/4 v9, 0x1

    nop

    :goto_7c
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    cmpg-float v1, v2, v1

    nop

    nop

    goto/32 :goto_380

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz v7, :cond_f

    nop

    goto/32 :goto_24f

    nop

    :cond_f
    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v7, v8}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_80
    const/16 v9, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_335

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v7, :cond_10

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    :cond_10
    goto/32 :goto_260

    nop

    nop

    :goto_82
    sget-object v8, Landroid/hardware/camera2/CaptureResult;->SENSOR_GREEN_SPLIT:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_41f

    nop

    nop

    nop

    :goto_83
    iget-object v1, v0, Lila;->aa:Llyv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v2, v7}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->j(Lpro;Ljava/lang/String;)Lpro;

    move-result-object v7

    nop

    goto/32 :goto_358

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v6, v0, Lila;->e:Lpdf;

    nop

    goto/32 :goto_419

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-string v7, "SPATIAL_RGB"

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_87
    if-eqz v9, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    sget-object v9, Lils;->b:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-wide v14, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    :goto_8b
    const-string v8, "c2hhc3RhX2tleQ=="

    nop

    nop

    nop

    nop

    goto/32 :goto_32a

    nop

    nop

    :goto_8c
    check-cast v5, Ljrz;

    nop

    nop

    goto/32 :goto_47e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    throw v2

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_8f
    iget-object v8, v0, Lila;->R:Limf;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    new-instance v9, Lijv;

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    :goto_92
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_white_balance_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_3ae

    nop

    nop

    nop

    nop

    :goto_93
    if-ne v15, v2, :cond_12

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_257

    nop

    nop

    :goto_94
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_370

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    new-instance v8, Lijv;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_96
    cmpl-double v1, v4, v8

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    :goto_97
    const/4 v1, 0x1

    nop

    :goto_98
    goto/32 :goto_487

    nop

    nop

    :goto_99
    invoke-virtual {v9, v11}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-boolean v7, v15, Limj;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_9b
    iget-boolean v3, v0, Lila;->V:Z

    nop

    nop

    goto/32 :goto_395

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    :goto_9d
    sget-object v8, Lhmu;->ac:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_39a

    nop

    nop

    nop

    :goto_9e
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_364

    nop

    nop

    :goto_9f
    if-ne v13, v8, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d8

    nop

    :cond_13
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v2, v0, Lila;->D:Loyd;

    nop

    nop

    goto/32 :goto_47d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v8}, Limf;->k()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_354

    nop

    nop

    nop

    nop

    :goto_a2
    if-ne v13, v8, :cond_14

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_180

    nop

    nop

    nop

    :goto_a3
    cmpl-double v4, v4, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    :goto_a4
    iget v7, v7, Lsxz;->f:I

    nop

    nop

    goto/32 :goto_2c3

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v8, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    sget-object v8, Lsyi;->k:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_a8
    sget-object v9, Lsxy;->b:Lsxy;

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_aa
    if-eqz v9, :cond_15

    nop

    goto/32 :goto_20a

    nop

    nop

    :cond_15
    goto/32 :goto_1ff

    nop

    nop

    :goto_ab
    if-gez v7, :cond_16

    nop

    goto/32 :goto_3c9

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_3b0

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-eqz v8, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_268

    nop

    :cond_17
    goto/32 :goto_41e

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42d

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_rerun_face_detection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_9c

    nop

    nop

    :goto_af
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_optimize_sky_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    goto/32 :goto_44b

    nop

    nop

    nop

    :goto_b2
    invoke-static {v2, v3, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_force_pecan_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const-string v8, "SHASTA_ENABLE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42a

    nop

    nop

    :goto_b5
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    :goto_b6
    if-gez v7, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_b7
    const-string v14, "bWVyZ2Vfa2V5"

    nop

    goto/32 :goto_3c3

    nop

    nop

    nop

    nop

    :goto_b8
    check-cast v10, Lmkn;

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_b9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_2c8

    nop

    nop

    nop

    :goto_bb
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v4

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_bd
    if-eqz v8, :cond_19

    nop

    goto/32 :goto_2f4

    nop

    nop

    :cond_19
    goto/32 :goto_167

    nop

    nop

    :goto_be
    const-string v7, "SPATIAL_RGB"

    nop

    nop

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez v1, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_3ad

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_2ce

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    if-nez v9, :cond_1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    :cond_1b
    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez p18, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_421

    nop

    nop

    :cond_1c
    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_c2
    sget-object v4, Lhmu;->R:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_c3
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v9}, Lcom/google/googlex/gcam/StaticMetadata;->f()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v15

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :goto_c5
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_392

    nop

    nop

    :goto_c6
    const/4 v1, 0x1

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c8
    sget-object v5, Lnne;->k:Lnne;

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    :goto_c9
    const-string v7, "SHASTA_FORCE"

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_ca
    if-ne v3, v2, :cond_1d

    nop

    goto/32 :goto_8e

    nop

    :cond_1d
    goto/32 :goto_199

    nop

    nop

    nop

    :goto_cb
    cmp-long v8, v3, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v7, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_1e1

    nop

    nop

    :goto_cd
    invoke-virtual {v1, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_ce
    move/from16 v9, p5

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_cf
    const-string v7, "MERGE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ee

    nop

    nop

    :goto_d0
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v3, v15, Limj;->e:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    iget-wide v11, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ec

    nop

    nop

    nop

    nop

    :goto_d4
    xor-int/lit8 v7, v7, 0x1

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_408

    nop

    :goto_d6
    goto/32 :goto_3d5

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v1}, Limf;->h()Z

    move-result v1

    nop

    nop

    goto/32 :goto_3de

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    sget-object v8, Lsxi;->b:Lsxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_da
    move/from16 v1, p9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_481

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    sget v7, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_dc
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_393

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    goto/32 :goto_43b

    nop

    nop

    nop

    nop

    :goto_de
    sget-object v8, Lils;->e:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    nop

    nop

    :goto_df
    sget-object v1, Lsyi;->b:Lsyi;

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    :goto_e1
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_382

    nop

    nop

    :goto_e2
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_base_frame_reuse_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_176

    nop

    nop

    :goto_e3
    if-eqz v9, :cond_1e

    nop

    nop

    goto/32 :goto_408

    nop

    nop

    :cond_1e
    goto/32 :goto_2a0

    nop

    nop

    nop

    nop

    :goto_e4
    if-lt v4, v11, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_397

    nop

    nop

    :cond_1f
    goto/32 :goto_168

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    sget-object v9, Lhmu;->ak:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_3c6

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    new-instance v9, Lgbt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_457

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    invoke-interface {v8}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v8

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

    :goto_e8
    iget-object v7, v15, Limi;->a:Lsxz;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_e9
    sget-object v4, Lsxm;->c:Lsxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    :goto_ea
    if-nez v15, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    :cond_20
    goto/32 :goto_468

    nop

    nop

    :goto_eb
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_3dd

    nop

    nop

    nop

    nop

    :goto_ec
    if-gez v8, :cond_21

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_ed
    invoke-static {v1, v2, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_almond_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_3a0

    nop

    nop

    :goto_ee
    sget-object v2, Lcom/a;->camera_bento_annotate_final_image:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c4

    nop

    nop

    nop

    :goto_ef
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_418

    nop

    nop

    nop

    :goto_f0
    invoke-direct {v8, v6, v10}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_441

    nop

    nop

    :goto_f1
    iget-object v7, v0, Lila;->r:Lpnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_444

    nop

    nop

    nop

    :goto_f2
    if-nez v18, :cond_22

    nop

    nop

    goto/32 :goto_406

    nop

    :cond_22
    goto/32 :goto_147

    nop

    nop

    :goto_f3
    goto/16 :goto_3cd

    nop

    :goto_f4
    goto/32 :goto_3cc

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/ShotParams;->j(Lsyl;)V

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_f7
    invoke-virtual {v9}, Lrss;->h()Z

    move-result v10

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    :goto_f8
    if-eqz v7, :cond_23

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_172

    nop

    nop

    nop

    :goto_f9
    sget-object v3, Lhmu;->ba:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_46b

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    iget-wide v4, v1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    invoke-static {v14, v15, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :goto_fc
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    sget-object v7, Lhmu;->w:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_cyclops_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    sget-object v7, Lsxw;->b:Lsxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_27f

    nop

    nop

    nop

    :goto_100
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_101
    check-cast v9, Ljava/lang/Integer;

    nop

    goto/32 :goto_414

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_103
    if-ne v13, v7, :cond_24

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    nop

    :goto_104
    invoke-virtual {v1, v4}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3d7

    nop

    nop

    nop

    nop

    :goto_105
    if-eq v1, v8, :cond_25

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_31c

    nop

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_466

    nop

    :goto_107
    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_108
    invoke-direct/range {p0 .. p0}, Lila;->eea145e9133b6dc4d05865ac9c46590fm()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    const-string v7, "MERGE"

    nop

    nop

    nop

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_10c
    sget-object v7, Lsyi;->d:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_10d
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_361

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_249

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_248

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual {v10}, Lmkn;->d()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_488

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    sget-object v5, Lsxi;->c:Lsxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    nop

    :goto_112
    invoke-interface {v1, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_10b

    nop

    nop

    :goto_113
    if-nez v1, :cond_26

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :cond_26
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_425

    nop

    nop

    nop

    nop

    :goto_115
    goto/32 :goto_366

    nop

    nop

    nop

    nop

    nop

    :goto_116
    invoke-virtual {v7, v10}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    nop

    :goto_118
    throw v1

    nop

    nop

    nop

    nop

    :goto_119
    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    new-instance v8, Likw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    :goto_11b
    if-eqz v8, :cond_27

    nop

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    :goto_11c
    if-eq v13, v7, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_38d

    nop

    nop

    nop

    nop

    :goto_11d
    iget-object v9, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_345

    nop

    nop

    :goto_11e
    sget-object v8, Lhmu;->ac:Lhmn;

    nop

    nop

    goto/32 :goto_2e4

    nop

    nop

    nop

    :goto_11f
    move/from16 v8, p16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-virtual {v1, v8}, Lcom/google/googlex/gcam/ArkInfo;->e(Lsxi;)V

    goto/32 :goto_3e4

    nop

    nop

    :goto_121
    iget-wide v3, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_122
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_359

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    iget-object v7, v0, Lila;->e:Lpdf;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_125
    iget-object v1, v0, Lila;->R:Limf;

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_126
    invoke-virtual {v9, v14}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_127
    invoke-direct/range {p0 .. p0}, Lila;->eea145e9133b6dc4d05865ac9c46590fm()Z

    move-result v7

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

    :goto_128
    invoke-static {v8}, Lpby;->j(Lpck;)Lpby;

    move-result-object v8

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v1, v8}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

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

    :goto_12a
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_12b
    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    if-nez v7, :cond_29

    nop

    nop

    goto/32 :goto_466

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_3df

    nop

    nop

    nop

    :goto_12d
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_12e
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->h(Lsyg;)V

    goto/32 :goto_106

    nop

    nop

    :goto_12f
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_130
    goto/16 :goto_36f

    nop

    nop

    nop

    :catchall_0
    :cond_2a
    :goto_131
    goto/32 :goto_2b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    float-to-double v4, v1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    invoke-virtual {v7}, Lmkn;->c()J

    move-result-wide v10

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_134
    if-nez v1, :cond_2b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_410

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_3a6

    nop

    nop

    nop

    nop

    :goto_135
    iget-object v8, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_41c

    nop

    nop

    :goto_136
    invoke-direct {v4, v6, v8}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26c

    nop

    nop

    nop

    nop

    nop

    :goto_137
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->h(Lsyg;)V

    goto/32 :goto_165

    nop

    nop

    :goto_139
    check-cast v9, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d4

    nop

    nop

    :goto_13a
    sget-object v16, Lsxz;->c:Lsxz;

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_13b
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ac

    nop

    nop

    :goto_13c
    invoke-virtual {v4}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    sget-object v9, Lhmu;->c:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    :goto_13f
    if-nez v7, :cond_2c

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    :cond_2c
    goto/32 :goto_443

    nop

    nop

    :goto_140
    move v1, v9

    nop

    nop

    nop

    nop

    nop

    .local v9, "v9":I
    .local v1, "v1":I
    :goto_141
    :try_start_1
    iget-object v9, v0, Lila;->r:Lpnu;

    nop

    nop

    sget-object v13, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v9, v13}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    iget-object v13, v0, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v13}, Lils;->ordinal()I

    move-result v13

    nop

    nop

    nop

    nop

    invoke-static {v9, v13}, Lcom/a;->ze(II)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v9}, Lcom/google/googlex/gcam/ShotParams;->g(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    goto/32 :goto_190

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_143
    move-object/from16 p6, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_384

    nop

    nop

    :goto_144
    check-cast v9, Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_145
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_39d

    nop

    nop

    nop

    nop

    :goto_146
    sget v7, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_147
    iget-object v3, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_148
    goto/16 :goto_46e

    nop

    nop

    :goto_149
    goto/32 :goto_46d

    nop

    nop

    :goto_14a
    sget-object v7, Lsyi;->e:Lsyi;

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_14b
    goto/16 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    goto/32 :goto_31b

    nop

    nop

    :goto_14d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_313

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    const/4 v8, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    :goto_14f
    iget-boolean v2, v15, Limj;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43e

    nop

    nop

    nop

    nop

    :goto_150
    move-object v14, v7

    nop

    nop

    goto/32 :goto_356

    nop

    nop

    :goto_151
    invoke-virtual {v3}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_367

    nop

    nop

    nop

    :goto_152
    iget-object v1, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    const-string v8, "nightSight"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    nop

    :goto_154
    if-nez v8, :cond_2d

    nop

    goto/32 :goto_37a

    nop

    nop

    :cond_2d
    goto/32 :goto_390

    nop

    nop

    nop

    nop

    nop

    :goto_155
    invoke-static {v8, v9, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :goto_156
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_157
    if-eqz v8, :cond_2e

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_3bb

    nop

    nop

    nop

    :goto_158
    if-lt v5, v11, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_33a

    nop

    nop

    :cond_2f
    goto/32 :goto_275

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_159
    const-string v8, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    nop

    goto/32 :goto_42e

    nop

    nop

    nop

    :goto_15a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    goto/16 :goto_462

    nop

    nop

    :goto_15d
    goto/32 :goto_3d6

    nop

    nop

    nop

    :goto_15e
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_15f
    move/from16 v9, p7

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

    :goto_160
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_2fc

    nop

    nop

    nop

    :goto_161
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_40d

    nop

    nop

    nop

    nop

    nop

    :goto_162
    goto/16 :goto_373

    nop

    nop

    nop

    nop

    :goto_163
    goto/32 :goto_372

    nop

    nop

    nop

    :goto_164
    if-eqz v4, :cond_30

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :cond_30
    goto/32 :goto_10

    nop

    nop

    :goto_165
    goto/16 :goto_466

    nop

    nop

    nop

    nop

    :goto_166
    goto/32 :goto_360

    nop

    nop

    nop

    nop

    nop

    :goto_167
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->i(Z)V

    goto/32 :goto_b4

    nop

    nop

    :goto_168
    if-gez v4, :cond_31

    nop

    goto/32 :goto_397

    nop

    :cond_31
    goto/32 :goto_218

    nop

    nop

    :goto_169
    iput-boolean v3, v15, Limj;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3fe

    nop

    nop

    nop

    nop

    :goto_16a
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    nop

    :goto_16b
    move/from16 v9, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39f

    nop

    nop

    nop

    nop

    :goto_16c
    sget-object v8, Lhmu;->N:Lhmn;

    nop

    nop

    goto/32 :goto_486

    nop

    nop

    :goto_16d
    if-gez v1, :cond_32

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :cond_32
    goto/32 :goto_3f1

    nop

    nop

    nop

    :goto_16e
    sget-object v9, Lpby;->b:Lpby;

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_16f
    sget-object v8, Lhmu;->bt:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    nop

    nop

    :goto_170
    if-nez v2, :cond_33

    nop

    nop

    nop

    goto/32 :goto_406

    nop

    nop

    :cond_33
    goto/32 :goto_405

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_171
    invoke-virtual {v14}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    nop

    :goto_172
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_173
    move/from16 v3, p1

    nop

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    :goto_174
    if-eqz v2, :cond_34

    nop

    nop

    nop

    goto/32 :goto_34f

    nop

    nop

    :cond_34
    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    sget-object v9, Lsxl;->c:Lsxl;

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_176
    invoke-static/range {p2 .. p2}, Lsgj;->y(I)Lsxp;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_427

    nop

    nop

    nop

    :goto_177
    const-string v9, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_178
    invoke-virtual {v6, v9}, Lcom/google/googlex/gcam/ShotParams;->f(Lsxy;)V

    goto/32 :goto_2ef

    nop

    nop

    nop

    :goto_179
    goto/16 :goto_47b

    nop

    nop

    :goto_17a
    goto/32 :goto_374

    nop

    nop

    nop

    nop

    :goto_17b
    filled-new-array {v2, v7, v11, v12, v10}, [I

    move-result-object v17

    nop

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    nop

    nop

    :goto_17c
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_2cd

    nop

    nop

    nop

    :goto_17d
    if-nez v7, :cond_35

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_35
    goto/32 :goto_ff

    nop

    nop

    :goto_17e
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    :goto_17f
    cmp-long v7, v10, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_315

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_180
    sget-object v8, Lsyi;->o:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    :goto_181
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_455

    nop

    nop

    nop

    nop

    nop

    :goto_182
    cmpl-float v8, v14, v8

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_183
    iget-object v7, v7, Lpnx;->a:Ljava/lang/String;

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_184
    invoke-virtual {v4, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_2dc

    nop

    nop

    nop

    nop

    nop

    :goto_185
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_450

    nop

    nop

    nop

    nop

    :goto_186
    if-nez v9, :cond_36

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_1e4

    nop

    nop

    nop

    nop

    :goto_187
    invoke-static {v3, v4, v6, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_metering_frame_night_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_343

    nop

    nop

    nop

    nop

    nop

    :goto_188
    if-nez v7, :cond_37

    nop

    nop

    goto/32 :goto_466

    nop

    nop

    :cond_37
    goto/32 :goto_368

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    invoke-virtual {v9}, Lcom/google/googlex/gcam/StaticMetadata;->d()Lsxc;

    move-result-object v3

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    if-eqz v7, :cond_38

    nop

    nop

    nop

    goto/32 :goto_466

    nop

    :cond_38
    goto/32 :goto_1d8

    nop

    nop

    :goto_18b
    check-cast v7, Lmkn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    :goto_18c
    if-nez v1, :cond_39

    nop

    goto/32 :goto_224

    nop

    nop

    :cond_39
    goto/32 :goto_35c

    nop

    nop

    nop

    nop

    :goto_18d
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fb

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-static/range {v8 .. v13}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_ae_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/AeShotParams;)V

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_18f
    sget-object v11, Lhmu;->b:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_190
    iget-object v9, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    :goto_191
    if-nez v1, :cond_3a

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_2f1

    nop

    nop

    nop

    :goto_192
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_focus_mode_get(JLcom/google/googlex/gcam/ArkInfo;)I

    move-result v4

    nop

    goto/32 :goto_2ff

    nop

    nop

    :goto_193
    if-nez v8, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    :cond_3b
    :goto_194
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_195
    invoke-virtual {v1, v8}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    nop

    nop

    :goto_196
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_gpu_power_boost_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_197
    if-ne v13, v7, :cond_3c

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_477

    nop

    nop

    :goto_198
    if-nez v1, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_432

    nop

    :cond_3d
    goto/32 :goto_232

    nop

    nop

    nop

    nop

    :goto_199
    add-int/lit8 v15, v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    iget-object v8, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    :goto_19b
    const-string v7, "SHASTA_FACTOR_GREEN_SPLIT"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-static {v7, v10, v14}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_33d

    nop

    nop

    :goto_19d
    sget-object v3, Lhmu;->bf:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35b

    nop

    nop

    nop

    :goto_19e
    move v2, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    if-eq v13, v1, :cond_3e

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :cond_3e
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    invoke-virtual {v8, v9}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a1
    cmp-long v7, v10, v8

    nop

    goto/32 :goto_221

    nop

    nop

    :goto_1a2
    if-nez v9, :cond_3f

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    const-string v7, "MERGE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_1a4
    if-nez v3, :cond_40

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_1a5
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3c8

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    :goto_1a7
    invoke-direct {v8, v6, v4}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_475

    nop

    nop

    nop

    nop

    :goto_1a8
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_469

    nop

    nop

    :goto_1a9
    check-cast v7, Lmkn;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    if-nez v8, :cond_41

    nop

    nop

    nop

    goto/32 :goto_2c6

    nop

    nop

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_3d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ab
    const-string v9, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_389

    nop

    nop

    nop

    :goto_1ac
    const/high16 v8, 0x40100000    # 2.25f

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_1ad
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    const/4 v7, 0x0

    nop

    goto/32 :goto_24e

    nop

    nop

    nop

    :goto_1af
    goto/16 :goto_252

    nop

    :goto_1b0
    goto/32 :goto_251

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    iget-object v0, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    :goto_1b2
    const-string v8, "OFF"

    nop

    goto/32 :goto_449

    nop

    nop

    nop

    :goto_1b3
    goto/16 :goto_44

    nop

    nop

    :goto_1b4
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    invoke-direct {v8, v1, v11}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    iget-object v4, v0, Lila;->Y:Lnne;

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    :goto_1b7
    iget-object v2, v15, Limj;->e:Lhoh;

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_1b8
    const-string v10, "flash"

    nop

    nop

    nop

    goto/32 :goto_3c4

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    sget-object v8, Lnne;->s:Lnne;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    move-wide/from16 p1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bb
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    :goto_1bc
    iget-object v7, v0, Lila;->o:Lils;

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    const-string v10, "Invalid scaler crop region: %s"

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_1be
    const/4 v11, 0x3

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :goto_1bf
    const/4 v2, 0x0

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_1c0
    invoke-direct {v0, v10, v5}, Lila;->6d3821fac0840ee9e72137504d3d1e1em(Lmmw;Lioy;)Z

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_41d

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    invoke-virtual {v3, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_1c2
    invoke-virtual {v1, v8}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    :goto_1c3
    if-nez v1, :cond_42

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_1c4
    if-eqz v2, :cond_43

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    :cond_43
    goto/32 :goto_21a

    nop

    nop

    :goto_1c5
    invoke-virtual {v1, v2}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_1c6
    invoke-static {v11, v12, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_flash_mode_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_3f3

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    sget-object v5, Lnne;->b:Lnne;

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    :goto_1c8
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f8

    nop

    nop

    nop

    :goto_1c9
    iget-object v15, v0, Lila;->X:Limj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_464

    nop

    nop

    :goto_1ca
    const/4 v7, 0x1

    nop

    :goto_1cb
    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    :goto_1cc
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->SetKolaEnabled(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_1cd
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    nop

    :goto_1ce
    invoke-virtual {v1, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_1cf
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_45f

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    sget-object v3, Lhmu;->aZ:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_353

    nop

    nop

    nop

    :goto_1d1
    sget-object v2, Lcom/a;->camera_bento_force_apply:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    :goto_1d2
    iget v7, v7, Lsxp;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1d3
    if-eqz v4, :cond_44

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    :cond_44
    goto/32 :goto_43c

    nop

    nop

    nop

    nop

    :goto_1d4
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_1d5
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    iget-object v8, v1, Lijl;->j:Lhoh;

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    if-ne v13, v10, :cond_45

    nop

    nop

    goto/32 :goto_3ea

    nop

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_36d

    nop

    nop

    nop

    nop

    :goto_1d8
    sget v7, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_1d9
    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_ArkInfo__SWIG_0()J

    move-result-wide v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e3

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v9}, Lmhz;->r()Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_3ce

    nop

    nop

    :goto_1db
    const-string v7, "SHASTA_FORCE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dd
    if-nez v1, :cond_46

    nop

    goto/32 :goto_432

    nop

    nop

    nop

    nop

    nop

    :cond_46
    goto/32 :goto_363

    nop

    nop

    nop

    nop

    :goto_1de
    invoke-virtual {v1, v8}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    const/4 v1, 0x0

    nop

    :goto_1e0
    goto/32 :goto_365

    nop

    nop

    nop

    :goto_1e1
    iget-object v7, v0, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_2f9

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    invoke-virtual {v9}, Lcom/google/googlex/gcam/StaticMetadata;->f()Lcom/google/googlex/gcam/PixelRect;

    move-result-object v16

    nop

    goto/32 :goto_263

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    cmpl-float v1, v2, v1

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    iget-object v9, v0, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ab

    nop

    nop

    nop

    :goto_1e5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_385

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    invoke-virtual {v15}, Lcom/google/googlex/gcam/PixelRect;->f()I

    move-result v15

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    const-string v7, "bWVyZ2Vfa2V5"

    nop

    nop

    goto/32 :goto_323

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    invoke-virtual {v6, v9}, Lcom/google/googlex/gcam/ShotParams;->f(Lsxy;)V

    :goto_1ea
    goto/32 :goto_3f2

    nop

    nop

    :goto_1eb
    const/4 v12, 0x4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    const/16 v10, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_1ed
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_3eb

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-virtual {v7, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_3a4

    nop

    nop

    :goto_1ef
    move/from16 v13, p4

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    :goto_1f0
    invoke-virtual {v1, v8}, Lcom/google/googlex/gcam/ArkInfo;->f(Lsxm;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f1
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    nop

    :goto_1f2
    goto/16 :goto_425

    nop

    :goto_1f3
    goto/32 :goto_424

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f4
    move-object/from16 v9, p12

    nop

    nop

    goto/32 :goto_45d

    nop

    nop

    nop

    nop

    nop

    :goto_1f5
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_387

    nop

    nop

    nop

    :goto_1f6
    if-ne v9, v7, :cond_47

    nop

    nop

    goto/32 :goto_34d

    nop

    :cond_47
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_1f7
    invoke-virtual {v9, v11}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v9

    nop

    nop

    goto/32 :goto_349

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    invoke-virtual {v1, v4}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    :goto_1f9
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1fa
    goto/32 :goto_3e9

    nop

    nop

    nop

    nop

    :goto_1fb
    if-gtz v8, :cond_48

    nop

    nop

    goto/32 :goto_40e

    nop

    :cond_48
    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    const/4 v1, 0x0

    nop

    nop

    :goto_1fd
    goto/32 :goto_337

    nop

    nop

    nop

    nop

    :goto_1fe
    move/from16 v18, p5

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    const v9, 0x3f99999a    # 1.2f

    nop

    nop

    goto/32 :goto_45a

    nop

    nop

    :goto_200
    sget-object v16, Lsxz;->e:Lsxz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_201
    sget-object v9, Lhmu;->Z:Lhmn;

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_202
    if-eq v4, v5, :cond_49

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :cond_49
    :goto_203
    goto/32 :goto_269

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_204
    move-wide/from16 p4, v8

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_205
    if-ne v9, v10, :cond_4a

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    :cond_4a
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_206
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_207
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_208
    mul-int v15, v15, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a8

    nop

    nop

    nop

    nop

    :goto_209
    goto/16 :goto_31a

    nop

    nop

    :goto_20a
    goto/32 :goto_319

    nop

    nop

    nop

    :goto_20b
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_20c
    check-cast v8, Ljrz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_3b7

    nop

    nop

    :goto_20e
    move-object v13, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_20f
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    invoke-direct {v4, v6, v8}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_211
    iget-object v8, v8, Ljrz;->e:Lj$/util/Optional;

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_212
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_213
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    :goto_214
    if-eq v1, v12, :cond_4b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_410

    nop

    nop

    :cond_4b
    goto/32 :goto_399

    nop

    nop

    nop

    nop

    :goto_215
    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/AeShotParams;->i(Z)V

    goto/32 :goto_22a

    nop

    nop

    :goto_216
    sget-object v7, Lsyi;->n:Lsyi;

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_217
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    nop

    :goto_218
    aget-object v5, v5, v4

    nop

    goto/32 :goto_3e8

    nop

    nop

    :goto_219
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_434

    nop

    nop

    :goto_21a
    iget-boolean v2, v15, Limj;->c:Z

    nop

    goto/32 :goto_436

    nop

    nop

    :goto_21b
    sget-object v7, Lsyi;->j:Lsyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    :goto_21c
    if-nez v8, :cond_4c

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    :cond_4c
    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_21d
    if-eqz v3, :cond_4d

    nop

    nop

    goto/32 :goto_119

    nop

    :cond_4d
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_21e
    goto/16 :goto_294

    nop

    nop

    :goto_21f
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_220
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    :goto_221
    if-gtz v7, :cond_4e

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    :cond_4e
    goto/32 :goto_312

    nop

    nop

    nop

    nop

    nop

    :goto_222
    iget-object v2, v15, Limj;->e:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_223
    invoke-static {v1, v2, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_apply_sgm_spatially_varying_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    :goto_224
    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_225
    sget-object v9, Lsxy;->c:Lsxy;

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_226
    goto/16 :goto_25b

    nop

    nop

    :goto_227
    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_228
    invoke-virtual {v7, v8}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_229
    if-ne v5, v4, :cond_4f

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :cond_4f
    goto/32 :goto_2d4

    nop

    nop

    nop

    :goto_22a
    iget-object v9, v0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    :goto_22b
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_22c
    iput-boolean v7, v15, Limj;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_22d
    if-nez v1, :cond_50

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    :cond_50
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    invoke-virtual {v1, v8}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_22f
    sget-object v8, Lhmu;->aa:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_230
    sget-object v8, Lhml;->i:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    :goto_231
    move-object/from16 v7, p20

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_232
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    :goto_233
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_234
    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_235
    if-nez v7, :cond_51

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

    :cond_51
    goto/32 :goto_391

    nop

    nop

    nop

    :goto_236
    check-cast v7, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3aa

    nop

    nop

    nop

    nop

    :goto_237
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_348

    nop

    nop

    nop

    nop

    nop

    :goto_238
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->e(Lsxw;)V

    :goto_239
    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_23b
    invoke-virtual {v1, v4}, Lcom/google/googlex/gcam/ArkInfo;->e(Lsxi;)V

    :goto_23c
    goto/32 :goto_437

    nop

    nop

    nop

    :goto_23d
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->b()Lcom/google/googlex/gcam/ArkInfo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    const/high16 v7, 0x41100000    # 9.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_411

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23f
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_267

    nop

    nop

    nop

    nop

    nop

    :goto_240
    if-nez v7, :cond_52

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :cond_52
    :goto_241
    goto/32 :goto_33c

    nop

    nop

    nop

    nop

    nop

    :goto_242
    div-float/2addr v14, v7

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    :goto_243
    sget-object v5, Lsxi;->d:Lsxi;

    nop

    goto/32 :goto_45e

    nop

    nop

    nop

    nop

    :goto_244
    iget v3, v3, Lsxc;->k:I

    nop

    nop

    goto/32 :goto_404

    nop

    nop

    nop

    :goto_245
    const/16 v16, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_246
    if-nez v10, :cond_53

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :cond_53
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_247
    sget-object v16, Lsxz;->b:Lsxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_248
    const/4 v1, 0x0

    nop

    :goto_249
    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24a
    const/4 v1, 0x0

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_259

    nop

    nop

    nop

    nop

    :goto_24c
    sget-object v16, Lsxz;->b:Lsxz;

    nop

    nop

    nop

    goto/32 :goto_25a

    nop

    nop

    nop

    :goto_24d
    if-nez v8, :cond_54

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    :cond_54
    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    :goto_24e
    goto/16 :goto_3b5

    nop

    nop

    nop

    :goto_24f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_250
    invoke-virtual {v7}, Lmkn;->d()J

    move-result-wide v10

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_251
    const/4 v8, 0x1

    nop

    nop

    nop

    :goto_252
    goto/32 :goto_3f9

    nop

    nop

    nop

    :goto_253
    goto/16 :goto_141

    nop

    nop

    :goto_254
    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_255
    if-nez v1, :cond_55

    nop

    nop

    nop

    goto/32 :goto_48c

    nop

    nop

    :cond_55
    goto/32 :goto_48b

    nop

    nop

    nop

    nop

    nop

    :goto_256
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_440

    nop

    nop

    nop

    :goto_257
    if-ne v15, v11, :cond_56

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

    :cond_56
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_258
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_259
    invoke-static {v1, v2, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_bento_annotate_final_image_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_12f

    nop

    nop

    :goto_25a
    goto/16 :goto_283

    nop

    nop

    nop

    :goto_25b
    goto/32 :goto_2cc

    nop

    nop

    nop

    :goto_25c
    iget-object v8, v0, Lila;->W:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d9

    nop

    nop

    nop

    :goto_25d
    invoke-static {v9}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_44e

    nop

    nop

    nop

    :goto_25e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    invoke-static {v1, v2, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_extra_finish_vignetting_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_16a

    nop

    nop

    :goto_260
    sget-object v7, Lsxw;->a:Lsxw;

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_261
    sget-object v16, Lsxz;->c:Lsxz;

    nop

    nop

    goto/32 :goto_34e

    nop

    nop

    nop

    nop

    :goto_262
    invoke-virtual {v3}, Lcom/google/googlex/gcam/AeShotParams;->a()Lswz;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_263
    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/gcam/PixelRect;->e()I

    move-result v16

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    :goto_264
    iget-object v9, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_265
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_266
    sget-object v7, Lswz;->d:Lswz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    :goto_267
    goto/16 :goto_2a3

    nop

    nop

    :goto_268
    goto/32 :goto_2a2

    nop

    nop

    :goto_269
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    :goto_26a
    invoke-virtual {v8, v9}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v8

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    :goto_26b
    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    :goto_26c
    invoke-virtual {v1, v4}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_26d
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26e
    iget v8, v8, Lpck;->b:I

    nop

    nop

    goto/32 :goto_2c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26f
    sget-object v2, Lils;->e:Lils;

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    nop

    nop

    :goto_270
    if-nez v1, :cond_57

    nop

    nop

    goto/32 :goto_432

    nop

    :cond_57
    goto/32 :goto_333

    nop

    nop

    nop

    nop

    nop

    :goto_271
    iget-object v8, v0, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_272
    goto :goto_268

    nop

    nop

    :goto_273
    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    nop

    :goto_274
    move v9, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    :goto_275
    aget-object v8, v8, v5

    nop

    nop

    goto/32 :goto_3e6

    nop

    nop

    :goto_276
    if-nez p10, :cond_58

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    :cond_58
    goto/32 :goto_328

    nop

    nop

    :goto_277
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_278
    goto :goto_283

    nop

    :goto_279
    goto/32 :goto_3c7

    nop

    nop

    :goto_27a
    goto/16 :goto_462

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    goto/32 :goto_461

    nop

    nop

    nop

    nop

    :goto_27c
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_39c

    nop

    nop

    nop

    :goto_27d
    invoke-virtual {v1, v8}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27e
    const-string v10, "profile"

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

    :goto_27f
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->e(Lsxw;)V

    goto/32 :goto_3f4

    nop

    nop

    :goto_280
    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_47c

    nop

    nop

    :goto_281
    if-nez v7, :cond_59

    nop

    nop

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    :cond_59
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_282
    goto :goto_287

    nop

    nop

    nop

    nop

    :goto_283
    goto/32 :goto_2d3

    nop

    nop

    nop

    :goto_284
    invoke-static {v14, v15, v6, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_up_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    :goto_285
    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_286
    goto/16 :goto_25b

    nop

    :goto_287
    goto/32 :goto_429

    nop

    nop

    nop

    nop

    :goto_288
    const-string v8, "psaf"

    nop

    goto/32 :goto_3d3

    nop

    nop

    :goto_289
    new-instance v4, Lijv;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_28a
    if-nez v2, :cond_5a

    nop

    nop

    goto/32 :goto_283

    nop

    :cond_5a
    goto/32 :goto_261

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_28c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_433

    nop

    nop

    nop

    :goto_28d
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_415

    nop

    nop

    :goto_28e
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    :goto_28f
    if-nez v14, :cond_5b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    :cond_5b
    goto/32 :goto_296

    nop

    nop

    nop

    nop

    nop

    :goto_290
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_291
    new-instance v8, Lijv;

    nop

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_292
    add-int/lit8 v13, v9, -0x1

    nop

    goto/32 :goto_38a

    nop

    nop

    nop

    :goto_293
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_294
    goto/32 :goto_140

    nop

    nop

    nop

    nop

    :goto_295
    invoke-virtual {v9, v7}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_296
    iget-wide v14, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_297
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    nop

    nop

    nop

    nop

    goto/32 :goto_43f

    nop

    nop

    :goto_298
    const-wide/16 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_299
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_39b

    nop

    nop

    nop

    :goto_29a
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

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

    :goto_29b
    if-nez v8, :cond_5c

    nop

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    nop

    nop

    :cond_5c
    goto/32 :goto_310

    nop

    nop

    :goto_29c
    iget-object v1, v1, Lijl;->j:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_38b

    nop

    nop

    :goto_29d
    invoke-direct {v9, v1, v5, v4, v10}, Lgbt;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_29e
    invoke-virtual/range {p3 .. p3}, Lkvu;->ordinal()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_3fd

    nop

    nop

    nop

    nop

    :goto_29f
    invoke-direct {v8, v6, v10}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1ee

    nop

    nop

    :goto_2a0
    if-nez v1, :cond_5d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :cond_5d
    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_2a1
    if-ne v4, v5, :cond_5e

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    nop

    nop

    :cond_5e
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a2
    const/4 v7, 0x1

    nop

    nop

    nop

    :goto_2a3
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    :goto_2a4
    move-object/from16 v3, v16

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

    :goto_2a5
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_41a

    nop

    nop

    :goto_2a6
    invoke-virtual {v8}, Lj$/util/Optional;->isPresent()Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a7
    invoke-virtual {v1, v8}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_2a8
    new-instance v8, Lijv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_303

    nop

    nop

    nop

    nop

    :goto_2a9
    if-nez v7, :cond_5f

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :cond_5f
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    move-object/from16 p3, v6

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_2ab
    if-eqz v7, :cond_60

    nop

    nop

    nop

    goto/32 :goto_466

    nop

    :cond_60
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ac
    const-string v7, "MERGE, SABRE and SPATIAL_RGB"

    nop

    nop

    nop

    goto/32 :goto_35d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ad
    iget-object v9, v0, Lila;->U:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_2ae
    move-object/from16 v5, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_2af
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_2b0
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_324

    nop

    nop

    nop

    :goto_2b1
    sget-object v8, Llyr;->aP:Llze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_2b2
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    :goto_2b3
    if-nez v9, :cond_61

    nop

    nop

    nop

    nop

    goto/32 :goto_447

    nop

    nop

    nop

    :cond_61
    goto/32 :goto_3ef

    nop

    nop

    nop

    :goto_2b4
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_zsl_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_37b

    nop

    nop

    nop

    nop

    :goto_2b5
    sget-object v7, Lsyg;->c:Lsyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_465

    nop

    nop

    nop

    :goto_2b6
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_2b7
    invoke-static {v14, v15, v6, v10, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shutter_press_down_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_2b8
    const/4 v15, 0x0

    nop

    nop

    goto/32 :goto_378

    nop

    nop

    nop

    nop

    :goto_2b9
    if-ne v13, v7, :cond_62

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_62
    goto/32 :goto_216

    nop

    nop

    nop

    nop

    :goto_2ba
    if-lez v0, :cond_63

    nop

    goto/32 :goto_453

    nop

    nop

    :cond_63
    goto/32 :goto_452

    nop

    :goto_2bb
    sget v7, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    :goto_2bc
    sget-object v5, Lsxi;->e:Lsxi;

    nop

    nop

    goto/32 :goto_3b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bd
    invoke-interface {v8, v9}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_271

    nop

    nop

    :goto_2be
    invoke-virtual {v9, v8}, Lpby;->m(Lpby;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    :goto_2bf
    invoke-static {v8, v9, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_hazelnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_451

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c0
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_316

    nop

    nop

    nop

    nop

    nop

    :goto_2c1
    invoke-virtual {v9, v8}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    :goto_2c2
    goto/32 :goto_3e7

    nop

    nop

    nop

    nop

    :goto_2c3
    invoke-static {v2, v3, v6, v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_pecan_model_type_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2c4
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    :goto_2c5
    goto/16 :goto_3d2

    nop

    nop

    nop

    nop

    nop

    :goto_2c6
    goto/32 :goto_3d1

    nop

    nop

    nop

    :goto_2c7
    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    :goto_2c8
    goto/32 :goto_453

    nop

    nop

    nop

    nop

    nop

    :goto_2c9
    aget v3, v17, v3

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ca
    sget-object v4, Lhmu;->S:Lhmn;

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2cb
    const-string v7, "SABRE"

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_2cc
    new-instance v15, Limi;

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

    :goto_2cd
    if-ltz v9, :cond_64

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35f

    nop

    nop

    :cond_64
    goto/32 :goto_45b

    nop

    nop

    :goto_2ce
    iget-object v1, v0, Lila;->R:Limf;

    nop

    nop

    goto/32 :goto_386

    nop

    nop

    nop

    :goto_2cf
    sget-object v8, Lhmu;->bo:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_2d0
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_layla_active_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    :goto_2d1
    iget-boolean v9, v0, Lila;->V:Z

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    nop

    nop

    :goto_2d2
    if-nez v10, :cond_65

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    nop

    :cond_65
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2d3
    move-object/from16 v3, v16

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    :goto_2d4
    iget-wide v4, v1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_2d5
    if-eq v3, v7, :cond_66

    nop

    nop

    goto/32 :goto_417

    nop

    nop

    nop

    :cond_66
    goto/32 :goto_416

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d6
    sget-object v8, Lsxm;->d:[Lsxm;

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_2d7
    if-eq v13, v8, :cond_67

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37a

    nop

    nop

    nop

    nop

    nop

    :cond_67
    :goto_2d8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2d9
    if-eq v7, v14, :cond_68

    nop

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    :cond_68
    goto/32 :goto_31e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2da
    sget-object v8, Lhmu;->al:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2db
    invoke-virtual {v4, v5}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2dc
    iget-object v4, v5, Ljrz;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2dd
    goto/16 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_2de
    goto/32 :goto_1cd

    nop

    nop

    :goto_2df
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_downsample1to2x_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_f1

    nop

    nop

    :goto_2e0
    const-string v7, "c2hhc3RhX2tleQ=="

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_2e1
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_walnut_enabled_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_362

    nop

    nop

    nop

    nop

    nop

    :goto_2e2
    sget-object v2, Lsxz;->a:Lsxz;

    nop

    nop

    goto/32 :goto_442

    nop

    nop

    nop

    nop

    :goto_2e3
    const/4 v9, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_401

    nop

    nop

    nop

    nop

    :goto_2e4
    invoke-virtual {v7, v8}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v7

    nop

    goto/32 :goto_291

    nop

    nop

    nop

    nop

    :goto_2e5
    if-eqz p11, :cond_69

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_69
    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    nop

    :goto_2e6
    goto/16 :goto_34f

    nop

    :goto_2e7
    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e8
    goto/16 :goto_44a

    nop

    :goto_2e9
    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_2ea
    const-string v11, "wbSource"

    nop

    nop

    goto/32 :goto_36c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2eb
    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_3fc

    nop

    nop

    nop

    nop

    nop

    :goto_2ec
    invoke-interface {v7, v8, v13}, Lpnu;->n(Landroid/hardware/camera2/CameraCharacteristics$Key;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    :goto_2ed
    if-eqz v7, :cond_6a

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_6a
    goto/32 :goto_3e2

    nop

    nop

    nop

    nop

    :goto_2ee
    if-ne v4, v5, :cond_6b

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :cond_6b
    goto/32 :goto_43d

    nop

    nop

    :goto_2ef
    goto/16 :goto_1ea

    nop

    nop

    :goto_2f0
    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f1
    iget-object v7, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_2f2
    mul-int/2addr v7, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    nop

    :goto_2f3
    goto/16 :goto_400

    nop

    nop

    :goto_2f4
    goto/32 :goto_32b

    nop

    nop

    :goto_2f5
    const-string v4, "createAeShotParams"

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    :goto_2f6
    iget-object v8, v8, Ljrz;->d:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_352

    nop

    nop

    nop

    nop

    :goto_2f7
    if-eq v8, v4, :cond_6c

    nop

    nop

    goto/32 :goto_397

    nop

    nop

    nop

    :cond_6c
    goto/32 :goto_396

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f8
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_36e

    nop

    nop

    :goto_2f9
    sget-object v8, Lils;->a:Lils;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_2fa
    sget-object v10, Lhmu;->X:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_2fb
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_3b3

    nop

    nop

    :goto_2fc
    const/4 v1, 0x0

    nop

    goto/32 :goto_472

    nop

    nop

    nop

    nop

    :goto_2fd
    const-string v9, "Y29tcHJlc3NfZG5nX2tleQ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3cb

    nop

    nop

    nop

    nop

    :goto_2fe
    if-nez v7, :cond_6d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_466

    nop

    :cond_6d
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    sget-object v5, Lsxm;->d:[Lsxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_300
    sget-object v9, Lkvu;->a:Lkvu;

    nop

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    :goto_301
    if-nez v8, :cond_6e

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    :cond_6e
    goto/32 :goto_29c

    nop

    nop

    :goto_302
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_303
    const/16 v9, 0x8

    nop

    goto/32 :goto_3b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_304
    const-string v9, "portraitRelighting"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    :goto_305
    move-object v10, v6

    nop

    nop

    goto/32 :goto_37e

    nop

    nop

    nop

    nop

    :goto_306
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    nop

    nop

    :goto_307
    invoke-virtual {v8}, Lj$/util/Optional;->isPresent()Z

    move-result v8

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_308
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3bf

    nop

    nop

    nop

    :goto_309
    move-object/from16 v14, p13

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    :goto_30a
    invoke-virtual {v9, v11}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_30b
    invoke-interface {v7, v14}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    :goto_30c
    invoke-virtual {v8, v9}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_30d
    invoke-virtual {v9, v13}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_369

    nop

    nop

    :goto_30e
    const-string v8, "setup"

    nop

    nop

    goto/32 :goto_320

    nop

    nop

    nop

    :goto_30f
    const/4 v9, 0x1

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    :goto_310
    goto/16 :goto_1b0

    nop

    nop

    nop

    nop

    :goto_311
    goto/32 :goto_2b6

    nop

    nop

    nop

    nop

    :goto_312
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_313
    sget-object v0, Lcom/google/android/apps/camera/logging/PTc/RjdpW;->uGhkCK:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_33f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_314
    if-nez v2, :cond_6f

    nop

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    :cond_6f
    goto/32 :goto_456

    nop

    nop

    nop

    nop

    :goto_315
    if-gtz v7, :cond_70

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    :cond_70
    goto/32 :goto_48a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_316
    sget-object v8, Lhmu;->Y:Lhmn;

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_317
    if-nez v7, :cond_71

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_71
    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    nop

    :goto_318
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_frame_count_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_22b

    nop

    nop

    nop

    :goto_319
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_31a
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31b
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    :goto_31c
    sget-object v1, Lhlw;->a:Lhmo;

    nop

    :goto_31d
    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_31e
    invoke-virtual/range {p8 .. p8}, Lrss;->h()Z

    move-result v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_31f
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_37d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_320
    invoke-interface {v7, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    :goto_321
    sget-object v10, Lmmw;->d:Lmmw;

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    :goto_322
    invoke-direct {v0, v3, v1}, Lila;->58bdc013cbfa0784191428aca07544ffm(FZ)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v3

    nop

    goto/32 :goto_332

    nop

    nop

    nop

    nop

    nop

    :goto_323
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    goto/32 :goto_2ab

    nop

    nop

    :goto_324
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_325
    invoke-interface {v7, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_3bc

    nop

    nop

    :goto_326
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_compress_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_3f0

    nop

    nop

    nop

    nop

    :goto_327
    move-object/from16 v0, p0

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_328
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_460

    nop

    nop

    nop

    nop

    :goto_329
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32a
    invoke-static {v8}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_32b
    const-string v7, "c2hhc3RhX2tleQ=="

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_32c
    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f2

    nop

    nop

    nop

    nop

    :goto_32d
    iget-object v4, v5, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_42c

    nop

    nop

    nop

    :goto_32e
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_32f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_330
    iget-object v9, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_331
    sget-object v8, Lhni;->E:Lhmn;

    nop

    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_332
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

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

    :goto_333
    iget-object v1, v0, Lila;->Q:Liou;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_334
    if-nez v1, :cond_72

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :cond_72
    goto/32 :goto_355

    nop

    nop

    nop

    :goto_335
    invoke-direct {v8, v6, v9}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_431

    nop

    nop

    nop

    nop

    :goto_336
    const/4 v9, 0x0

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_337
    iget-object v8, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_338
    invoke-virtual {v1, v4}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_39e

    nop

    nop

    :goto_339
    goto/16 :goto_42

    nop

    :goto_33a
    goto/32 :goto_3da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33b
    sget-object v10, Lhmu;->ah:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_33c
    const-string v9, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_33d
    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    :goto_33e
    const v0, 0x8

    nop

    goto/32 :goto_375

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_340
    invoke-virtual {v9, v14}, Lhoh;->p(Lhmn;)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_341
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    :goto_342
    iget-object v8, v0, Lila;->s:Lpck;

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_343
    iget-object v3, v0, Lila;->e:Lpdf;

    nop

    goto/32 :goto_2f5

    nop

    nop

    nop

    nop

    nop

    :goto_344
    const-string v7, "bWVyZ2Vfa2V5"

    nop

    goto/32 :goto_458

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_345
    sget-object v7, Lcom/a;->camera_disable_merge_fix:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_346
    if-eq v3, v7, :cond_73

    nop

    nop

    goto/32 :goto_46a

    nop

    :cond_73
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_347
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_348
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_349
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    goto/32 :goto_30a

    nop

    nop

    nop

    nop

    :goto_34a
    const/4 v8, 0x0

    nop

    nop

    :goto_34b
    goto/32 :goto_264

    nop

    nop

    nop

    :goto_34c
    goto/16 :goto_36f

    nop

    nop

    nop

    nop

    nop

    :goto_34d
    goto/32 :goto_435

    nop

    nop

    :goto_34e
    goto/16 :goto_283

    nop

    :goto_34f
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_350
    sget-object v7, Lils;->c:Lils;

    nop

    nop

    nop

    nop

    goto/32 :goto_346

    nop

    nop

    :goto_351
    add-int/lit8 v9, v9, -0x2

    nop

    goto/32 :goto_1a2

    nop

    nop

    :goto_352
    invoke-virtual {v8}, Lj$/util/Optional;->isPresent()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop

    :goto_353
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_354
    if-nez v8, :cond_74

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a3

    nop

    nop

    nop

    nop

    nop

    :cond_74
    goto/32 :goto_3af

    nop

    nop

    nop

    nop

    nop

    :goto_355
    iget-object v1, v0, Lila;->ab:Lhoh;

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

    :goto_356
    check-cast v14, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_357
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_43a

    nop

    nop

    :goto_358
    sget-object v14, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    :goto_359
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_35a
    const-string v8, "finalize"

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_35b
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    nop

    nop

    :goto_35c
    iget-wide v1, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_25f

    nop

    nop

    nop

    nop

    :goto_35d
    const-string v8, "the values correspond to your Pixel smartphone model"

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_35e
    goto/16 :goto_44a

    nop

    nop

    nop

    nop

    nop

    :goto_35f
    goto/32 :goto_145

    nop

    nop

    nop

    :goto_360
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_33b

    nop

    nop

    nop

    nop

    nop

    :goto_361
    sget-object v8, Lhmu;->c:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_362
    iget-object v1, v0, Lila;->Y:Lnne;

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_363
    sget-object v1, Lmmw;->c:Lmmw;

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_364
    const/4 v7, 0x2

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_365
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_366
    sget-object v16, Lsxz;->d:Lsxz;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_367
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_368
    sget-object v7, Lsyg;->b:Lsyg;

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_369
    invoke-virtual {v9}, Lcom/google/googlex/gcam/StaticMetadata;->g()Lsyi;

    move-result-object v13

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_36a
    sget v14, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    :goto_36b
    invoke-interface {v2, v3}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_36c
    invoke-interface {v9, v11}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_330

    nop

    nop

    nop

    nop

    :goto_36d
    if-ne v13, v11, :cond_75

    nop

    goto/32 :goto_40a

    nop

    nop

    nop

    nop

    nop

    :cond_75
    goto/32 :goto_409

    nop

    nop

    :goto_36e
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_36f
    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_370
    sget-object v8, Lhmu;->P:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    :goto_371
    filled-new-array {v7, v10, v11, v12}, [I

    move-result-object v13

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

    :goto_372
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_373
    goto/32 :goto_423

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_374
    sget-object v8, Lsyl;->a:Lsyl;

    nop

    nop

    nop

    goto/32 :goto_47a

    nop

    nop

    nop

    nop

    nop

    :goto_375
    const v1, 0x7

    nop

    goto/32 :goto_388

    nop

    nop

    nop

    :goto_376
    invoke-virtual {v7, v10}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    :goto_377
    invoke-virtual {v4, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_37f

    nop

    nop

    nop

    nop

    nop

    :goto_378
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    nop

    nop

    :goto_379
    goto/16 :goto_207

    nop

    nop

    :goto_37a
    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    :goto_37b
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    :goto_37c
    iget-object v8, v0, Lila;->W:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_37d
    invoke-static {v1, v2, v6, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_apply_sgm_in_raw_to_yuv_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_6d

    nop

    nop

    :goto_37e
    move-object v4, v13

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    :goto_37f
    iget-object v4, v5, Ljrz;->d:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_380
    if-ltz v1, :cond_76

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    :cond_76
    goto/32 :goto_479

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_381
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_382
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_2cb

    nop

    nop

    nop

    :goto_383
    sget-object v14, Lhmu;->aj:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_340

    nop

    nop

    nop

    nop

    nop

    :goto_384
    invoke-static/range {p1 .. p6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_ark_info_set(JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/ArkInfo;)V

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    nop

    :goto_385
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_spatial_rgb_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_386
    invoke-virtual {v1}, Limf;->f()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3ca

    nop

    nop

    nop

    nop

    :goto_387
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_device_is_on_tripod_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_276

    nop

    nop

    :goto_388
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :goto_389
    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38a
    if-nez v13, :cond_77

    nop

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    :cond_77
    goto/32 :goto_454

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38b
    sget-object v8, Lhmu;->c:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_38c
    invoke-interface {v9, v8}, Llld;->e(Z)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_38d
    const-string v7, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    :goto_38e
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    :goto_38f
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_390
    sget-object v8, Lsyi;->l:Lsyi;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_391
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    nop

    :goto_392
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_430

    nop

    nop

    nop

    nop

    :goto_393
    sget-object v8, Lhmu;->bh:Lhmn;

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    :goto_394
    iget-object v7, v0, Lila;->o:Lils;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_395
    iput-boolean v3, v15, Limj;->d:Z

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_396
    goto/16 :goto_3be

    nop

    nop

    nop

    nop

    nop

    :goto_397
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_398
    int-to-float v7, v7

    nop

    nop

    nop

    goto/32 :goto_242

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_399
    iget v1, v5, Lioy;->c:I

    nop

    goto/32 :goto_3e1

    nop

    nop

    :goto_39a
    invoke-virtual {v7, v8}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_3fa

    nop

    nop

    nop

    :goto_39b
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    :goto_39c
    invoke-virtual {v6, v9}, Lcom/google/googlex/gcam/ShotParams;->i(Z)V

    goto/32 :goto_341

    nop

    nop

    nop

    nop

    :goto_39d
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_484

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39e
    new-instance v4, Lijv;

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    :goto_39f
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_save_merged_dng_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_467

    nop

    nop

    :goto_3a0
    iget-object v1, v0, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    :goto_3a1
    iget-object v7, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a2
    goto/16 :goto_34b

    nop

    :goto_3a3
    goto/32 :goto_34a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a4
    goto/16 :goto_44f

    nop

    nop

    nop

    nop

    nop

    :goto_3a5
    goto/32 :goto_231

    nop

    nop

    nop

    nop

    :goto_3a6
    invoke-virtual/range {p17 .. p17}, Lioy;->a()I

    move-result v1

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    :goto_3a7
    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2e0

    nop

    nop

    nop

    nop

    :goto_3a8
    iget-object v7, v0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    goto/32 :goto_309

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a9
    check-cast v7, Lmkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_3aa
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    :goto_3ab
    sget-object v14, Lils;->b:Lils;

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ac
    goto/16 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_3ad
    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    :goto_3ae
    float-to-double v4, v4

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    nop

    nop

    nop

    :goto_3af
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a2

    nop

    nop

    nop

    nop

    nop

    :goto_3b0
    const/4 v7, 0x1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b1
    iget-object v1, v0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_35a

    nop

    nop

    nop

    :goto_3b2
    if-ne v4, v5, :cond_78

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :cond_78
    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_3b3
    invoke-static {v1, v2, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_bento_force_apply_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_347

    nop

    nop

    :goto_3b4
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    nop

    nop

    :goto_3b5
    goto/32 :goto_8b

    nop

    nop

    :goto_3b6
    invoke-interface {v7}, Lpnu;->j()Lpnx;

    move-result-object v7

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_3b7
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b8
    invoke-direct {v8, v6, v9}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    :goto_3b9
    if-nez v4, :cond_79

    nop

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    :cond_79
    goto/32 :goto_485

    nop

    nop

    nop

    nop

    nop

    :goto_3ba
    invoke-virtual {v4, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_489

    nop

    nop

    nop

    nop

    :goto_3bb
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_3bc
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3bd
    move-object v5, v8

    nop

    nop

    nop

    :goto_3be
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3bf
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_force_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    :goto_3c0
    if-nez v1, :cond_7a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :cond_7a
    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_3c1
    if-eq v1, v7, :cond_7b

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    :cond_7b
    goto/32 :goto_44d

    nop

    nop

    nop

    :goto_3c2
    iget-wide v2, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3c3
    invoke-static {v14}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_482

    nop

    nop

    nop

    nop

    nop

    :goto_3c4
    invoke-interface {v9, v10}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_300

    nop

    nop

    nop

    :goto_3c5
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_446

    nop

    nop

    nop

    :goto_3c6
    invoke-virtual {v7, v9}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c7
    iget-object v2, v15, Limj;->e:Lhoh;

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :goto_3c8
    goto/16 :goto_400

    nop

    nop

    nop

    :goto_3c9
    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    nop

    :goto_3ca
    if-nez v1, :cond_7c

    nop

    goto/32 :goto_3ad

    nop

    nop

    nop

    nop

    :cond_7c
    goto/32 :goto_13b

    nop

    nop

    nop

    :goto_3cb
    invoke-static {v9}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v9

    nop

    goto/32 :goto_326

    nop

    nop

    :goto_3cc
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3cd
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ce
    if-nez v9, :cond_7d

    nop

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    nop

    :cond_7d
    goto/32 :goto_225

    nop

    nop

    nop

    :goto_3cf
    const-string v3, "sabre"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36b

    nop

    nop

    :goto_3d0
    sget-object v8, Lila;->b:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d1
    sget-object v8, Lila;->c:Lpck;

    nop

    nop

    nop

    :goto_3d2
    goto/32 :goto_44c

    nop

    nop

    :goto_3d3
    invoke-interface {v1, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_3d4
    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v9

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    :goto_3d5
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_407

    nop

    nop

    nop

    nop

    nop

    :goto_3d6
    sget-object v9, Lsxl;->b:Lsxl;

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    :goto_3d7
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d8
    invoke-virtual {v1, v8}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_3d9
    invoke-interface {v8}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    :goto_3da
    const-class v0, Lsxm;

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3db
    invoke-virtual {v7, v2, v14}, Ltbt;->h(Lpro;Lpnx;)Lpnu;

    move-result-object v7

    nop

    goto/32 :goto_3b6

    nop

    nop

    nop

    nop

    nop

    :goto_3dc
    invoke-static {v9}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3dd
    const-string v7, "SPATIAL_RGB"

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3de
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    :goto_3df
    sget-object v7, Lsyg;->d:Lsyg;

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_3e0
    const-string v7, "SABRE"

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e1
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c1

    nop

    nop

    nop

    nop

    :goto_3e2
    sget v7, Lcom/a;->aa:I

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_3e3
    invoke-direct {v1, v8, v9, v7}, Lcom/google/googlex/gcam/ArkInfo;-><init>(JZ)V

    goto/32 :goto_403

    nop

    nop

    nop

    :goto_3e4
    iget-object v8, v5, Ljrz;->e:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :goto_3e5
    const/4 v14, 0x1

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    nop

    :goto_3e6
    iget v9, v8, Lsxm;->e:I

    nop

    nop

    nop

    goto/32 :goto_480

    nop

    nop

    nop

    nop

    nop

    :goto_3e7
    const/4 v8, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_3e8
    iget v8, v5, Lsxm;->e:I

    nop

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    :goto_3e9
    goto/16 :goto_294

    nop

    nop

    :goto_3ea
    goto/32 :goto_2af

    nop

    nop

    :goto_3eb
    return-object v6

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    :goto_3ec
    iget v9, v9, Lsxl;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_3ed
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_3a7

    nop

    nop

    nop

    nop

    nop

    :goto_3ee
    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_3ef
    if-nez v1, :cond_7e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_402

    nop

    :cond_7e
    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    :goto_3f0
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_3f1
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_3f2
    iget-object v9, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f3
    iget-object v9, v0, Lila;->o:Lils;

    nop

    nop

    goto/32 :goto_46f

    nop

    nop

    nop

    nop

    nop

    :goto_3f4
    goto/16 :goto_239

    nop

    nop

    nop

    :goto_3f5
    goto/32 :goto_344

    nop

    nop

    nop

    :goto_3f6
    sget-object v16, Lsxz;->d:Lsxz;

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    :goto_3f7
    invoke-virtual {v7, v8}, Lils;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_483

    nop

    nop

    nop

    nop

    nop

    :goto_3f8
    sget-object v10, Lhmu;->ae:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_376

    nop

    nop

    nop

    nop

    :goto_3f9
    if-eqz v1, :cond_7f

    nop

    goto/32 :goto_194

    nop

    :cond_7f
    goto/32 :goto_193

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3fa
    new-instance v8, Lijv;

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_3fb
    sget-object v8, Lhmu;->ab:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b4

    nop

    nop

    nop

    :goto_3fc
    new-instance v6, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_3fd
    const/4 v10, 0x2

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3fe
    iget-object v3, v0, Lila;->o:Lils;

    nop

    nop

    nop

    goto/32 :goto_350

    nop

    nop

    :goto_3ff
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_400
    goto/32 :goto_191

    nop

    nop

    nop

    :goto_401
    goto/16 :goto_1fa

    nop

    :goto_402
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_403
    iget-object v5, v0, Lila;->W:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    :goto_404
    invoke-static {v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->IsQuadBayer(I)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_405
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_406
    goto/32 :goto_40c

    nop

    nop

    nop

    nop

    nop

    :goto_407
    goto/16 :goto_c7

    nop

    nop

    nop

    nop

    :goto_408
    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_409
    goto/16 :goto_141

    nop

    nop

    nop

    nop

    :goto_40a
    goto/32 :goto_2d1

    nop

    nop

    :goto_40b
    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_438

    nop

    nop

    nop

    nop

    :goto_40c
    iget-wide v2, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_40d
    invoke-static {v8, v9, v6, v3, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_metering_frame_timestamp_ns_set(JLcom/google/googlex/gcam/ShotParams;J)V

    :goto_40e
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    :goto_40f
    goto/16 :goto_1e0

    nop

    :goto_410
    goto/32 :goto_1ca

    nop

    nop

    :goto_411
    cmpl-float v7, v14, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_412
    invoke-direct {v15, v2, v3}, Limi;-><init>(Lsxz;Z)V

    :goto_413
    goto/32 :goto_3c2

    nop

    nop

    nop

    :goto_414
    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_415
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_35e

    nop

    nop

    :goto_416
    goto/16 :goto_32f

    nop

    nop

    nop

    nop

    nop

    :goto_417
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_418
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_419
    const-string v7, "new"

    nop

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    nop

    :goto_41a
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_41b
    sget-object v9, Lnne;->l:Lnne;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_41c
    sget-object v9, Lhmu;->bp:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40b

    nop

    nop

    nop

    :goto_41d
    int-to-float v14, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_398

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41e
    if-nez v3, :cond_80

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    nop

    :cond_80
    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41f
    invoke-interface {v7, v8}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    :goto_420
    goto/16 :goto_413

    nop

    nop

    nop

    :goto_421
    goto/32 :goto_2e2

    nop

    nop

    nop

    nop

    nop

    :goto_422
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2f3

    nop

    nop

    nop

    nop

    :goto_423
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_424
    sget-object v16, Lsxz;->e:Lsxz;

    nop

    nop

    nop

    :goto_425
    goto/32 :goto_2a4

    nop

    nop

    :goto_426
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_brightness_factor_get(JLcom/google/googlex/gcam/ArkInfo;)F

    move-result v4

    nop

    goto/32 :goto_445

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_427
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_428
    sget v1, Lcom/a;->aa:I

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    :goto_429
    iget-object v2, v15, Limj;->e:Lhoh;

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_42a
    invoke-static {v7}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_42b
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c0

    nop

    nop

    :goto_42c
    invoke-virtual {v4}, Lj$/util/Optional;->isPresent()Z

    move-result v4

    nop

    nop

    goto/32 :goto_3b9

    nop

    nop

    nop

    nop

    nop

    :goto_42d
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_nonzsl_extended_base_frame_selection_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_42e
    invoke-static {v8}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v8

    nop

    goto/32 :goto_47f

    nop

    nop

    nop

    :goto_42f
    iget v10, v8, Lpck;->a:I

    nop

    goto/32 :goto_470

    nop

    nop

    nop

    nop

    :goto_430
    if-ne v7, v8, :cond_81

    nop

    nop

    nop

    nop

    goto/32 :goto_3a5

    nop

    nop

    nop

    :cond_81
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_431
    invoke-virtual {v1, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :goto_432
    goto/32 :goto_3b1

    nop

    nop

    nop

    nop

    nop

    :goto_433
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_434
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_478

    nop

    nop

    :goto_435
    const/4 v9, 0x1

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

    nop

    :goto_436
    if-eqz v2, :cond_82

    nop

    nop

    goto/32 :goto_279

    nop

    :cond_82
    goto/32 :goto_3f6

    nop

    nop

    :goto_437
    iget-object v4, v5, Ljrz;->f:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_459

    nop

    nop

    :goto_438
    if-nez v8, :cond_83

    nop

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    :cond_83
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_439
    new-instance v5, Lijv;

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_43a
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_allow_sabre_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_3e0

    nop

    nop

    nop

    nop

    :goto_43b
    if-nez v8, :cond_84

    nop

    nop

    nop

    nop

    goto/32 :goto_3a3

    nop

    nop

    nop

    :cond_84
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43c
    iget-wide v4, v1, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_426

    nop

    nop

    nop

    nop

    :goto_43d
    invoke-virtual {v1}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v4

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    :goto_43e
    if-nez v2, :cond_85

    nop

    nop

    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    :cond_85
    goto/32 :goto_2e6

    nop

    nop

    nop

    :goto_43f
    cmpl-double v4, v4, v8

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :goto_440
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_merge_method_override_set(JLcom/google/googlex/gcam/ShotParams;I)V

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_441
    invoke-virtual {v7, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_1f1

    nop

    nop

    :goto_442
    new-instance v15, Limi;

    nop

    goto/32 :goto_448

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_443
    if-eqz v8, :cond_86

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    :cond_86
    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    :goto_444
    sget-object v8, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_TIMESTAMP_SOURCE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_445
    float-to-double v4, v4

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_446
    goto/16 :goto_1fa

    nop

    :goto_447
    goto/32 :goto_274

    nop

    nop

    :goto_448
    const/4 v3, 0x0

    nop

    goto/32 :goto_412

    nop

    nop

    nop

    :goto_449
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44a
    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44b
    if-eqz v7, :cond_87

    nop

    nop

    nop

    goto/32 :goto_466

    nop

    :cond_87
    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    :goto_44c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v9

    nop

    goto/32 :goto_42f

    nop

    nop

    nop

    :goto_44d
    move v1, v7

    nop

    goto/32 :goto_40f

    nop

    nop

    nop

    :goto_44e
    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44f
    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    nop

    :goto_450
    move/from16 v9, p19

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    :goto_451
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_452
    goto/32 :goto_ba

    nop

    :goto_453
    goto/32 :goto_327

    nop

    nop

    nop

    :goto_454
    if-ne v13, v7, :cond_88

    nop

    goto/32 :goto_12b

    nop

    :cond_88
    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_455
    invoke-direct {v8, v1, v9}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_456
    iget-boolean v2, v15, Limj;->d:Z

    nop

    goto/32 :goto_1c4

    nop

    nop

    :goto_457
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    :goto_458
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_46c

    nop

    nop

    nop

    nop

    :goto_459
    new-instance v8, Lijv;

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_45a
    cmpl-float v9, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_45b
    iget-object v7, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_474

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45c
    invoke-virtual {v1, v8}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_45d
    invoke-direct {v8, v0, v1, v9}, Likw;-><init>(Lila;Lcom/google/googlex/gcam/ArkInfo;Lpro;)V

    goto/32 :goto_377

    nop

    nop

    nop

    nop

    :goto_45e
    if-ne v4, v5, :cond_89

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :cond_89
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_45f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    :goto_460
    invoke-static {v7, v8, v6, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_downsample_by_2_before_merge_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_342

    nop

    nop

    nop

    :goto_461
    sget-object v9, Lsxl;->a:Lsxl;

    nop

    nop

    nop

    nop

    :goto_462
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_463
    invoke-static {v7}, Lcom/a;->ac_mb(Ljava/lang/Object;)I

    move-result v7

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_464
    if-eqz v1, :cond_8a

    nop

    nop

    goto/32 :goto_32f

    nop

    nop

    :cond_8a
    goto/32 :goto_262

    nop

    nop

    nop

    nop

    nop

    :goto_465
    invoke-virtual {v6, v7}, Lcom/google/googlex/gcam/ShotParams;->h(Lsyg;)V

    :goto_466
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_467
    iget-wide v7, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e5

    nop

    nop

    nop

    nop

    :goto_468
    if-ne v15, v2, :cond_8b

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :cond_8b
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_469
    goto/16 :goto_234

    nop

    nop

    nop

    nop

    :goto_46a
    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46b
    invoke-virtual {v2, v3}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_314

    nop

    nop

    nop

    :goto_46c
    if-eqz v7, :cond_8c

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :cond_8c
    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_46e
    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    :goto_46f
    sget-object v11, Lils;->c:Lils;

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_470
    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_471
    const-string v3, "No enum "

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    :goto_472
    invoke-static {v8, v9, v6, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_cyclops_use_psl_for_base_frame_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_473
    sget-object v2, Lhmu;->aO:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_381

    nop

    nop

    nop

    nop

    :goto_474
    sget-object v8, Lhmu;->al:Lhmn;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_475
    invoke-virtual {v1, v8}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_476
    const-string v7, "bWVyZ2Vfa2V5"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_463

    nop

    nop

    nop

    nop

    :goto_477
    const-string v7, "bWVyZ2Vfa2V5"

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_478
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_479
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    goto/32 :goto_473

    nop

    nop

    :goto_47a
    invoke-virtual {v6, v8}, Lcom/google/googlex/gcam/ShotParams;->j(Lsyl;)V

    :goto_47b
    goto/32 :goto_306

    nop

    nop

    nop

    nop

    nop

    :goto_47c
    const/4 v7, 0x4

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    :goto_47d
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_277

    nop

    nop

    :goto_47e
    sget-object v8, Lsxm;->b:Lsxm;

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_47f
    if-eqz v8, :cond_8d

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    :cond_8d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_480
    if-eq v9, v4, :cond_8e

    nop

    nop

    goto/32 :goto_2de

    nop

    :cond_8e
    goto/32 :goto_3bd

    nop

    nop

    nop

    nop

    nop

    :goto_481
    move-object/from16 v2, p12

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_482
    if-eqz v14, :cond_8f

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :cond_8f
    goto/32 :goto_36a

    nop

    nop

    nop

    nop

    :goto_483
    if-nez v7, :cond_90

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_90
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_484
    const-string v7, "MERGE"

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_485
    sget-object v4, Lsxi;->e:Lsxi;

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    :goto_486
    invoke-virtual {v1, v8}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_487
    iget-wide v8, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    :goto_488
    iget-wide v14, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    :goto_489
    iget-object v4, v5, Ljrz;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_439

    nop

    nop

    nop

    nop

    nop

    :goto_48a
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3a9

    nop

    nop

    nop

    nop

    nop

    :goto_48b
    goto/16 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_48c
    goto/32 :goto_21d

    nop

    nop
.end method

.method private final eea145e9133b6dc4d05865ac9c46590fm()Z
    .locals 1

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq p0, v0, :cond_1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_6
    iget-object p0, p0, Lila;->r:Lpnu;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    invoke-virtual {v0}, Lijo;->n()Z

    move-result v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, v0, Lijl;->e:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lila;->B:Lijo;

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

    :goto_e
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lila;->l:Lijl;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0, v0}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A(Lpnx;Lpro;Lprw;Lprw;Lpnx;Lpro;Lprw;)Z
    .locals 30

    goto/32 :goto_21

    nop

    nop

    :goto_0
    move-object/from16 v3, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v8, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v4, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    :goto_3
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v10, v6, Liky;->a:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v7, "metadata"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_7
    if-nez v5, :cond_2

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

    :cond_2
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7e

    nop

    nop

    :goto_a
    new-instance v7, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_d
    new-instance v4, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_e
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v2, v0, Lila;->l:Lijl;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v11, v5

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move-object v5, v9

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    :goto_14
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v22, v9

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_87

    nop

    nop

    :goto_17
    invoke-interface {v6, v7}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v3}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    new-instance v3, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    iget-object v7, v0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v4}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_70

    nop

    nop

    :goto_1c
    if-nez v7, :cond_3

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2b

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2a

    nop

    nop

    :goto_1f
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_79

    nop

    nop

    :goto_20
    invoke-virtual {v7, v9}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v7

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_21
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    const-string v7, "LiveTemporalBinning"

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

    :goto_23
    invoke-interface/range {p2 .. p2}, Lpro;->e()J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_7d

    nop

    nop

    :goto_25
    sget-object v6, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    cmpl-float v6, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {v2}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v23

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual/range {p0 .. p1}, Lila;->a(Lpnx;)I

    move-result v14

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

    :goto_29
    move-object/from16 v2, p3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v27, v9

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v5, v6, Liky;->a:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v2, v6, Liky;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2e
    new-instance v4, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v4}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    :goto_30
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v3, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_32
    const-wide/16 v10, 0x0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0xc

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v2}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_24

    nop

    nop

    :goto_37
    iget-object v6, v0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3a
    sget-object v9, Lhmu;->o:Lhmo;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v5, v0, Lila;->k:Ltbq;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_3e
    move-object/from16 v8, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3f
    invoke-direct {v10, v5, v7, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, -0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v4, p6

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_42
    const v7, 0x4c3ebc20    # 5.0E7f

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

    :goto_43
    new-instance v6, Liky;

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v10, Lihf;

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, v6, Liky;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v8, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_49
    move-object/from16 v10, p5

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    new-instance v8, Lihf;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2, v7}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4c
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v7}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/16 v28, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v5, :cond_5

    nop

    goto/32 :goto_39

    nop

    :cond_5
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v1, v0, Lila;->q:Ltbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_52
    invoke-direct {v8, v2, v7, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v10, v3, v7, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_7b

    nop

    nop

    :goto_54
    invoke-static {v10}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v15

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v8}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_56
    check-cast v11, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_57
    rem-long/2addr v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_58
    long-to-float v6, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_59
    move-object/from16 v5, p7

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v1, p2

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v7, v0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v6, v1, v4}, Liky;-><init>(Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/FrameMetadata;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v7, v2, Lijl;->j:Lhoh;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    cmp-long v8, v8, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_5f
    iget-object v3, v0, Lila;->q:Ltbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_60
    move-object/from16 v27, v10

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-wide/16 v10, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, v2}, Ltbs;->b(Lprw;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v3, v5}, Ltbs;->b(Lprw;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_64
    sget-object v6, Lijg;->a:Lsya;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v4, v0, Lila;->q:Ltbs;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_66
    new-instance v10, Lihf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_67
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v0, v1, v6}, Lila;->7852ab18ac4bc461fee1a84b3ceac02dm(Lpro;Lrss;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v7, v4, v6, v9, v10}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v4

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

    :goto_6b
    iget-object v1, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_7
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_71
    goto/32 :goto_65

    nop

    nop

    :goto_72
    goto/16 :goto_4d

    nop

    :goto_73
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_74
    move-object v6, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v2, v2, Lijl;->j:Lhoh;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v4, v7}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_78
    invoke-virtual/range {v11 .. v29}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeTemporallyBinViewfinderFrame(JIJJLjava/lang/Runnable;JLjava/lang/Runnable;JJLjava/lang/Runnable;ZI)Z

    move-result v2

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_79
    return v2

    nop

    :goto_7a
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v22, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_7c
    const/16 v7, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_7d
    iget-object v0, v0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_7e
    move/from16 v29, v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_15

    nop

    nop

    :goto_81
    invoke-static {v1}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v17

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_82
    if-gtz v6, :cond_8

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_83
    check-cast v6, Ljava/lang/Long;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static/range {p1 .. p1}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v7, v1, v6, v9, v8}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_87
    if-nez v5, :cond_9

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_88
    iget-object v6, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual/range {p3 .. p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_8a
    move-object/from16 v19, v8

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_8b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8c
    sget-object v7, Lhmu;->o:Lhmo;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_8d
    sget-object v5, Lhmu;->a:Lhmo;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v4, v3}, Ltbs;->a(Lprw;)Lrss;

    move-result-object v4

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

    :goto_90
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_92
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v7}, Lj$/util/Optional;->isEmpty()Z

    move-result v7

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_94
    invoke-static {v3}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v25

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_95
    invoke-static {v4}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v20

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method public final B(Linb;Lprw;Lpro;ZZLijd;Lj$/util/Optional;Lj$/util/Optional;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 25

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_1
    iget-wide v4, v1, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v8, v9, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_ultra_short_first_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_5
    if-ne v8, v9, :cond_0

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v5}, Limf;->f()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_7
    iput-boolean v5, v8, Liim;->b:Z

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v5, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_a
    move-object/from16 v5, p6

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->b()Lcom/google/googlex/gcam/ArkInfo;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    sget-object v9, Lsxd;->c:Lsxd;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v15, Lcom/google/googlex/gcam/RawReadView;

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_10
    invoke-virtual {v5}, Limf;->k()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-wide v11, Likt;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_12
    const-string v1, "buildPayloadBurstSpec failed due to incomplete viewfinder frame. Out of memory?"

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_9c

    nop

    nop

    :goto_14
    goto/32 :goto_72

    nop

    nop

    :goto_15
    goto/16 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v8, v9, v5, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->BuildPayloadBurstSpecOptions_cyclops_enabled_set(JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;Z)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v15}, Lcom/google/googlex/gcam/RawReadView;->c(Lcom/google/googlex/gcam/RawReadView;)J

    move-result-wide v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_19
    if-eqz p5, :cond_2

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static/range {v9 .. v24}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BuildPayloadBurstSpec__SWIG_0(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1b
    move/from16 v3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v21, v2

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_1d
    move-object/from16 p5, v7

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iput-boolean v5, v8, Liim;->g:Z

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->l()Z

    move-result v5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_20
    sget-object v8, Lhmu;->a:Lhmo;

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    :goto_22
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual/range {p1 .. p1}, Linb;->d()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    :goto_26
    invoke-virtual {v1, v2}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v5, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v15}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v13

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v18, v5

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_2d
    check-cast v4, Lcom/google/googlex/gcam/FrameRequest;

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

    :goto_2e
    iput v5, v8, Liim;->k:F

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    :goto_30
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v5, v8, Liim;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v6, v1, v2}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_33
    move v5, v3

    nop

    nop

    :goto_34
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v1, v2, Lilt;->a:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_36
    sget-object v2, Lsxi;->b:Lsxi;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    move/from16 v9, p4

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_38
    iget-wide v9, v11, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_3a
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v8, v6}, Liim;->a(Lcom/google/googlex/gcam/ShotParams;)Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    move-result-object v5

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v6, v8}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iput-object v5, v8, Liim;->l:Lj$/util/Optional;

    nop

    nop

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

    :goto_3f
    iget-wide v8, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_40
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v5, v0, Lila;->R:Limf;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v5, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v6, v1, v2}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    :goto_44
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v7}, Lcom/google/googlex/gcam/ArkInfo;->a()F

    move-result v5

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_46
    goto/16 :goto_34

    nop

    :goto_47
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_48
    iput-boolean v5, v8, Liim;->e:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, v0, Lila;->s:Lpck;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_4a
    const-string v9, "setOptions"

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v11, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_4c
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_4d
    iget-object v5, v0, Lila;->R:Limf;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto :goto_56

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    cmpl-float v5, v8, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_ee

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_c

    nop

    nop

    :goto_53
    iget-object v5, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_55
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_48

    nop

    nop

    :goto_57
    iget-boolean v2, v1, Linb;->n:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v9, Lcom/a;->camera_zsl_ultra_short_first:Lhmn;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-nez v9, :cond_5

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct/range {p0 .. p0}, Lila;->aaec1d22915a22823a4c3f7bc703c9d8m()V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v12

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5e
    sget-object v9, Lswz;->d:Lswz;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_5f
    invoke-virtual {v5, v4}, Lcom/google/googlex/gcam/FrameRequestVector;->c(Lcom/google/googlex/gcam/FrameRequest;)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_60
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v5}, Lcom/google/googlex/gcam/AeShotParams;->a()Lswz;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_30

    nop

    nop

    :goto_65
    goto/32 :goto_61

    nop

    nop

    :goto_66
    add-float/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_68
    move-wide/from16 v19, v3

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

    :goto_69
    iget-object v1, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v1}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v16

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-wide v9, v11, Lcom/google/googlex/gcam/Gcam;->a:J

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

    :goto_6c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6e
    move-object/from16 v18, v1

    nop

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

    nop

    :goto_6f
    if-eq v1, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    :cond_6
    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object v0, Lila;->f:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_71
    sget-object v2, Lhnj;->j:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v0, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput v5, v8, Liim;->j:F

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_77
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v5, p8

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_7a
    iput-boolean v5, v8, Liim;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_7b
    new-instance v6, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/16 :goto_cd

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, v4, v5, v2, v3}, Lila;->d(Lprw;Lpro;ZLpck;)Lilt;

    move-result-object v2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move-object/from16 v24, v5

    nop

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

    :goto_80
    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_81
    check-cast v1, Ljava/lang/Float;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_83
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_85
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :cond_7
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_87
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_88
    move-object v15, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_89
    iget-object v6, v2, Lilt;->a:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-lt v2, v1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->k()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8c
    const-string v2, "convertFrame"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_c5

    nop

    nop

    :goto_8f
    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_90
    if-gez v9, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_9
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_91
    sget-object v0, Lila;->f:Lsdb;

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

    :goto_92
    invoke-virtual/range {p1 .. p1}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    return-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_91

    nop

    nop

    :goto_95
    move-object/from16 v4, p2

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

    nop

    :goto_96
    const/16 v1, 0x64f

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_97
    if-nez v5, :cond_a

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_98
    const-string v8, "computeSpec"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_99
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_54

    nop

    nop

    :goto_9a
    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/4 v2, 0x0

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v5, v6}, Lhoh;->p(Lhmn;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-boolean v5, v5, Lijd;->l:Z

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_a2
    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v3

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameRequest;->a()F

    move-result v8

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v11, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_a6
    int-to-long v9, v4

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-interface {v8, v9}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v4, v5, v1}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequestVector_clear(JLcom/google/googlex/gcam/FrameRequestVector;)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v1, v2, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static/range {v9 .. v18}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BuildPayloadBurstSpec__SWIG_1(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_ac
    new-instance v3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v7}, Lcom/google/googlex/gcam/ArkInfo;->b()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_ae
    iget-object v6, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iput-boolean v5, v8, Liim;->f:Z

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

    :goto_b0
    iget-object v5, v0, Lila;->C:Likt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v5}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v5

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_b2
    iget-wide v3, v2, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_b3
    iput-boolean v5, v8, Liim;->c:Z

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-wide v8, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b5
    move-wide/from16 v16, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_b6
    iget-object v1, v0, Lila;->ab:Lhoh;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_b8
    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_b9
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    const/16 v1, 0x64e

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_bc
    invoke-virtual {v7, v4}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_be
    const-string v1, "buildPayloadBurstSpec failed due to missing viewfinder image."

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_bf
    cmp-long v7, v9, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_c0
    if-ne v1, v2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_b8

    nop

    nop

    :goto_c1
    invoke-virtual {v6}, Lj$/util/Optional;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_c2
    iput-boolean v5, v8, Liim;->h:Z

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    if-eq v5, v9, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_28

    nop

    nop

    :goto_c4
    iget-object v6, v2, Lilt;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_c5
    if-nez v2, :cond_d

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    :cond_d
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v6}, Lj$/util/Optional;->isPresent()Z

    move-result v6

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_c7
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9d

    nop

    nop

    :goto_c8
    move v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_c9
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_ca
    iget-object v15, v2, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_cc
    return-object v0

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object/from16 v5, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_cf
    check-cast v9, Ljava/lang/Long;

    nop

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

    :goto_d0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_d1
    iget-object v2, v2, Lilt;->c:Lcom/google/googlex/gcam/SpatialGainMap;

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

    nop

    :goto_d2
    iput-boolean v9, v8, Liim;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d3
    if-eqz v6, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_e
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v5, v5, Likt;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/16 :goto_8e

    nop

    :goto_d6
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_d7
    cmp-long v9, v9, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_d8
    move-object/from16 p5, v7

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_da
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_db
    const v2, 0x7f7fffff    # Float.MAX_VALUE

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_dc
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    check-cast v0, Lscz;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_de
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    move-wide/from16 v22, v7

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_e1
    if-ltz v7, :cond_f

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-static {v2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    sget-object v2, Lsxi;->a:Lsxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_e4
    sget-object v6, Lhmu;->aW:Lhmn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_e5
    move v2, v8

    nop

    nop

    nop

    :goto_e6
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e7
    new-instance v6, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iget-object v8, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_e9
    iput-object v5, v8, Liim;->m:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v7

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_eb
    iget-wide v1, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_ec
    if-nez v6, :cond_10

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_4b

    nop

    nop

    :goto_ed
    const/4 v5, 0x0

    nop

    nop

    :goto_ee
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v8, v0, Lila;->O:Liim;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_f2
    if-nez v5, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_f3
    iget-wide v7, v5, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->a:J

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_f4
    iget-object v8, v0, Lila;->ab:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop
.end method

.method public final C(Linb;Lpnx;ILpro;Lsxd;Lprw;)V
    .locals 10

    goto/32 :goto_e

    nop

    nop

    :goto_0
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

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

    goto/32 :goto_13

    nop

    nop

    :goto_5
    move-object/from16 v6, p6

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, p5

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    move-object v4, p4

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
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    move-object v2, p2

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

    nop

    :goto_10
    const/4 v7, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-virtual/range {v0 .. v9}, Lila;->n(Linb;Lpnx;ILpro;Lsxd;Lprw;Lprw;Lrss;Lpro;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v9, 0x0

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

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_14
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method

.method public final D(Lpnx;Lprw;Lpro;Llko;Lkvu;ZLrss;Lrss;Lrss;)Landroid/graphics/Bitmap;
    .locals 37

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v25 .. v25}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v23

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_4
    move/from16 v7, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v4, p7

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    move-object/from16 p6, v2

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

    :goto_7
    invoke-direct/range {v0 .. v20}, Lila;->ca40d22f1631a8d5d6ec3ccdb7c19696m(FILkvu;IZZZLrss;ZZZLpro;Lpnx;JFLioy;ZZLpro;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v6

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    move-wide/from16 v26, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    iget-object v2, v14, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lkmq;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v8, Lila;->l:Lijl;

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_c
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

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

    :goto_d
    sget-object v17, Lioy;->a:Lioy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_f
    move-wide/from16 p4, v9

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Ltbt;->q(Lpro;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v0

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

    nop

    :goto_11
    const/16 v19, 0x0

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v2}, Lcom/google/googlex/gcam/DebugParams;-><init>()V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_14
    move-object/from16 v11, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static/range {v31 .. v31}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v29

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_16
    check-cast v0, Lkmq;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v1, Loxv;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_19
    iget-object v1, v14, Lila;->n:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    check-cast v0, Lkmq;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-wide v9, v0, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-wide/16 v20, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_1
    goto/32 :goto_4b

    nop

    :goto_20
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_21
    const/4 v10, 0x1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v4, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, v7, Llko;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v4, v2}, Lrss;->b(Lrsk;)Lrss;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_26
    move-object/from16 v14, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_27
    move-object/from16 v19, v22

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_29
    iget v2, v0, Lpck;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-wide v3, v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_2b
    iget-wide v2, v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v0, Lkmq;->j:Lrss;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2d
    move v4, v2

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_2e
    new-instance v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_2f
    move/from16 v10, v16

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_30
    invoke-static {v2, v3, v1, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_verbose_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;Z)V

    goto/32 :goto_6a

    nop

    nop

    :goto_31
    invoke-direct {v2, v1, v10}, Limd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static/range {v14 .. v35}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GenerateRgbImage(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/ShotParams;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;JLcom/google/googlex/gcam/RawWriteView;IJLcom/google/googlex/gcam/GenerateRgbImageOptions;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_35
    iget-object v0, v8, Lila;->q:Ltbs;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {p9 .. p9}, Lrss;->h()Z

    move-result v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_37
    if-ne v2, v0, :cond_3

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_38
    iget v2, v3, Lsxh;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_39
    move-object/from16 v1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_3a
    invoke-virtual {v14, v11, v15}, Lila;->c(Lpro;Lpnx;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3b
    const/4 v4, 0x0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3c
    move-object v5, v0

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v3, v4, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_actual_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V

    :goto_3e
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v8, Lila;->s:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_40
    invoke-virtual {v3}, Lcom/google/googlex/gcam/InitParams;->a()Lsxh;

    move-result-object v3

    nop

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

    :goto_41
    invoke-virtual {v0, v4}, Lfdn;->u(Lcom/google/googlex/gcam/InterleavedImageU8;)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_43
    move/from16 v9, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static/range {p1 .. p6}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_debug_params_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;JLcom/google/googlex/gcam/DebugParams;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v3, v3, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_46
    move-wide/from16 p1, v3

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v5, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_48
    iget-wide v9, v6, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_49
    const/high16 v16, -0x40800000    # -1.0f

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-wide/from16 v33, v2

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

    :goto_4b
    goto/32 :goto_9d

    nop

    :goto_4c
    goto/32 :goto_26

    nop

    nop

    :goto_4d
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_50
    new-instance v2, Limd;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v12, p3

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_52
    invoke-virtual/range {p9 .. p9}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object/from16 v2, p8

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_55
    iget-object v0, v7, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_56
    check-cast v0, Lpck;

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

    :goto_57
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_58
    invoke-virtual {v0, v2}, Ltbs;->b(Lprw;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v31

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_59
    move-object/from16 v1, p3

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v15, p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_5c
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5e
    iget-object v0, v8, Lila;->af:Lfdn;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {v2}, Lcom/google/googlex/gcam/DebugParams;->a(Lcom/google/googlex/gcam/DebugParams;)J

    move-result-wide v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_60
    move-object/from16 v35, v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, v8, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

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

    :goto_62
    iget-object v3, v8, Lila;->ag:Lfdn;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_63
    move-wide/from16 v20, v9

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_64
    move-object v4, v1

    nop

    nop

    :goto_65
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_66
    iget-wide v3, v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_69
    invoke-static/range {v22 .. v22}, Lcom/google/googlex/gcam/StaticMetadata;->c(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, v8, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_6b
    sget-object v2, Lhmu;->a:Lhmo;

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

    :goto_6c
    const/4 v1, 0x0

    nop

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

    :goto_6d
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_6e
    invoke-virtual {v6}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_6f
    move-object/from16 v8, p0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-wide v14, v2, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_71
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_72
    iget-wide v3, v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v0, v0, Lkmq;->n:Lrss;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v0, v0, Lkmq;->n:Lrss;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_75
    invoke-static {v1, v0}, Lila;->O(Lcom/google/googlex/gcam/AeShotParams;Landroid/graphics/RectF;)V

    :goto_76
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_77
    move-object/from16 v36, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_78
    move-object/from16 v0, p0

    nop

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

    nop

    :goto_79
    move-object/from16 p3, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v4, :cond_4

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v13, p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_7c
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast v0, Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v6, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move/from16 v11, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_80
    move/from16 v32, v2

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object v0, v8, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

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

    :goto_82
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_83
    const-wide/16 v14, -0x1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_84
    move-object/from16 v20, v11

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_85
    new-instance v2, Lcom/google/googlex/gcam/DebugParams;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_86
    move-object v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_87
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_88
    goto/16 :goto_65

    nop

    nop

    :goto_89
    goto/32 :goto_64

    nop

    nop

    :goto_8a
    invoke-virtual/range {v0 .. v5}, Ltbt;->y(Lpnx;Lcom/google/googlex/gcam/AeShotParams;Lpro;FLpck;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/AeShotParams;->j(I)V

    :goto_8c
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v4}, Lcom/google/googlex/gcam/InterleavedImageU8;->i()Z

    move-result v0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_8e
    move-object/from16 v7, v36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0, v1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_90
    invoke-direct {v8, v0, v1}, Lila;->881c79c34bf9fa64d93830b11a6c3f5am(Lpnx;Lpro;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast v2, Lrsx;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_92
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    :goto_93
    invoke-virtual {v2, v1}, Ltbt;->a(I)F

    move-result v1

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-direct {v1}, Lcom/google/googlex/gcam/GenerateRgbImageOptions;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v1, v2}, Lcom/google/googlex/gcam/AeShotParams;->k(I)V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    return-object v0

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_9c

    nop

    nop

    :goto_98
    iget-wide v2, v1, Lcom/google/googlex/gcam/GenerateRgbImageOptions;->a:J

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget v4, v0, Lijl;->f:F

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-static {v3, v4, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->GenerateRgbImageOptions_expected_number_of_frames_set(JLcom/google/googlex/gcam/GenerateRgbImageOptions;I)V

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_9b
    iget v0, v0, Lpck;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-object v1

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v2, v2, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v0, v7, Llko;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a1
    check-cast v3, Lcom/google/googlex/gcam/InitParams;

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

    :goto_a2
    move-object/from16 v28, v0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    move-object/from16 v3, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v1, v14, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    check-cast v7, Llko;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_a6
    invoke-direct {v4, v0, v1}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(J)V

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a7
    move-object/from16 v3, p3

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_a8
    move-object/from16 v22, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop
.end method

.method public final E(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;)Linb;
    .locals 18

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v6, p5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    iget-object v0, v15, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    move-object/from16 v15, p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    sget-object v14, Lrsa;->a:Lrsa;

    nop

    nop

    sget-object v0, Lioy;->a:Lioy;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v1, "HdrPlus#StartMomentsShotCapture"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v4, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_7
    const/4 v10, -0x1

    nop

    nop

    goto/32 :goto_18

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

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    move-object v15, v0

    nop

    nop

    nop

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lila;->3d137ff4afbdf0b6afbfa059c81ece9bm(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;ZIIZIZLrss;Lioy;ZZ)Linb;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xe

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

    :goto_d
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const/16 v17, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v13, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    move-object v1, v15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    :goto_13
    const/4 v8, 0x1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v9, -0x1

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

    :goto_15
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    throw v0

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_12

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v1, p0

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

    :goto_1d
    move-object/from16 v5, p4

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
    iget-object v1, v1, Lila;->e:Lpdf;

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

    :goto_1f
    const/4 v12, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v7, p6

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

    :goto_21
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    move-object/from16 v3, p2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

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

    nop

    :goto_26
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop
.end method

.method public final F(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;IZ)Linb;
    .locals 18

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    :goto_3
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    move-object v15, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_6
    move-object/from16 v7, p6

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    move/from16 v10, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v9, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    const/4 v12, -0x1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "HdrPlus#StartNlShotCapture"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_d
    iget-object v0, v15, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    move-object/from16 v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v1, v15

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v8, 0x1

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

    :goto_17
    move-object/from16 v15, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object/from16 v5, p4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v6, p5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1a
    const/4 v11, 0x0

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

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v4, p3

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1f
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    sget-object v14, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    sget-object v0, Lioy;->a:Lioy;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_22
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move/from16 v17, p8

    nop

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lila;->3d137ff4afbdf0b6afbfa059c81ece9bm(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;ZIIZIZLrss;Lioy;ZZ)Linb;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    nop

    :goto_26
    move-object/from16 v1, p0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final G(Lpnx;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;IZILrss;Lioy;Z)Linb;
    .locals 18

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    const/4 v9, -0x1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    move-object/from16 v0, p2

    nop

    nop

    :try_start_0
    iget-object v1, v0, Llko;->d:Ljava/lang/Object;

    nop

    nop

    invoke-interface {v1}, Llxa;->j()Llxm;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-nez p7, :cond_0

    nop

    nop

    nop

    nop

    iget-object v1, v15, Lila;->F:Likn;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Likn;->g(Llxm;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v7, p5

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_27

    nop

    nop

    :goto_6
    goto/32 :goto_21

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

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object/from16 v15, p10

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    move-object v1, v15

    nop

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
    move/from16 v10, p6

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    move-object/from16 v2, p1

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

    nop

    :goto_e
    const/4 v13, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    move/from16 v11, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    const-string v1, "HdrPlus#StartShotCapture"

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_a

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_13
    move/from16 v12, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_14
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    move/from16 v16, p11

    nop

    nop

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lila;->3d137ff4afbdf0b6afbfa059c81ece9bm(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;ZIIZIZLrss;Lioy;ZZ)Linb;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_1a
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v5, p3

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

    :goto_1c
    iget-object v0, v15, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    const/4 v8, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1e
    move-object/from16 v1, p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_20
    move-object/from16 v6, p4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v15, p0

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

    :goto_22
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    move-object/from16 v14, p9

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

    :goto_24
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_26
    throw v0

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method public final H(Lpnx;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;IIZLioy;)Linb;
    .locals 18

    goto/32 :goto_21

    nop

    nop

    :goto_0
    move-object v1, v15

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, v1, Lila;->e:Lpdf;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move/from16 v11, p8

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

    :goto_4
    move-object/from16 v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6
    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    move/from16 v0, p8

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    move/from16 v10, p7

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_22

    nop

    :goto_a
    move/from16 v9, p6

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
    invoke-interface {v1, v2}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v15, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_e
    goto/16 :goto_1

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 v13, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_11
    const-string v2, "HdrPlus#StartZslShotCapture"

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

    :goto_12
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    const/16 v17, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    iget-object v1, v1, Lila;->e:Lpdf;

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

    nop

    :goto_15
    move-object/from16 v4, p2

    nop

    :try_start_0
    iget-object v1, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Llxa;->j()Llxm;

    move-result-object v3

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    nop

    iget-object v1, v15, Lila;->F:Likn;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Likn;->g(Llxm;)V

    :cond_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v0, :cond_2

    nop

    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move v12, v1

    nop

    nop

    sget-object v14, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_17
    move-object/from16 v4, p2

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

    :goto_18
    move-object/from16 v1, p0

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

    :goto_19
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

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

    :goto_1a
    const/16 v16, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    throw v0

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
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

    nop

    :goto_1e
    move-object/from16 v15, p0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v15, p9

    nop

    nop

    nop

    :try_start_1
    invoke-direct/range {v1 .. v17}, Lila;->3d137ff4afbdf0b6afbfa059c81ece9bm(Lpnx;Llxm;Llko;Lcom/google/googlex/gcam/PostviewParams;Lkvu;Lpro;ZIIZIZLrss;Lioy;ZZ)Linb;

    move-result-object v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v6, p4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0xf

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

    :goto_22
    goto/32 :goto_1c

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_23

    nop

    :goto_26
    move-object/from16 v7, p5

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method public final I(Lpnx;Lpro;Z)Lcom/google/googlex/gcam/ShotParams;
    .locals 22

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move-object/from16 v1, p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v16, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v19, 0x0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual/range {v14 .. v19}, Ltbt;->y(Lpnx;Lcom/google/googlex/gcam/AeShotParams;Lpro;FLpck;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move/from16 v18, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    move/from16 v9, p3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v6, 0x0

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-float v1, v1

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

    :goto_9
    return-object v0

    nop

    :goto_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v3, v2

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

    :goto_c
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_d
    check-cast v1, Loxv;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    move-object/from16 v15, p1

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_11
    iget v2, v2, Lijl;->f:F

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v16

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

    :goto_14
    move-object/from16 v12, p2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_a

    nop

    :goto_16
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_19
    const-wide/16 v20, -0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x14

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v14, Lila;->N:Lkvt;

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

    :goto_1c
    iget-object v2, v1, Lila;->l:Lijl;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, v1, Lila;->s:Lpck;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v20, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v1, v14, Lila;->n:Loyd;

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

    :goto_21
    move-object/from16 v15, p1

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

    :goto_22
    invoke-virtual {v2}, Loyu;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_23
    move-object/from16 v13, p1

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

    :goto_24
    invoke-virtual {v14, v11, v15}, Lila;->c(Lpro;Lpnx;)I

    move-result v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    move-object/from16 v19, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    sget-object v17, Lioy;->a:Lioy;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    const/4 v5, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move/from16 v11, v16

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    const/16 v18, 0x0

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

    :goto_2b
    move-object/from16 v14, p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object/from16 v11, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2d
    const-wide/16 v14, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x0

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

    :goto_2f
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v16, 0x0

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

    :goto_31
    invoke-direct/range {v0 .. v20}, Lila;->ca40d22f1631a8d5d6ec3ccdb7c19696m(FILkvu;IZZZLrss;ZZZLpro;Lpnx;JFLioy;ZZLpro;)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_32
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_33
    iget-object v14, v1, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v17, p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_35
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_36
    check-cast v3, Lkvu;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop
.end method

.method public final a(Lpnx;)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0, p1}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->o(Lpnu;)Lsyi;

    move-result-object p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    iget-object v0, p0, Lila;->M:Lpnv;

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

    :goto_4
    invoke-virtual {p0, p1}, Lila;->b(Lsyi;)I

    move-result p0

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
.end method

.method public final b(Lsyi;)I
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    const v1, 0xb

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {v1, v2, v0, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FindFirstCamera(JLcom/google/googlex/gcam/Gcam;I)I

    move-result v3

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

    :goto_7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_8
    mul-int/lit8 v0, v0, -0x1

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

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, p1, Lsyi;->w:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    :try_start_0
    sget v0, Lcom/a;->aa:I

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lcom/google/googlex/gcam/Gcam;->f()Z

    move-result v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Ljava/lang/Integer;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_f
    invoke-interface {v0, v1}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_10
    if-gez v3, :cond_2

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_11
    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    add-int/lit8 v0, v0, -0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x1a

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    iget-object v0, p0, Lila;->r:Lpnu;

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

    :goto_17
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    return v3

    nop

    nop

    nop

    nop

    :catchall_0
    :goto_19
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lpro;Lpnx;)I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1, p2}, Ltbt;->p(Lpro;Lpnx;)Lsyi;

    move-result-object p1

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

    nop

    :goto_1
    iget-object v0, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

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
    return p0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lila;->b(Lsyi;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final d(Lprw;Lpro;ZLpck;)Lilt;
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {v2 .. v7}, Ltbt;->y(Lpnx;Lcom/google/googlex/gcam/AeShotParams;Lpro;FLpck;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    iget v6, p0, Lijl;->f:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget p3, Lcom/a;->sCorrectorExposure_time_ms:F

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

    nop

    :goto_3
    mul-float v9, p3, v0

    nop

    :goto_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5
    sget v0, Lcom/a;->sCorrectorAnalog_gain:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_1d

    nop

    nop

    :catchall_0
    :goto_7
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-static {v1}, Lj$/util/Optional;->ofNullable(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v5

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
    if-gez v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {p2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, v3, p2}, Lila;->881c79c34bf9fa64d93830b11a6c3f5am(Lpnx;Lpro;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    return-object v1

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    :goto_10
    new-instance p1, Lilt;

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

    :goto_11
    invoke-virtual {p1, v0}, Ltbt;->a(I)F

    move-result p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_15

    nop

    :goto_14
    iget-object v4, p1, Lilt;->d:Lcom/google/googlex/gcam/AeShotParams;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_35

    nop

    nop

    :catchall_1
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lila;->q:Ltbs;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_19
    sget v0, Lcom/a;->sCorrectorPost_raw_digital_gain:F

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {p2}, Lpro;->b()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_1b
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/FrameMetadata;->t(F)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    return-object p1

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2}, Ltbs;->d(I)Z

    move-result v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lila;->l:Lijl;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_20
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {p1}, Lprw;->a()I

    move-result v2

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    mul-float/2addr p3, v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_23
    move/from16 v9, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lila;->q:Ltbs;

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

    :goto_25
    invoke-direct {p0, p1, p3}, Lila;->58bdc013cbfa0784191428aca07544ffm(FZ)Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v8

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

    :goto_26
    invoke-direct/range {v4 .. v9}, Lilt;-><init>(Lj$/util/Optional;Lcom/google/googlex/gcam/FrameMetadata;Lcom/google/googlex/gcam/SpatialGainMap;Lcom/google/googlex/gcam/AeShotParams;F)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/FrameMetadata;->v(F)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget v0, Lcom/a;->sCorrectorDigital_gain:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0, p1}, Ltbs;->b(Lprw;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v1

    nop

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2d
    iget-object p1, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    :try_start_1
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_EXPOSURE_COMPENSATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {p2, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v6, p3}, Lcom/google/googlex/gcam/FrameMetadata;->u(F)V

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v6, v0}, Lcom/google/googlex/gcam/FrameMetadata;->gain_set(F)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v0, v6, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_37
    const v9, 0x0

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move-object v5, p2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2}, Ltbt;->q(Lpro;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_30

    nop

    nop

    :goto_3c
    cmpg-float v9, v9, v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3d
    mul-float/2addr p3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3e
    iget-wide v0, v6, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object v7, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {p2}, Lpro;->b()Ljava/lang/String;

    move-result-object v0

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

    :goto_43
    iget-object v2, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_44
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop
.end method

.method public final e(Lilt;)Lcom/google/googlex/gcam/AeResults;
    .locals 22

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v2}, Lcom/google/googlex/gcam/RawReadView;->c(Lcom/google/googlex/gcam/RawReadView;)J

    move-result-wide v18

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

    :goto_1
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2
    iget-object v4, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Lila;->b(Lsyi;)I

    move-result v3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v0

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-virtual {v0, v3}, Lcom/google/googlex/gcam/Gcam;->c(I)Lcom/google/googlex/gcam/Tuning;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    iget-object v0, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v12, Lcom/google/googlex/gcam/AeResults;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_d
    invoke-virtual {v15}, Lcom/google/googlex/gcam/FrameMetadata;->q()Lsyi;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Lj$/util/Optional;->orElseThrow()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_10
    iget-wide v9, v0, Lcom/google/googlex/gcam/AeShotParams;->a:J

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    move-object/from16 v17, v15

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

    :goto_12
    move-object/from16 v0, p0

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

    :goto_13
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    check-cast v2, Lcom/google/googlex/gcam/RawReadView;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    iget-object v2, v1, Lilt;->a:Lj$/util/Optional;

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

    :goto_16
    iget-object v0, v1, Lilt;->d:Lcom/google/googlex/gcam/AeShotParams;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v1, v1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    iget-object v1, v1, Lilt;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_5

    nop

    :goto_1a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1b
    move-object v14, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v0, v12

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1d
    move-wide/from16 v18, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1e
    const/16 v21, 0x0

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

    :goto_1f
    move-wide/from16 v12, v18

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

    nop

    nop

    :goto_20
    iget-object v15, v1, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, v1, v2, v3}, Lcom/google/googlex/gcam/AeResults;-><init>(JZ)V

    goto/32 :goto_4

    nop

    nop

    :goto_22
    invoke-static/range {v3 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_ComputeAeResults(JLcom/google/googlex/gcam/StaticMetadata;JLcom/google/googlex/gcam/Tuning;JLcom/google/googlex/gcam/AeShotParams;JLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;Z)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_23
    move-object/from16 v20, v1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v4, v3}, Lcom/google/googlex/gcam/Gcam;->b(I)Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v4

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    move-object v8, v0

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

    :goto_26
    const v0, 0x16

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-wide v6, v0, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v15}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v15

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

    nop

    :goto_29
    invoke-static {v4}, Lcom/google/googlex/gcam/StaticMetadata;->c(Lcom/google/googlex/gcam/StaticMetadata;)J

    move-result-wide v3

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

    :goto_2a
    move-object v11, v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2b
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop
.end method

.method public final f(Linb;Lprw;Lpro;Lrss;Lj$/util/Optional;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 18

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/AfMetadata;

    move-result-object v3

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3
    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v4, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p4 .. p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    const-string v1, "buildAfBurstSpec failed due to incomplete viewfinder frame. Out of memory?"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v10, v3

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_9
    iget-boolean v2, v1, Linb;->n:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v4, p2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    invoke-virtual/range {p4 .. p4}, Lrss;->h()Z

    move-result v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v1, v2, v3}, Lcom/google/googlex/gcam/BurstSpec;-><init>(J)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_14
    const v1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_15
    check-cast v0, Lscz;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v3, v0, Lila;->s:Lpck;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_17
    move-object/from16 v5, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    check-cast v4, Lprk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_19
    invoke-static {v5}, Lswx;->a(I)Lswx;

    move-result-object v5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v0, Lila;->f:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v6, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

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

    :goto_1e
    check-cast v10, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

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

    nop

    :goto_20
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/AfMetadata;->e(Lswy;)V

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    :goto_23
    iget-wide v14, v0, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_25
    invoke-static {v4, v5, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->AfMetadata_state_get(JLcom/google/googlex/gcam/AfMetadata;)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_26
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_27
    iget-object v13, v2, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_28
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_29
    const v0, 0x1c

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v4, v5, v2, v3}, Lila;->d(Lprw;Lpro;ZLpck;)Lilt;

    move-result-object v2

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

    :goto_2c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_2d
    check-cast v5, Ljava/lang/Integer;

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

    :goto_2e
    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->c(Lsww;)V

    :goto_30
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {v4}, Lswx;->a(I)Lswx;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, v5}, Lcom/google/googlex/gcam/AfMetadata;->d(Lswx;)V

    :goto_33
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_34
    sget-object v0, Lila;->f:Lsdb;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_35
    check-cast v4, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v1, "buildAfBurstSpec failed due to missing viewfinder image."

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_38
    if-eqz v10, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v1, 0x64c

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3a
    invoke-static/range {v4 .. v17}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BuildAfBurstSpec(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/RawReadView;JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/SpatialGainMap;F)J

    move-result-wide v2

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

    :goto_3b
    invoke-direct/range {p0 .. p0}, Lila;->aaec1d22915a22823a4c3f7bc703c9d8m()V

    goto/32 :goto_5f

    nop

    nop

    :goto_3c
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    check-cast v0, Lscz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v4}, Lswy;->a(I)Lswy;

    move-result-object v4

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

    :goto_40
    invoke-static {v5}, Lsww;->a(I)Lsww;

    move-result-object v5

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {v13}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v4, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_43
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_44
    iget-object v3, v2, Lilt;->a:Lj$/util/Optional;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_45
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_46
    if-nez v4, :cond_3

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

    :cond_3
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_47
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_48
    new-instance v1, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v3, v2, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v2, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_4c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move-object/from16 v16, v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4e
    iget-wide v4, v3, Lcom/google/googlex/gcam/AfMetadata;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v2, Lilt;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v4, v5}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_52
    invoke-static {v10}, Lcom/google/googlex/gcam/RawReadView;->c(Lcom/google/googlex/gcam/RawReadView;)J

    move-result-wide v8

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/16 v1, 0x64b

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v17

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_37

    nop

    nop

    :goto_5b
    iget-wide v4, v6, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_5
    goto/32 :goto_1

    nop

    :goto_5d
    move-object/from16 v2, p5

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v5, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_5f
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_60
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-nez v4, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;
    .locals 11

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    invoke-static/range {v2 .. v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_OverrideFrameMetadata(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;JLcom/google/googlex/gcam/FrameMetadata;)Z

    move-result v2

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_28

    nop

    :goto_7
    new-instance v0, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget v4, v3, Llsx;->c:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, p2, v1, p3}, Ltbt;->w(Lpro;Lcom/google/googlex/gcam/GyroSampleVector;Ljava/util/Map;Lpnx;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p0

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

    nop

    :goto_a
    iget-object v2, p0, Lila;->H:Llss;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v5, 0x0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_e
    long-to-int v4, v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1, p3}, Ltbt;->m(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x9

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

    :goto_11
    if-lez v0, :cond_0

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

    :goto_12
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_14
    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

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

    :goto_15
    iget-wide v4, v3, Llsx;->a:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    :goto_18
    sget-object v2, Lhmu;->ao:Lhmn;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    array-length v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1f
    invoke-direct {v0}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_5

    nop

    nop

    :goto_21
    goto/32 :goto_22

    nop

    nop

    :goto_22
    iget-object v0, p0, Lila;->ab:Lhoh;

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

    nop

    :goto_23
    aget-object v3, v0, v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_24
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

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

    :goto_25
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Llso;->p:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_35

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_2a
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lt v2, v3, :cond_5

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    check-cast v2, Llsy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2f
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_30
    move-object v10, v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_31
    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_32
    goto/32 :goto_58

    nop

    nop

    :goto_33
    iget-object v0, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

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

    :goto_34
    return-object p0

    nop

    :goto_35
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_4c

    nop

    nop

    :goto_37
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v0

    nop

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

    :goto_39
    return-object p0

    nop

    :goto_3a
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v3, v4}, Llss;->b(J)Llso;

    move-result-object v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3d
    cmpl-float v4, v4, v5

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Llsy;

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

    :goto_3f
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto :goto_4c

    nop

    nop

    :goto_41
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v3, :cond_7

    nop

    goto/32 :goto_21

    nop

    :cond_7
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_45
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_46
    goto :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_48
    if-eqz v7, :cond_8

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_8
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_49
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_4a
    iget-object v0, v0, Llsy;->a:[Llsx;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4b
    invoke-static {v0}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    :goto_4c
    goto/32 :goto_1d

    nop

    nop

    :goto_4d
    check-cast p0, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4f
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_9
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v2, v2, Llsy;->a:[Llsx;

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

    :goto_53
    iget v3, v3, Llsx;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_54
    iget-object v2, v0, Llso;->p:Lrss;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_a
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_56
    const/4 v1, 0x0

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

    :goto_57
    invoke-virtual {v0, v2}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_58
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop
.end method

.method public final h(Lpro;)Lcom/google/googlex/gcam/GyroSampleVector;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lrsa;->a:Lrsa;

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

    :goto_2
    invoke-direct {p0, p1, v0}, Lila;->7852ab18ac4bc461fee1a84b3ceac02dm(Lpro;Lrss;)Lcom/google/googlex/gcam/GyroSampleVector;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(I)Lcom/google/googlex/gcam/PhysicalStabilityParams;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast p0, Likz;

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

    :goto_2
    iget-object p0, p0, Likz;->a:Lcom/google/googlex/gcam/PhysicalStabilityParams;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lila;->i:Lryh;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final j(I)Lcom/google/googlex/gcam/PostShutterAfParams;
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Likz;->b:Lcom/google/googlex/gcam/PostShutterAfParams;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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

    :goto_2
    check-cast p0, Likz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lila;->i:Lryh;

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

    :goto_5
    invoke-virtual {p0, p1}, Lryh;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final k(Lpro;Lpnx;)Lsyi;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Ltbt;->p(Lpro;Lpnx;)Lsyi;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final l(I)Lcom/google/googlex/gcam/ViewfinderResults;
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

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

    :goto_6
    iget-wide v1, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1a

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

    :goto_9
    invoke-direct {v0, p0, p1}, Lcom/google/googlex/gcam/ViewfinderResults;-><init>(J)V

    goto/32 :goto_0

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    new-instance v0, Lcom/google/googlex/gcam/ViewfinderResults;

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

    :goto_e
    invoke-static {v1, v2, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_GetLatestViewfinderResults(JLcom/google/googlex/gcam/Gcam;I)J

    move-result-wide p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop
.end method

.method public final m(Linb;)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Linb;->a()I

    move-result p1

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

    nop

    :goto_3
    goto/32 :goto_f

    nop

    :goto_4
    invoke-static {v1, v2, v0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_AbortShot(JLcom/google/googlex/gcam/Gcam;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_7
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_9

    nop

    nop

    :goto_8
    invoke-static {p1, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "AbortShot-"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v1, v0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_11
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

    :goto_12
    iget-object v1, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(Linb;Lpnx;ILpro;Lsxd;Lprw;Lprw;Lrss;Lpro;)V
    .locals 28

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    sget v11, Lcom/a;->sCorrectorExposure_time_ms:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v9, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;

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

    :goto_3
    sget-object v9, Lsxr;->b:Lsxr;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-wide v10, v9, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_5
    iget-object v7, v0, Lila;->x:Ljava/lang/String;

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v4}, Ltbt;->q(Lpro;)Lcom/google/googlex/gcam/SpatialGainMap;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v10}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_a
    invoke-interface/range {p6 .. p6}, Lprw;->close()V

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->h(F)V

    :goto_d
    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ShotParams;->b()Lcom/google/googlex/gcam/ArkInfo;

    move-result-object v9

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    :goto_f
    move-object v11, v9

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_10
    div-float v15, v15, v16

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v11, "addPayloadFrame()"

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v10}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    move-object v7, v11

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {v9, v7}, Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;->n(Landroid/graphics/Rect;Lprk;)Lcom/google/googlex/gcam/MeshWarp;

    move-result-object v14

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v13

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

    :goto_17
    move-object/from16 v6, p7

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->j(F)V

    goto/32 :goto_e6

    nop

    nop

    :goto_19
    iget v10, v10, Liku;->b:F

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_1a
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {v13, v14, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_FinalPortraitTetGain(JLcom/google/googlex/gcam/AeResults;)F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance v11, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v9

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_20
    const-string v9, "custom.shading_map_enable"

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

    :goto_21
    invoke-interface/range {p4 .. p4}, Lpro;->j()Lpic;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_22
    sget-object v14, Lsxi;->a:Lsxi;

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v11, Lihf;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_24
    move-object/from16 v26, v12

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_28
    invoke-direct {v12, v6, v7, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_c6

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct/range {p0 .. p0}, Lila;->aaadf0a9c0da915f2782a301bde92c44m()Z

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v9}, Lcom/a;->ad_mc(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    :goto_2f
    div-float/2addr v10, v13

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_30
    invoke-direct {v11, v5, v7, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual/range {p8 .. p8}, Lrss;->h()Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-gtz v13, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_33
    cmpl-float v13, v13, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-direct {v0, v2, v4}, Lila;->881c79c34bf9fa64d93830b11a6c3f5am(Lpnx;Lpro;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v8

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v2, v2, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v12 .. v27}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeAddPayloadFrame(JIJJJLjava/lang/Runnable;JLjava/lang/Runnable;Lcom/google/googlex/gcam/base/OwningNativePointer;Ljava/lang/Runnable;)Z

    move-result v2

    nop

    :goto_37
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_38
    invoke-static {v11}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v13

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v16, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1d

    nop

    nop

    :goto_3c
    if-nez v5, :cond_3

    nop

    nop

    goto/32 :goto_b4

    nop

    :cond_3
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v12

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3e
    check-cast v7, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v12, v15}, Lcom/google/googlex/gcam/LiveHdrMetadata;->h(F)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    move-object/from16 v25, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_41
    move-object v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v26, v22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->g(F)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v9, :cond_4

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_45
    const/high16 v13, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    check-cast v10, Liku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-wide v12, v14, Lcom/google/googlex/gcam/MeshWarp;->a:J

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_48
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v15

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_49
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->b()F

    move-result v10

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_4a
    iget-object v11, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface/range {p7 .. p7}, Lprw;->close()V

    :goto_4e
    goto/32 :goto_ef

    nop

    nop

    :goto_4f
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const-string v9, "metadata"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_1c

    nop

    nop

    :goto_54
    goto/32 :goto_e7

    nop

    nop

    :goto_55
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->m()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_57
    iget v10, v10, Liku;->a:F

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v9, v11}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_20

    nop

    nop

    :goto_59
    sget-object v14, Lsxi;->c:Lsxi;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v10, v10, Liku;->b:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v12, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->i(F)V

    :goto_5c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eqz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_5e
    check-cast v9, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v9, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    check-cast v17, Landroid/hardware/camera2/TotalCaptureResult;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_62
    iget-object v0, v0, Lila;->e:Lpdf;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_63
    mul-float/2addr v15, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v7}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v23

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_65
    invoke-interface {v2, v4, v1, v3}, Lscz;->w(Ljava/lang/String;II)V

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_67
    move-object v12, v9

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

    :goto_68
    invoke-interface/range {p9 .. p9}, Lpro;->b()Ljava/lang/String;

    goto/32 :goto_bd

    nop

    nop

    :goto_69
    const-string v9, "wrapImages"

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_6a
    move-object/from16 v17, v2

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    sget-object v14, Lsxi;->e:Lsxi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_6c
    sget-object v2, Lila;->f:Lsdb;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_6d
    invoke-static {v8}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v16

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_6e
    sget-object v9, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_6f
    check-cast v10, Liku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_70
    if-gtz v13, :cond_7

    nop

    goto/32 :goto_54

    nop

    :cond_7
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_5c

    nop

    nop

    :goto_72
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_73
    iget-object v1, v0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_74
    throw v0

    nop

    :goto_75
    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->m()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v12, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    :cond_8
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_78
    move-object/from16 v25, v9

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_79
    goto/16 :goto_d0

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    :goto_7a
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_bf

    nop

    nop

    :goto_7c
    iget-object v8, v0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_7d
    move-object/from16 v11, p5

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_7e
    invoke-interface {v2, v4}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_7f
    invoke-direct {v8}, Lcom/google/googlex/gcam/FrameMetadata;-><init>()V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_80
    rem-int v0, v0, v1

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v9, :cond_a

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    :goto_82
    if-nez v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_37

    nop

    nop

    :goto_84
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    move-wide/from16 v18, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_86
    iget-object v10, v0, Lila;->q:Ltbs;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v10, v5}, Ltbs;->b(Lprw;)Lcom/google/googlex/gcam/RawWriteView;

    move-result-object v10

    nop

    nop

    invoke-interface/range {p6 .. p6}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v11

    nop

    nop

    nop

    if-eqz v11, :cond_9

    nop

    nop

    nop

    invoke-static {v11}, Lcom/google/googlex/gcam/AndroidJniUtils;->getAHardwareBufferPtr(Landroid/hardware/HardwareBuffer;)Lcom/google/googlex/gcam/base/OwningNativePointer;

    move-result-object v12

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v13, Lihf;

    nop

    nop

    nop

    nop

    nop

    const/16 v14, 0xa

    nop

    nop

    nop

    nop

    invoke-direct {v13, v12, v14, v9}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    invoke-virtual {v11}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_87
    if-nez v9, :cond_c

    nop

    goto/32 :goto_d

    nop

    :cond_c
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v12, v11}, Lcom/google/googlex/gcam/LiveHdrMetadata;->j(F)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v9, v0, Lila;->k:Ltbq;

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    if-nez v6, :cond_d

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_d
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_8b
    mul-float/2addr v11, v9

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->a()F

    move-result v13

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

    :goto_8d
    sget v9, Lcom/a;->aa:I

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_8e
    new-instance v11, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_8f
    mul-float/2addr v10, v15

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {v8}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v18

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_91
    const-string v9, "AddPayloadFrame"

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_92
    if-eq v13, v14, :cond_e

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_ec

    nop

    nop

    :goto_93
    new-instance v8, Lcom/google/googlex/gcam/FrameMetadata;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move-object/from16 v2, p2

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_95
    move/from16 v3, p3

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_97
    move-object v7, v11

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_98
    iget-object v2, v2, Lpic;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual/range {p1 .. p1}, Linb;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    :goto_9a
    invoke-static {v10, v11, v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_use_binned_metering_frame_get(JLcom/google/googlex/gcam/ShotParams;)Z

    move-result v9

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    monitor-enter v10

    nop

    nop

    :try_start_1
    sget-object v11, Lijs;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    new-instance v12, Lijr;

    nop

    nop

    nop

    invoke-direct {v12, v7, v9, v3, v4}, Lijr;-><init>(Ljava/lang/String;Lsxr;ILprk;)V

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v10

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_75

    nop

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

    monitor-exit v10

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    goto/32 :goto_26

    nop

    :goto_9d
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-static {v14, v15, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->AeResults_FinalHdrRatio(JLcom/google/googlex/gcam/AeResults;)F

    move-result v15

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_a0
    sget-object v14, Lsxi;->b:Lsxi;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_a1
    iget-object v9, v0, Lila;->k:Ltbq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_a2
    if-nez v5, :cond_f

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_a

    nop

    nop

    :goto_a3
    iget-object v7, v1, Linb;->c:Ljava/util/List;

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

    nop

    :goto_a4
    if-ne v13, v14, :cond_10

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-virtual/range {p1 .. p1}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v9

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

    nop

    nop

    :goto_a6
    invoke-interface {v8, v9}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->b()F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v12, v11}, Lcom/google/googlex/gcam/LiveHdrMetadata;->g(F)V

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_aa
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_ab
    move-object v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_ac
    move-object/from16 v22, v11

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-interface {v8, v9}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v11}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v13

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_af
    check-cast v10, Liku;

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_b0
    invoke-interface {v4, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_b1
    cmpl-float v13, v13, v14

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->c()F

    move-result v13

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_b3
    goto :goto_b8

    nop

    nop

    :catchall_1
    :goto_b4
    goto/32 :goto_101

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v13

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    move-object/from16 v22, v9

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

    nop

    :goto_b7
    move-object/from16 v27, v26

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_b9
    check-cast v2, Lscz;

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

    :goto_ba
    invoke-static {v10}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v20

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_bb
    sget-object v10, Lijs;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast v10, Liku;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget-wide v9, v8, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    move-object/from16 v1, p1

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

    :goto_bf
    cmpl-float v13, v13, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v11, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v7}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v23

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v7, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v12, v9, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->b:Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v11, v6}, Ltbs;->a(Lprw;)Lrss;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-direct {v11}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    :goto_c6
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    check-cast v9, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_c8
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->a()F

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget-object v7, v1, Linb;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-direct {v11}, Lcom/google/googlex/gcam/RawWriteView;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v13

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_cc
    check-cast v7, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_cd
    if-lez v0, :cond_11

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_11
    goto/32 :goto_9c

    nop

    :goto_ce
    if-nez v7, :cond_12

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    move-object v13, v12

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->c()F

    move-result v16

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d2
    move-object/from16 v5, p6

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

    :goto_d3
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->m()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v12

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const-string v4, "addPayloadFrame for shot %d failed, closing input images at frame index %d."

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    iget-wide v1, v1, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    const v0, 0xd

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-interface {v7, v9}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_d8
    if-nez v15, :cond_13

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    if-eqz v9, :cond_14

    nop

    nop

    goto/32 :goto_84

    nop

    :cond_14
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_da
    new-instance v12, Lihf;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_db
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_dc
    goto/16 :goto_7b

    nop

    nop

    :goto_dd
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_de
    iget v10, v10, Liku;->a:F

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

    :goto_df
    invoke-static/range {v9 .. v14}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_mesh_warp_set(JLcom/google/googlex/gcam/FrameMetadata;JLcom/google/googlex/gcam/MeshWarp;)V

    :goto_e0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->e(F)V

    goto/32 :goto_76

    nop

    nop

    :goto_e2
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_e3
    invoke-static {v13, v10}, Ljava/lang/Math;->max(FF)F

    move-result v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->f()Lcom/google/googlex/gcam/AeResults;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->a()F

    move-result v11

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e6
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->m()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_e7
    iget-wide v13, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    const/4 v14, 0x0

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

    :goto_e9
    const/4 v15, 0x0

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v12, v10}, Lcom/google/googlex/gcam/LiveHdrMetadata;->f(F)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    move-object/from16 v7, p9

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

    nop

    :goto_ec
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->a()F

    move-result v11

    nop

    nop

    :goto_ed
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->b()F

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_ef
    iget-object v1, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual/range {p8 .. p8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_f1
    iget-object v8, v0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_f2
    check-cast v9, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move-object/from16 v27, v13

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    invoke-virtual {v9}, Lcom/google/googlex/gcam/ArkInfo;->c()Lsxi;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_f5
    if-eq v13, v14, :cond_15

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-interface {v7, v9}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_fc

    nop

    nop

    :goto_f7
    invoke-virtual {v8}, Lcom/google/googlex/gcam/FrameMetadata;->m()Lcom/google/googlex/gcam/LiveHdrMetadata;

    move-result-object v9

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v12, v15}, Lcom/google/googlex/gcam/LiveHdrMetadata;->e(F)V

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_fa
    iget-object v9, v0, Lila;->e:Lpdf;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_fb
    invoke-virtual {v12}, Lcom/google/googlex/gcam/LiveHdrMetadata;->a()F

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_fc
    const/16 v7, 0x9

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_fd
    iget-wide v9, v8, Lcom/google/googlex/gcam/FrameMetadata;->a:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-nez v7, :cond_16

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget v11, v11, Lsxd;->k:I

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_100
    if-gtz v13, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_17
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_101
    new-instance v10, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_102
    invoke-static {v9, v10, v8, v11}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameMetadata_burst_frame_type_set(JLcom/google/googlex/gcam/FrameMetadata;I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    iget-object v11, v0, Lila;->q:Ltbs;

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_104
    iget-wide v14, v10, Lcom/google/googlex/gcam/AeResults;->a:J

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_105
    invoke-virtual/range {v11 .. v27}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusAndroidInterface;->nativeAddPayloadFrame(Lcom/google/googlex/gcam/hdrplus/CharacteristicsCache;JILjava/lang/String;Landroid/hardware/camera2/TotalCaptureResult;JJLjava/lang/Runnable;JLjava/lang/Runnable;Lcom/google/googlex/gcam/base/OwningNativePointer;Ljava/lang/Runnable;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const/16 v4, 0x652

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_107
    if-ne v13, v14, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_18
    goto/32 :goto_cb

    nop

    nop

    nop

    nop
.end method

.method public final o(Lpnx;Lprw;Lpro;)V
    .locals 18

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v5, v0, Lila;->s:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4
    iget-object v5, v5, Lilt;->c:Lcom/google/googlex/gcam/SpatialGainMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v7, 0x0

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

    nop

    :goto_7
    iget-wide v13, v5, Lcom/google/googlex/gcam/SpatialGainMap;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    if-eqz v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v6, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_3f

    nop

    :cond_1
    goto/32 :goto_3e

    nop

    :goto_b
    iget-object v6, v5, Lilt;->a:Lj$/util/Optional;

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v1, 0x654

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, v3, v4}, Lila;->I(Lpnx;Lpro;Z)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v1

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

    :goto_f
    invoke-virtual {v4}, Limf;->i()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    invoke-static {v0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v9

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    iget-object v0, v0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

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

    :goto_13
    iget-object v3, v0, Lila;->k:Ltbq;

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

    :goto_14
    move-object/from16 v1, p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v3, v1}, Lila;->c(Lpro;Lpnx;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    move-object v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-wide v0, v1, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_1a
    invoke-virtual {v0, v2, v3, v4, v5}, Lila;->d(Lprw;Lpro;ZLpck;)Lilt;

    move-result-object v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    move-object/from16 v17, v6

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-wide v6, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v0, Lila;->f:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v4, v0, Lila;->R:Limf;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_21
    sget-object v0, Lila;->f:Lsdb;

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

    :goto_22
    iget-object v4, v5, Lilt;->b:Lcom/google/googlex/gcam/FrameMetadata;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xd

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_24
    check-cast v6, Lcom/google/googlex/gcam/RawWriteView;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_26
    move-wide v12, v15

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move-wide v10, v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v4}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v11

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_29
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move v5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_30
    invoke-direct {v6, v2, v4, v7}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_16

    nop

    nop

    :goto_31
    new-instance v6, Lihf;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_32
    move-object/from16 v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v14, v17

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v6}, Lcom/google/googlex/gcam/RawWriteView;->e(Lcom/google/googlex/gcam/RawWriteView;)J

    move-result-wide v15

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_36
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_37
    move-object/from16 v0, p0

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

    nop

    :goto_38
    check-cast v0, Lscz;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-wide v8, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_3a
    const/16 v1, 0x655

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

    :goto_3b
    check-cast v0, Lscz;

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

    :goto_3c
    const-string v1, "addViewfinderFrame() failed: missing image and/or spatial gain map."

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {v2 .. v14}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeAddViewfinderFrame(JIJJJJLjava/lang/Runnable;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_37

    nop

    nop

    :goto_40
    move-wide v3, v9

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_41
    check-cast v2, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_42
    const-string v1, "addViewfinderFrame() failed: convertToHdrPlusViewfinderFrame returned null."

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method public final p(Lpnx;Lpro;)V
    .locals 8

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object p2

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    const/16 v0, 0x656

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

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

    :goto_4
    sget-object p1, Lila;->f:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_6
    const-string v1, "addViewfinderMetadataOnly() failed %s"

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_c
    goto/32 :goto_8

    nop

    nop

    :goto_d
    :try_start_0
    invoke-virtual {p0, p2, p1}, Lila;->c(Lpro;Lpnx;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lila;->R:Limf;

    nop

    invoke-virtual {v0}, Limf;->i()Z

    move-result v0

    nop

    invoke-virtual {p0, p1, p2, v0}, Lila;->I(Lpnx;Lpro;Z)Lcom/google/googlex/gcam/ShotParams;

    move-result-object v0

    nop

    invoke-direct {p0, p1, p2}, Lila;->881c79c34bf9fa64d93830b11a6c3f5am(Lpnx;Lpro;)Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lila;->k:Ltbq;

    nop

    nop

    nop

    iget-object p0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    invoke-static {p0}, Lcom/google/googlex/gcam/Gcam;->a(Lcom/google/googlex/gcam/Gcam;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lcom/google/googlex/gcam/FrameMetadata;->c(Lcom/google/googlex/gcam/FrameMetadata;)J

    move-result-wide v4

    nop

    nop

    iget-wide v6, v0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    move-object v0, p2

    nop

    check-cast v0, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    nop

    nop

    nop

    nop

    invoke-virtual/range {v0 .. v7}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeAddViewfinderMetadataOnly(JIJJ)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    invoke-static {v1, p2, v0, p1, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final q(Linb;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lcom/google/googlex/gcam/BurstSpec;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, v0}, Lila;->r(Linb;Lcom/google/googlex/gcam/BurstSpec;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final r(Linb;Lcom/google/googlex/gcam/BurstSpec;)V
    .locals 9

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    invoke-virtual {p1}, Linb;->a()I

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

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

    :goto_4
    add-int v0, v0, v1

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

    nop

    :goto_5
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_6
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p2}, Lcom/google/googlex/gcam/BurstSpec;->b(Lcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static/range {v2 .. v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_BeginPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/BurstSpec;)V

    goto/32 :goto_e

    nop

    nop

    :goto_b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_12

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    const v1, 0xf

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

    :goto_11
    move-object v8, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    const-string v2, "BeginPayloadFrames-"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Linb;->a()I

    move-result v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(Linb;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Linb;->a()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndZslPayloadFrames(JLcom/google/googlex/gcam/Gcam;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

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
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x17

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final t(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/googlex/gcam/Gcam;->d(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object p0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final u(Lpnx;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p0}, Lcom/google/googlex/gcam/Gcam;->d(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lila;->a(Lpnx;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop
.end method

.method public final v(I)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_3
    const v1, 0x1a

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

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_FlushViewfinder(JLcom/google/googlex/gcam/Gcam;I)V

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final w(Lpro;Lpnx;)Z
    .locals 8

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, v1, v2}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V

    :try_start_0
    iget-object v1, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Ltbt;->m(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7

    nop

    if-nez v7, :cond_0

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_0
    iget-object v4, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_ClaimFrameForBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z

    move-result p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

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

    :goto_8
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v2, "HdrPlusSession#claimFrameForTemporalBinning"

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    :goto_d
    iget-object v1, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Lpde;->close()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Lpde;

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

    :goto_10
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

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

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    return p0

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
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final x(Linb;Lcom/google/googlex/gcam/BurstSpec;)Z
    .locals 10

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_39

    nop

    nop

    :goto_1
    return p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto :goto_5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p2, v0}, Lscz;->s(Ljava/lang/String;)V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "EndPayloadFrames() failed."

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    move-object v1, v0

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lila;->aaadf0a9c0da915f2782a301bde92c44m()Z

    move-result p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Lscs;->b()Lsdo;

    move-result-object p2

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

    :goto_c
    if-eqz p1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-interface {v1, v0}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Lkmq;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_f
    invoke-static {v9}, Lcom/google/googlex/gcam/ClientShotMetadata;->a(Lcom/google/googlex/gcam/ClientShotMetadata;)J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_10
    iget-object p0, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v2, "location"

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p1, Linb;->w:Llko;

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

    :goto_14
    iget-object v2, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    iget-object p2, p0, Lila;->G:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v3, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v1, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {p2, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0}, Likx;-><init>(Lila;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez p2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p1

    nop

    :goto_21
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v0, "EndPayloadFrames-"

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

    :goto_26
    invoke-static/range {v0 .. v9}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndPayloadFrames(JLcom/google/googlex/gcam/Gcam;IJLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/ClientShotMetadata;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_28
    new-instance v0, Likx;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v0, p1, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2a
    invoke-static {v0, v1, p1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_cache_payload_images_set(JLcom/google/googlex/gcam/ShotParams;Z)V

    goto/32 :goto_14

    nop

    nop

    :goto_2b
    move-object v9, v1

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

    :goto_2c
    invoke-static {p2}, Lcom/google/googlex/gcam/BurstSpec;->b(Lcom/google/googlex/gcam/BurstSpec;)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_21

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2e
    const/16 v0, 0x65c

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2f
    iget-object v0, v0, Llko;->c:Ljava/lang/Object;

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

    :goto_30
    invoke-virtual {p1}, Linb;->a()I

    move-result v3

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

    :goto_31
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_4
    goto/32 :goto_38

    nop

    :goto_32
    iget-object p0, p0, Lila;->e:Lpdf;

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

    :goto_33
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_34
    sget-object p2, Lila;->f:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_35
    check-cast p2, Lscz;

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

    :goto_36
    iget-object v0, p0, Lila;->e:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_37
    invoke-interface {v0, v2}, Lpdf;->f(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lila;->m:Ltxm;

    nop

    nop

    invoke-interface {v0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Ljqp;

    nop

    invoke-interface {v0}, Ljqp;->e()Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->h()Z

    move-result v2

    nop

    if-eqz v2, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Landroid/location/Location;

    nop

    nop

    nop

    new-instance v1, Lcom/google/googlex/gcam/LocationData;

    nop

    nop

    invoke-direct {v1}, Lcom/google/googlex/gcam/LocationData;-><init>()V

    invoke-virtual {v0}, Landroid/location/Location;->getAltitude()D

    move-result-wide v4

    nop

    invoke-virtual {v1, v4, v5}, Lcom/google/googlex/gcam/LocationData;->b(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    move-result v2

    nop

    nop

    float-to-double v4, v2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lcom/google/googlex/gcam/LocationData;->c(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v4

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lcom/google/googlex/gcam/LocationData;->d(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v4

    nop

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lcom/google/googlex/gcam/LocationData;->e(D)V

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v4

    nop

    nop

    const-wide/16 v6, 0x3e8

    nop

    nop

    nop

    nop

    nop

    div-long/2addr v4, v6

    nop

    nop

    invoke-virtual {v1, v4, v5}, Lcom/google/googlex/gcam/LocationData;->g(J)V

    invoke-virtual {v0}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v0

    nop

    if-eqz v0, :cond_5

    nop

    invoke-virtual {v1, v0}, Lcom/google/googlex/gcam/LocationData;->f(Ljava/lang/String;)V

    :cond_5
    new-instance v0, Lcom/google/googlex/gcam/ClientShotMetadata;

    nop

    invoke-direct {v0}, Lcom/google/googlex/gcam/ClientShotMetadata;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/googlex/gcam/ClientShotMetadata;->c(Lcom/google/googlex/gcam/LocationData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3b
    iget-wide v0, v2, Lcom/google/googlex/gcam/Gcam;->a:J

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

    :goto_3c
    move-object v6, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3d
    iget-boolean v0, v0, Lkmq;->h:Z

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

    nop
.end method

.method public final y(Linb;)Z
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2, v1}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    iget-wide v2, v1, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1}, Llxa;->P()V

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    const/16 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput v1, Lcom/a;->sCorrectorAutoHDRP:I

    nop

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

    :goto_e
    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_13
    invoke-static {v2, v3, v1, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_EndShotCapture(JLcom/google/googlex/gcam/Gcam;I)Z

    move-result v0

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

    :goto_14
    invoke-interface {p0}, Lpdf;->g()V

    goto/32 :goto_a

    nop

    nop

    :goto_15
    invoke-static {v0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Linb;->a()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "EndShotCapture-"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v2, p0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop
.end method

.method public final z(Lpro;Lpnx;)Z
    .locals 8

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0}, Lpde;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lpde;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lila;->e:Lpdf;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lpde;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    goto/32 :goto_13

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1, v2}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lila;->d:Lcom/google/googlex/gcam/hdrplus/NativeMetadataConverter;

    nop

    nop

    nop

    invoke-virtual {v1, p1, p2}, Ltbt;->m(Lpro;Lpnx;)Lcom/google/googlex/gcam/FrameMetadataKey;

    move-result-object v7

    nop

    if-nez v7, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    goto :goto_f

    nop

    nop

    :cond_1
    iget-object v4, p0, Lila;->j:Lcom/google/googlex/gcam/Gcam;

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, v4, Lcom/google/googlex/gcam/Gcam;->a:J

    nop

    nop

    nop

    nop

    iget-wide v5, v7, Lcom/google/googlex/gcam/FrameMetadataKey;->a:J

    nop

    invoke-static/range {v2 .. v7}, Lcom/google/googlex/gcam/GcamModuleJNI;->Gcam_LockFrameFromFutureBinning(JLcom/google/googlex/gcam/Gcam;JLcom/google/googlex/gcam/FrameMetadataKey;)Z

    move-result p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    const-string v2, "HdrPlusSession#lockFrameFromFutureBinning"

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

    :goto_12
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

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
.end method
