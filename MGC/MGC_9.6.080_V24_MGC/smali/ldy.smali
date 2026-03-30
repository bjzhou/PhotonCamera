.class public Lldy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkuc;


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Lkuc;

.field private final c:Ljava/util/Set;

.field private final d:Lldx;

.field private final e:Likv;

.field private final f:Likn;

.field private final g:Lleo;

.field private final h:Lije;

.field private final i:Llgc;

.field private final j:Llfh;

.field private final k:Lpdf;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    sput-object v0, Lldy;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-string v0, "ldy"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/Set;Lkuc;Lrss;Likv;Likn;Lleo;Lije;Llgc;Llfh;Lpdf;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iput-object p8, p0, Lldy;->i:Llgc;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

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
    iput-object p7, p0, Lldy;->h:Lije;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Lldx;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    iput-object p1, p0, Lldy;->c:Ljava/util/Set;

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

    :goto_6
    iput-object p10, p0, Lldy;->k:Lpdf;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput-object p9, p0, Lldy;->j:Llfh;

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

    :goto_8
    iput-object p4, p0, Lldy;->e:Likv;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    iput-object p6, p0, Lldy;->g:Lleo;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iput-object p5, p0, Lldy;->f:Likn;

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
    iput-object p2, p0, Lldy;->b:Lkuc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lldy;->d:Lldx;

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
.end method

.method private final da190e616797844b591057d0190e7728m(Lkuc;Ljava/util/List;Lkub;Llko;)V
    .locals 2

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    iget-object p2, p4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2}, Lmjn;->g()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    check-cast p2, Ljava/lang/String;

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

    :goto_5
    invoke-interface {p2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-interface {p2}, Lktq;->h()V

    goto/32 :goto_13

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

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_8
    check-cast v0, Lscz;

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_d
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p2, p0, Llfh;->g:Ljava/lang/String;

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

    :goto_f
    const/16 v1, 0xd7c

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-interface {p2}, Llxa;->ag()Lmjn;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iget-object p2, p0, Llfh;->b:Loyd;

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

    :goto_12
    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

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

    :goto_13
    iget-object p0, p0, Lldy;->j:Llfh;

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

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-static {p2}, Llcm;->a(Ljava/util/List;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v1, "Executing fallback"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lldy;->a:Lsdb;

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

    :goto_18
    invoke-interface {p1, p3, p4}, Lkuc;->c(Lkub;Llko;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p4, Llko;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    :goto_1c
    const v0, 0x17

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
.end method


# virtual methods
.method public final a()Loyd;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lldy;->b:Lkuc;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lkuc;->a()Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b()Loyd;
    .locals 1

    goto/32 :goto_4

    nop

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
    invoke-static {p0}, Lrgw;->H(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0, p0}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lkav;->m(Ljava/util/List;)Lkqa;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lldy;->c:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    new-instance v0, Loyg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Lkub;Llko;)V
    .locals 38

    goto/32 :goto_225

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v32, v6

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

    nop

    :goto_2
    move-object v1, v9

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v22, v11

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_4
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    :goto_6
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    nop

    nop

    :goto_7
    move-object v1, v9

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_216

    nop

    nop

    nop

    nop

    nop

    :cond_0
    :goto_9
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    const/4 v15, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_d
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v5, v13, Lldw;->b:Lljk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object/from16 v1, v37

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    :goto_10
    move-object/from16 v34, v7

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move/from16 v31, v11

    nop

    goto/32 :goto_332

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_343

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_1ef

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, v1

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2ff

    nop

    nop

    :goto_17
    const-string v4, "Aborting HDR+ shot."

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v13}, Lldw;->b()V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v14, 0x0

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v14, 0x0

    nop

    nop

    :goto_1b
    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    :goto_1e
    :try_start_0
    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    iget-object v4, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    move-object v14, v4

    nop

    nop

    check-cast v14, Ljava/util/List;

    nop

    nop

    iget-object v4, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object v15, v4

    nop

    check-cast v15, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1d

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    :goto_21
    invoke-direct {v2, v4, v11, v3, v12}, Lldy;->da190e616797844b591057d0190e7728m(Lkuc;Ljava/util/List;Lkub;Llko;)V

    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    :goto_22
    move-object v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v5, v5, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    :goto_24
    move/from16 v10, v16

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :goto_25
    move-object v2, v1

    nop

    :goto_26
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_27
    move-object v1, v9

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

    :goto_28
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_29
    :try_start_1
    iget-object v14, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14}, Lpdf;->g()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    goto/32 :goto_15e

    nop

    nop

    :goto_2a
    const-string v5, "Aborting HDR+ shot."

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v7, 0x3

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move/from16 v31, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_27a

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v4, 0x0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2e
    move-object v15, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_136

    nop

    nop

    nop

    nop

    nop

    :catch_0
    :try_start_2
    sget-object v3, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    nop

    const/16 v4, 0xd55

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    const-string v4, "Failed to acquire metering frame."

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_27

    :goto_30
    :try_start_3
    invoke-virtual {v5}, Lpde;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v4, v3, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_33
    goto/16 :goto_327

    nop

    :catch_1
    move-exception v0

    nop

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

    :goto_34
    goto/16 :goto_26

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

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v5, Lpge;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_36
    goto/16 :goto_23b

    nop

    :cond_1
    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v5}, Likn;->a(Llxm;)V

    :goto_38
    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_73

    nop

    nop

    :catch_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3a
    if-eq v8, v11, :cond_2

    nop

    nop

    goto/32 :goto_2d4

    nop

    nop

    :cond_2
    :try_start_4
    iget-object v3, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lcom/google/googlex/gcam/FrameRequest;

    nop

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameRequest;->e()Lcom/google/googlex/gcam/CyclopsParameters;

    move-result-object v3

    nop

    nop

    nop

    nop

    move-object v4, v1

    nop

    nop

    check-cast v4, Lpip;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lpip;->c:Lryy;

    nop

    nop

    invoke-static {v4}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v4

    nop

    invoke-interface {v4}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v4

    nop

    nop

    new-instance v5, Ljlz;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v29, v1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x6

    nop

    nop

    invoke-direct {v5, v6, v1}, Ljlz;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v4, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_9
    .catch Lpfi; {:try_start_4 .. :try_end_4} :catch_9
    .catchall {:try_start_4 .. :try_end_4} :catchall_1f

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_10f

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_27c

    nop

    nop

    nop

    nop

    nop

    :catch_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31b

    nop

    nop

    :goto_3e
    iput-object v5, v13, Lldw;->d:Lljj;

    nop

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

    :goto_3f
    iget-object v3, v10, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    :goto_40
    const-string v4, "PckPostZslCaptureImageCaptureCommand#captureImage"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    :goto_41
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move-object v15, v8

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_1e

    nop

    :goto_45
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v18, 0x1

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    :goto_48
    move-object/from16 v1, v37

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_49
    if-nez v33, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_3
    :try_start_5
    invoke-virtual/range {v33 .. v33}, Lgij;->close()V

    :goto_4a
    invoke-virtual {v13}, Lldw;->close()V

    iget-object v3, v1, Lldx;->b:Lljk;

    nop

    nop

    nop

    const-string v4, "Final"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v25, :cond_4

    nop

    invoke-interface/range {v25 .. v25}, Lpge;->close()V

    :cond_4
    if-eqz v15, :cond_5

    nop

    nop

    nop

    nop

    invoke-interface {v15}, Lpge;->close()V

    :cond_5
    iget-object v1, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v1}, Lpdf;->g()V
    :try_end_5
    .catch Lhui; {:try_start_5 .. :try_end_5} :catch_18
    .catchall {:try_start_5 .. :try_end_5} :catchall_20

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object/from16 v36, v20

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_31e

    nop

    nop

    :goto_4e
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    :goto_4f
    invoke-interface {v3, v4}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_65

    nop

    nop

    :goto_50
    move-object v3, v0

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v6, v13, Lldw;->c:Ljava/util/List;

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v34, v7

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    :goto_53
    xor-int/lit8 v14, v14, 0x1

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_282

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    move-object v3, v4

    nop

    nop

    goto/32 :goto_188

    nop

    nop

    :goto_56
    move-object/from16 v34, v7

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_57
    move-object v11, v1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_58
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    :goto_59
    move/from16 v14, v23

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_5b
    move-object/from16 v33, v18

    nop

    nop

    nop

    goto/32 :goto_23e

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    :goto_5d
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    nop

    :goto_5e
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    move-object v14, v5

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_26e

    nop

    nop

    :cond_6
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    move-object/from16 v37, v9

    nop

    nop

    nop

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v5, "zslRingFuffer.lock()"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_2ce

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_256

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v3, v13, Lldw;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_2ea

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_68
    move-object v11, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_2fc

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_6a
    const/4 v11, 0x2

    nop

    nop

    nop

    goto/32 :goto_316

    nop

    nop

    :goto_6b
    move-object/from16 v34, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v25, v3

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_6d
    move-object/from16 v33, v18

    nop

    nop

    nop

    goto/32 :goto_28a

    nop

    nop

    nop

    :goto_6e
    iget-object v1, v2, Lldy;->k:Lpdf;

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

    :goto_6f
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    const/16 v3, 0xd73

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

    :goto_71
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move-object v11, v2

    nop

    nop

    :goto_73
    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_1c9

    nop

    nop

    nop

    nop

    :catch_4
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_76
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a5

    nop

    nop

    nop

    :goto_77
    iget-object v3, v12, Llko;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_78
    move-object/from16 v1, v29

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

    :goto_79
    move-object/from16 v32, v6

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    move-object v15, v9

    nop

    goto/32 :goto_342

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    move-object/from16 v22, v11

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v1, v2, Lldy;->k:Lpdf;

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

    :goto_7d
    move-object/from16 v23, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    move-object v4, v0

    nop

    nop

    goto/32 :goto_30a

    nop

    nop

    :goto_7f
    invoke-interface {v3}, Lktq;->c()Lktp;

    move-result-object v3

    nop

    goto/32 :goto_309

    nop

    nop

    nop

    nop

    :goto_80
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_81
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_82
    const/4 v14, 0x0

    nop

    :goto_83
    goto/32 :goto_1d1

    nop

    nop

    :goto_84
    move-object v4, v0

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

    nop

    :goto_85
    move-object/from16 v15, v20

    nop

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const/4 v14, 0x0

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_88
    const-string v4, "PckPostZslCaptureImageCaptureCommand#getZslFramesAsync"

    nop

    goto/32 :goto_2df

    nop

    nop

    :goto_89
    move-wide/from16 v4, v26

    nop

    goto/32 :goto_1b0

    nop

    nop

    :goto_8a
    move-object v1, v0

    nop

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

    :goto_8b
    rsub-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_8c
    const-string v4, "PckPostZslCaptureImageCaptureCommand#captureImage"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    :goto_8d
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    :goto_8e
    :try_start_6
    invoke-virtual {v1}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v16

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v16}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v16

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_23

    goto/32 :goto_2eb

    nop

    nop

    nop

    :goto_8f
    move-object v4, v0

    nop

    nop

    nop

    nop

    :goto_90
    :try_start_7
    sget-object v5, Lldx;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-interface {v5, v4}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v4

    nop

    nop

    check-cast v4, Lscz;

    nop

    const/16 v5, 0xd62

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "Failed to awaitComplete, aborting wait."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    move/from16 v8, v35

    nop

    nop

    nop

    nop

    :goto_91
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    if-ge v8, v4, :cond_7

    nop

    nop

    nop

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lpim;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lpim;->close()V

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_91

    nop

    nop

    nop

    :cond_7
    invoke-interface {v3}, Lpge;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :try_start_8
    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-virtual/range {v34 .. v34}, Lpim;->close()V

    move-object/from16 v15, v36

    nop

    nop

    nop

    nop

    goto/16 :goto_86

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    goto/16 :goto_fa

    nop

    nop

    nop

    :goto_92
    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-virtual/range {v34 .. v34}, Lpim;->close()V

    throw v2

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    :catchall_7
    move-exception v0

    nop

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    :goto_93
    iget-object v1, v2, Lldy;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v5, v13, Lldw;->b:Lljk;

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    move-object/from16 v22, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_96
    move-object/from16 v1, v16

    nop

    goto/32 :goto_2bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move-object v3, v2

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-interface/range {p1 .. p1}, Lkub;->close()V

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    move-object v1, v9

    nop

    nop

    nop

    nop

    :goto_9a
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    move-object/from16 v34, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_313

    nop

    nop

    nop

    nop

    :goto_9c
    goto :goto_9a

    nop

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move-object/from16 v3, p1

    nop

    nop

    :goto_9e
    goto/32 :goto_264

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    const/16 v6, 0xd7b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30c

    nop

    nop

    :goto_a0
    check-cast v8, Lpge;

    nop

    goto/32 :goto_239

    nop

    nop

    :goto_a1
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    :goto_a2
    goto/32 :goto_18

    nop

    nop

    :goto_a3
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_a4
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_a5
    move/from16 v35, v8

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_a7
    sub-int/2addr v5, v7

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

    nop

    :goto_a8
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_311

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    move-object/from16 v29, v1

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    :goto_aa
    move-object/from16 v22, v11

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v4, v2, Lldy;->k:Lpdf;

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

    :goto_ad
    move-object v3, v2

    nop

    nop

    goto/32 :goto_318

    nop

    nop

    nop

    nop

    :goto_ae
    const/16 v23, 0x1

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2fe

    nop

    nop

    :goto_b0
    const/16 v17, 0x1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_2c8

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-interface {v1, v10}, Likv;->m(Linb;)V

    goto/32 :goto_174

    nop

    nop

    :goto_b3
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :catch_5
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_b4
    goto/16 :goto_2c9

    nop

    nop

    :catchall_9
    move-exception v0

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_b5
    move-object/from16 v3, p1

    nop

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

    :goto_b6
    move-object/from16 v26, v15

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    :goto_b8
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    :goto_ba
    move-object/from16 v25, v3

    nop

    :try_start_9
    const-string v3, "addRef on an object which has been closed."

    nop

    nop

    nop

    nop

    invoke-static {v14, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    iget v3, v7, Lgij;->c:I

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    iput v3, v7, Lgij;->c:I

    nop

    nop

    monitor-exit v6

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_18

    :try_start_a
    new-instance v3, Lhkf;

    nop

    const/4 v6, 0x5

    nop

    invoke-direct {v3, v9, v2, v7, v6}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v26

    nop

    iget-object v6, v7, Lgij;->b:Lpci;

    nop

    move-object/from16 v20, v6

    nop

    nop

    nop

    nop

    nop

    check-cast v20, Lpin;

    nop

    nop

    nop

    move-object/from16 v16, v4

    nop

    nop

    move-object/from16 v17, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v5

    nop

    move-object/from16 v19, v15

    nop

    nop

    nop

    nop

    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v22}, Llez;->f(Linb;Loel;Lpro;Lpin;Lpci;Lijd;)Z

    move-result v3

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1c

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move-object/from16 v26, v15

    nop

    nop

    nop

    :cond_9
    :goto_bc
    :try_start_b
    iget-object v7, v9, Lldx;->f:Lpdf;

    nop

    const-string v8, "PostShutterCptCtlr_Frames#awaitCompletePsl"

    nop

    nop

    nop

    invoke-interface {v7, v8}, Lpdf;->f(Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v7, v8}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1d

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-direct {v6, v13, v4, v7, v10}, Llcc;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_1b8

    nop

    nop

    nop

    :goto_be
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_bf
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    nop

    nop

    :goto_c0
    move-object/from16 v33, v7

    nop

    nop

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

    :goto_c1
    move-object v4, v0

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    nop

    :goto_c2
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_c3
    move-object v9, v3

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_13d

    nop

    :catchall_a
    move-exception v0

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    :goto_c5
    move-object/from16 v11, v22

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    if-nez v7, :cond_a

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_a
    :try_start_c
    invoke-virtual {v7}, Lgij;->close()V

    :goto_c7
    invoke-virtual {v13}, Lldw;->close()V

    iget-object v3, v9, Lldx;->b:Lljk;

    nop

    const-string v4, "Final"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v25, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface/range {v25 .. v25}, Lpge;->close()V

    :cond_b
    if-eqz v8, :cond_c

    nop

    nop

    nop

    invoke-interface {v8}, Lpge;->close()V

    :cond_c
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_c
    .catch Lhui; {:try_start_c .. :try_end_c} :catch_12
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const/16 v8, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_2fa

    nop

    nop

    :catchall_b
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2f9

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-interface {v6}, Lljk;->k()Ljava/util/List;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v6, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v6

    nop

    goto/32 :goto_294

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const/16 v25, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    :goto_cd
    move-object/from16 v33, v7

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    move-object v2, v1

    nop

    :goto_cf
    goto/32 :goto_290

    nop

    nop

    :goto_d0
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    :goto_d1
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_d2
    iget-object v6, v13, Lldw;->c:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_94

    nop

    nop

    :goto_d4
    move-object v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_d5
    if-nez v5, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    add-int/lit8 v8, v35, 0x1

    nop

    nop

    goto/32 :goto_319

    nop

    nop

    nop

    :goto_d7
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    :goto_d8
    move-object/from16 v36, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    :goto_d9
    if-nez v3, :cond_e

    nop

    nop

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    :cond_e
    :try_start_d
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v6, Llez;->f:Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4e

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Lcom/google/googlex/gcam/BurstSpec;

    nop

    invoke-direct {v1}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_25

    goto/32 :goto_2b7

    nop

    nop

    nop

    nop

    :goto_da
    move/from16 v35, v8

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

    :goto_db
    goto/16 :goto_23d

    nop

    nop

    nop

    nop

    :goto_dc
    goto/32 :goto_29f

    nop

    nop

    :goto_dd
    move-object v4, v0

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-interface {v5}, Lpge;->d()Lpro;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_df
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e0
    const/4 v8, 0x0

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    nop

    :goto_e1
    if-lt v6, v5, :cond_f

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    move-object v3, v6

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

    :goto_e3
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_210

    nop

    nop

    :goto_e4
    goto/16 :goto_2b4

    nop

    nop

    nop

    :catch_6
    move-exception v0

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    goto/16 :goto_19f

    nop

    :catchall_c
    move-exception v0

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-interface {v3, v4}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v3

    nop

    nop

    nop

    :goto_e7
    goto/32 :goto_252

    nop

    nop

    nop

    :goto_e8
    move-object/from16 v20, v36

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_e9
    move/from16 v24, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e5

    nop

    nop

    :goto_ea
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    :goto_eb
    goto/16 :goto_321

    nop

    :goto_ec
    goto/32 :goto_320

    nop

    nop

    :goto_ed
    if-nez v10, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25d

    nop

    nop

    :cond_10
    goto/32 :goto_304

    nop

    nop

    :goto_ee
    move/from16 v35, v8

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_ef
    if-nez v4, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33f

    nop

    nop

    :cond_11
    :try_start_e
    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V
    :try_end_e
    .catch Ljava/lang/InterruptedException; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_2b

    :try_start_f
    invoke-virtual {v5}, Lpde;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_14

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    :goto_f0
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    :goto_f1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    if-nez v4, :cond_12

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_205

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v1, v2, Lldy;->b:Lkuc;

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    move-object/from16 v15, v20

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    goto/16 :goto_287

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    goto/32 :goto_2c5

    nop

    nop

    nop

    nop

    :goto_f7
    goto/16 :goto_31d

    nop

    nop

    nop

    nop

    :catchall_d
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    const/16 v5, 0xd78

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const/4 v14, 0x0

    nop

    nop

    :goto_fa
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_fb
    goto/16 :goto_90

    nop

    nop

    nop

    nop

    :goto_fc
    :try_start_10
    sget-object v5, Lsxd;->h:Lsxd;

    nop

    nop

    nop

    nop

    nop
    :try_end_10
    .catch Ljava/lang/InterruptedException; {:try_start_10 .. :try_end_10} :catch_16
    .catch Lpfi; {:try_start_10 .. :try_end_10} :catch_16
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    :goto_fd
    move-object/from16 v34, v7

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    if-eqz v26, :cond_13

    nop

    goto/32 :goto_a2

    nop

    nop

    :cond_13
    goto/32 :goto_21e

    nop

    nop

    :goto_ff
    if-eqz v4, :cond_14

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_1ff

    nop

    nop

    :goto_100
    goto/16 :goto_2cd

    nop

    nop

    :catch_7
    move-exception v0

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-interface {v1}, Lpdf;->g()V

    goto/32 :goto_157

    nop

    nop

    :goto_102
    move-object/from16 v12, p2

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_103
    move-object/from16 v21, v6

    nop

    nop

    nop

    :try_start_11
    invoke-static {v3}, Lcom/google/googlex/gcam/CyclopsParameters;->a(Lcom/google/googlex/gcam/CyclopsParameters;)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    invoke-static {v5, v6, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_CyclopsParameters__SWIG_1(JLcom/google/googlex/gcam/CyclopsParameters;)J

    move-result-wide v5

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    invoke-direct {v7, v5, v6, v3}, Lcom/google/googlex/gcam/CyclopsParameters;-><init>(JZ)V

    iget-object v6, v10, Linb;->p:Lioy;

    nop

    new-instance v5, Liqi;

    nop

    nop

    nop

    nop

    nop
    :try_end_11
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_11} :catch_d
    .catch Lpfi; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_19

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move-object v3, v0

    nop

    :try_start_12
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    const/16 v4, 0xd64

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    const-string v4, "Failed ZSL processing with missing resources returning with empty payload."

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_105
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_15

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Lpge;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpge;->close()V

    goto :goto_105

    nop

    nop

    nop

    nop

    nop

    :cond_15
    iget-object v2, v1, Lldx;->l:Liqk;

    nop

    iget-object v3, v10, Linb;->p:Lioy;

    nop

    nop

    nop

    invoke-virtual {v2, v12, v3}, Liqk;->a(Llko;Lioy;)V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_15

    :try_start_13
    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    invoke-interface {v4}, Lpdf;->g()V

    goto/32 :goto_22a

    nop

    nop

    nop

    :goto_107
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_108
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    :goto_109
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_261

    nop

    nop

    :goto_10a
    if-gtz v5, :cond_16

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    nop

    :cond_16
    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/4 v14, 0x1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10c
    move v11, v3

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_266

    nop

    nop

    nop

    nop

    :goto_10e
    move-object v2, v1

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_279

    nop

    nop

    nop

    nop

    :goto_110
    if-eq v4, v5, :cond_17

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    const/4 v14, 0x0

    nop

    nop

    :try_start_14
    invoke-interface/range {v32 .. v32}, Lpge;->b()Lpgi;

    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    const-string v5, "processPslFrame"

    nop

    nop

    nop

    nop

    invoke-interface {v3, v5}, Lpdf;->h(Ljava/lang/String;)V

    iget-object v3, v1, Lldx;->d:Lleo;

    nop

    nop

    nop

    move-object/from16 v16, v3

    nop

    move-object/from16 v17, v32

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    nop

    nop

    nop

    move/from16 v20, v24

    nop

    nop

    nop

    move-object/from16 v21, v4

    nop

    invoke-virtual/range {v16 .. v21}, Lleo;->e(Lpge;Linb;IILsxd;)I

    move-result v19

    nop

    nop
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_b
    .catch Lpfi; {:try_start_14 .. :try_end_14} :catch_b
    .catchall {:try_start_14 .. :try_end_14} :catchall_6

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    const/16 v23, 0x1

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

    :goto_113
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/32 :goto_16b

    nop

    nop

    :goto_115
    goto/16 :goto_1c2

    nop

    nop

    nop

    :goto_116
    :try_start_15
    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    const-string v5, "Frames#awaitComplete"

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    move-object/from16 v4, p0

    nop

    iget-object v4, v4, Lldy;->e:Likv;

    nop

    check-cast v4, Lila;

    nop

    nop

    nop

    iget-object v4, v4, Lila;->aa:Llyv;

    nop

    nop

    nop

    iget-object v4, v4, Llyv;->e:Lhoh;

    nop

    nop

    nop

    invoke-static {v6, v4}, Lldx;->b(Lpge;Lhoh;)V

    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    invoke-interface {v4}, Lpdf;->g()V

    invoke-interface {v6}, Lpge;->b()Lpgi;

    move-result-object v4

    nop

    nop

    nop

    if-eqz v4, :cond_29

    nop

    invoke-interface {v6}, Lpge;->h()Z

    move-result v4

    nop

    nop

    nop

    if-eqz v4, :cond_29

    nop

    nop

    nop

    nop

    iget-object v4, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    check-cast v4, Lcom/google/googlex/gcam/FrameRequest;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v4

    nop

    nop

    sget-object v5, Lsxd;->e:Lsxd;

    nop

    nop

    nop

    nop
    :try_end_15
    .catch Ljava/lang/InterruptedException; {:try_start_15 .. :try_end_15} :catch_16
    .catch Lpfi; {:try_start_15 .. :try_end_15} :catch_16
    .catchall {:try_start_15 .. :try_end_15} :catchall_4

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    :goto_117
    move-object/from16 v1, v37

    nop

    nop

    nop

    goto/32 :goto_312

    nop

    nop

    nop

    nop

    :goto_118
    move-object v2, v1

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    nop

    :goto_119
    move/from16 v35, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v13}, Lldw;->b()V

    goto/32 :goto_21b

    nop

    nop

    :goto_11b
    const-string v6, "post_getFilteredFrames"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    :goto_11c
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    goto/16 :goto_121

    nop

    nop

    nop

    nop

    nop

    :catchall_e
    move-exception v0

    nop

    nop

    goto/32 :goto_235

    nop

    nop

    nop

    :goto_11e
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const-string v4, "No good metadata found."

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_120
    goto/16 :goto_19d

    nop

    :goto_121
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    move-object/from16 v36, v20

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    :goto_123
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    :try_start_16
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "PckPostShutterCaptureController#processPayload"

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v9, v1, Lldy;->d:Lldx;

    nop

    iget-object v3, v1, Lldy;->h:Lije;

    nop

    nop

    nop

    invoke-virtual {v3}, Lije;->a()Lijd;

    move-result-object v22

    nop

    nop

    nop

    nop

    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    invoke-interface {v15, v3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    if-eqz v3, :cond_18

    nop

    nop

    iget-object v4, v9, Lldx;->e:Lijp;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    invoke-virtual {v4, v5, v6}, Lijp;->b(J)Lpge;

    move-result-object v3

    nop

    nop

    goto :goto_124

    nop

    nop

    nop

    :cond_18
    const/4 v3, 0x0

    nop

    :goto_124
    if-eqz v3, :cond_1b

    nop

    nop

    invoke-interface {v3}, Lpge;->d()Lpro;

    move-result-object v4

    nop

    if-eqz v4, :cond_1a

    nop

    sget-object v5, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v4, v5}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    sget-object v6, Landroid/hardware/camera2/CaptureResult;->LENS_FOCAL_LENGTH:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v15, v6}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v9, Lldx;->i:Ltbt;

    nop

    nop

    invoke-virtual {v7, v4}, Ltbt;->b(Lpro;)F

    move-result v4

    nop

    nop

    iget-object v7, v9, Lldx;->i:Ltbt;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v15}, Ltbt;->b(Lpro;)F

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1a

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/Float;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-eqz v5, :cond_1a

    nop

    nop

    cmpl-float v4, v4, v7

    nop

    nop

    if-gez v4, :cond_19

    nop

    nop

    nop

    goto :goto_125

    nop

    nop

    :cond_19
    move-object v8, v3

    nop

    goto :goto_126

    nop

    nop

    nop

    :cond_1a
    :goto_125
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    const/16 v5, 0xd53

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    const-string v5, "Skipping cached PSL frame from different source or wrong TeT."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v3}, Lpge;->close()V

    :cond_1b
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_126
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "PckPostShutterCaptureController#processPayload"

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lhst;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    const-string v4, "PostShutterCptCtlr_frameServer#acquireSession"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_16
    .catch Lhui; {:try_start_16 .. :try_end_16} :catch_f
    .catchall {:try_start_16 .. :try_end_16} :catchall_22

    :try_start_17
    iget-object v3, v9, Lldx;->k:Lpik;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lpik;->u()Lpin;

    move-result-object v3

    nop

    nop

    nop

    new-instance v4, Lgij;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3}, Lgij;-><init>(Lpci;)V
    :try_end_17
    .catch Ljava/lang/InterruptedException; {:try_start_17 .. :try_end_17} :catch_13
    .catch Lpfi; {:try_start_17 .. :try_end_17} :catch_13
    .catch Lhui; {:try_start_17 .. :try_end_17} :catch_f
    .catchall {:try_start_17 .. :try_end_17} :catchall_22

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_127
    move-object/from16 v22, v11

    nop

    nop

    nop

    nop

    nop

    :try_start_18
    const-string v11, "zslAsyncBuffer#close"

    nop

    nop

    nop

    invoke-interface {v14, v11}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v13}, Lldw;->close()V

    iget-object v11, v9, Lldx;->f:Lpdf;

    nop

    invoke-interface {v11}, Lpdf;->g()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_13

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_128
    if-nez v4, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_1c
    goto/32 :goto_291

    nop

    nop

    :goto_129
    move-object/from16 v29, v1

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    nop

    :goto_12a
    move-object/from16 v20, v8

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    move-object v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_12f
    move-object/from16 v22, v11

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    nop

    :goto_130
    move-object v7, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_131
    move-object/from16 v34, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v7}, Lscs;->c()Lsdo;

    move-result-object v7

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

    :goto_133
    invoke-interface {v5}, Lpge;->d()Lpro;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_134
    new-instance v7, Ljava/util/ArrayList;

    nop

    goto/32 :goto_241

    nop

    nop

    :goto_135
    move-object v4, v0

    nop

    nop

    nop

    nop

    :goto_136
    :try_start_19
    invoke-virtual {v5}, Lpde;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1a

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    :goto_137
    if-nez v3, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :cond_1d
    :try_start_1a
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_139

    nop

    nop

    nop

    nop

    :goto_138
    if-eqz v20, :cond_1e

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    goto :goto_139

    nop

    nop

    nop

    nop

    :cond_1e
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_139
    add-int v24, v11, v4

    nop

    nop

    if-nez v24, :cond_27

    nop

    nop

    nop

    iget-object v1, v9, Lldx;->l:Liqk;

    nop

    nop

    nop

    nop

    iget-object v2, v10, Linb;->p:Lioy;

    nop

    nop

    nop

    invoke-virtual {v1, v12, v2}, Liqk;->a(Llko;Lioy;)V

    new-instance v1, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_1b

    goto/32 :goto_2f7

    nop

    nop

    :goto_13a
    move-object v4, v0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_13b
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13c
    move/from16 v16, v28

    nop

    nop

    :goto_13d
    :try_start_1b
    invoke-interface/range {v32 .. v32}, Lpge;->close()V
    :try_end_1b
    .catch Ljava/lang/InterruptedException; {:try_start_1b .. :try_end_1b} :catch_17
    .catch Lpfi; {:try_start_1b .. :try_end_1b} :catch_17
    .catchall {:try_start_1b .. :try_end_1b} :catchall_11

    goto/32 :goto_218

    nop

    nop

    :goto_13e
    move-object v1, v9

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

    :goto_13f
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    :goto_140
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    :goto_141
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    :goto_142
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_143
    move-object/from16 v36, v20

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    goto :goto_145

    nop

    nop

    nop

    nop

    nop

    :catch_8
    :try_start_1c
    sget-object v2, Lldx;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    nop

    nop

    const/16 v11, 0xd45

    nop

    nop

    nop

    invoke-interface {v2, v11}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    check-cast v2, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v11, "Error getting ZSL frames"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v11}, Lscz;->s(Ljava/lang/String;)V

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_145
    invoke-static {v2}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v11

    nop

    nop

    invoke-interface {v2, v11}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    iget-object v11, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v11}, Lpdf;->g()V

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v11

    nop

    nop

    nop

    nop

    nop
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/32 :goto_2e0

    nop

    nop

    nop

    nop

    nop

    :goto_146
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_340

    nop

    nop

    nop

    nop

    nop

    :goto_147
    invoke-interface {v1, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_1d8

    nop

    nop

    :goto_148
    invoke-interface {v4}, Llxa;->j()Llxm;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    :goto_149
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_14a
    goto/16 :goto_1f1

    nop

    :catchall_f
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    nop

    :goto_14c
    move-object/from16 v3, p1

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    :goto_14d
    const/16 v16, 0x0

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    goto/16 :goto_280

    nop

    :goto_14f
    goto/32 :goto_324

    nop

    nop

    nop

    nop

    :goto_150
    move-object/from16 v36, v20

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_151
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    :goto_152
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v4, v2, Lldy;->e:Likv;

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    :goto_154
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_155
    move-object/from16 v3, p1

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    goto/16 :goto_9a

    nop

    :catchall_10
    move-exception v0

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_157
    invoke-virtual {v13}, Lldw;->close()V

    goto/32 :goto_2d5

    nop

    nop

    nop

    nop

    :goto_158
    move-object/from16 v34, v7

    nop

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    :goto_159
    move-object/from16 v33, v18

    nop

    nop

    nop

    goto/32 :goto_274

    nop

    nop

    nop

    nop

    :goto_15a
    move-object v15, v8

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_15b
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_15c
    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15d
    move-object/from16 v33, v18

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_15e
    if-eqz v3, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    :try_start_1d
    invoke-virtual {v9, v2}, Lldx;->a(Lkub;)V

    iget-object v14, v9, Lldx;->f:Lpdf;

    nop
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_17

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    iget-object v4, v2, Lldy;->f:Likn;

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_161
    invoke-interface {v6, v14, v15}, Llxa;->E(ZZ)V

    goto/32 :goto_2f6

    nop

    nop

    nop

    :goto_162
    new-instance v11, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_163
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_20d

    nop

    nop

    nop

    :goto_164
    move-object/from16 v27, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_165
    invoke-interface {v4, v6}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_2a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_166
    invoke-interface {v5}, Lljk;->a()Lljj;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_167
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v13}, Lldw;->a()I

    move-result v3

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_169
    goto/16 :goto_1c2

    nop

    nop

    nop

    nop

    :catchall_11
    move-exception v0

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    goto/16 :goto_92

    nop

    :catch_9
    move-exception v0

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_16b
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    :goto_16c
    move-object v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_16d
    goto/16 :goto_13d

    nop

    nop

    :catchall_12
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_16e
    goto/16 :goto_2c6

    nop

    :catchall_13
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    :goto_16f
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_170
    invoke-interface {v5}, Lpgo;->b()Loyd;

    move-result-object v5

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    nop

    nop

    nop

    :goto_171
    goto/16 :goto_259

    nop

    nop

    :goto_172
    goto/32 :goto_341

    nop

    nop

    nop

    :goto_173
    sget-object v4, Lldy;->a:Lsdb;

    nop

    goto/32 :goto_17c

    nop

    nop

    :goto_174
    iget-object v1, v2, Lldy;->f:Likn;

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_175
    move-object/from16 v3, v32

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    :goto_176
    iput-object v6, v13, Lldw;->c:Ljava/util/List;

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    nop

    :goto_177
    move-object/from16 v22, v11

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_178
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_179
    iget-object v5, v13, Lldw;->b:Lljk;

    nop

    nop

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    move-object v1, v9

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    move-object/from16 v23, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_345

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    move-object v15, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a1

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    move-object/from16 v36, v20

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_17f
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    :goto_180
    move-object v6, v4

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_181
    move-object/from16 v11, v22

    nop

    :goto_182
    :try_start_1e
    instance-of v4, v1, Lhuf;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_20

    nop

    sget-object v4, Lldy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/16 v5, 0xd79

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    const-string v5, "HDR+ shot aborted."

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    move-object v10, v14

    nop

    nop

    nop

    nop

    nop

    :cond_20
    sget-object v4, Lldy;->a:Lsdb;

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v5

    nop

    nop

    const/16 v6, 0xd74

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    const-string v6, "Error executing ZSl command: %s"

    nop

    nop

    invoke-virtual {v1}, Lhui;->getMessage()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    invoke-interface {v5, v6, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_16

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    const/16 v23, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_184
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    :goto_185
    invoke-interface {v3}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_186
    invoke-virtual {v6, v7}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_1e4

    nop

    nop

    :goto_187
    iget-object v4, v3, Lldx;->f:Lpdf;

    nop

    goto/32 :goto_2f4

    nop

    nop

    nop

    :goto_188
    goto/16 :goto_199

    nop

    nop

    nop

    nop

    :catchall_14
    move-exception v0

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    :goto_189
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    :goto_18a
    move-object v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    move-object v4, v0

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    goto/16 :goto_10f

    nop

    nop

    nop

    :goto_18d
    :try_start_1f
    iget-object v14, v9, Lldx;->f:Lpdf;

    nop
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    :try_start_20
    const-string v1, "pckZslHdrPlusProcessor#beginPayload"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v14, v1}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, v9, Lldx;->d:Lleo;

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v10, v15, v14}, Lleo;->d(Linb;Lpro;Z)V

    iget-object v1, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_10

    :try_start_21
    iget-object v1, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    const-string v14, "pckZslHdrPlusProcessor#processZslPayload"

    nop

    nop

    invoke-interface {v1, v14}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v1, v9, Lldx;->d:Lleo;

    nop

    nop

    nop

    nop

    nop

    sget-object v21, Lrsa;->a:Lrsa;

    nop

    const/16 v19, 0x1

    nop

    move-object/from16 v16, v1

    nop

    move-object/from16 v17, v2

    nop

    move-object/from16 v18, v10

    nop

    nop

    move/from16 v20, v11

    nop

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v21}, Lleo;->c(Ljava/util/List;Linb;ZILrss;)I

    move-result v19

    nop

    nop

    nop
    :try_end_21
    .catch Lpfi; {:try_start_21 .. :try_end_21} :catch_1
    .catchall {:try_start_21 .. :try_end_21} :catchall_28

    :try_start_22
    iget-object v1, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_d

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    move-object/from16 v34, v7

    nop

    goto/32 :goto_f0

    nop

    nop

    :goto_18f
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_190
    move-object v5, v1

    nop

    nop

    goto/32 :goto_2e7

    nop

    nop

    nop

    nop

    nop

    :goto_191
    iget-object v5, v10, Linb;->w:Llko;

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

    :goto_192
    if-lez v0, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    :cond_21
    goto/32 :goto_2af

    nop

    :goto_193
    if-gt v7, v5, :cond_22

    nop

    nop

    nop

    nop

    goto/32 :goto_2a0

    nop

    :cond_22
    goto/32 :goto_23f

    nop

    nop

    nop

    :goto_194
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    :goto_195
    move-object/from16 v32, v6

    nop

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

    :goto_196
    if-eqz v14, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_323

    nop

    nop

    :cond_23
    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    :goto_197
    goto/16 :goto_114

    nop

    nop

    nop

    nop

    nop

    :catchall_15
    move-exception v0

    nop

    nop

    goto/32 :goto_326

    nop

    nop

    nop

    :goto_198
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_199
    goto/32 :goto_27f

    nop

    nop

    :goto_19a
    move-object/from16 v3, p1

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    :goto_19c
    move/from16 v28, v16

    nop

    nop

    nop

    :goto_19d
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_19e
    move-object v1, v9

    nop

    :goto_19f
    goto/32 :goto_305

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    move-object v14, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a1
    move-object/from16 v33, v7

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_1a2
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_1a3
    move-object v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a4
    goto/16 :goto_2c9

    nop

    nop

    nop

    :catchall_16
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27b

    nop

    nop

    :goto_1a5
    invoke-interface {v4, v10}, Likv;->m(Linb;)V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_1a6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    move-object/from16 v29, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    :goto_1a9
    if-gtz v3, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e4

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1aa
    move-object v1, v9

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

    :goto_1ab
    if-nez v7, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    :cond_25
    :try_start_23
    iget-object v11, v9, Lldx;->g:Llco;

    nop

    nop

    iget-object v14, v7, Lgij;->b:Lpci;

    nop

    nop

    nop

    iget-object v2, v12, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Lpin;

    nop

    nop

    invoke-virtual {v11, v14, v2}, Llco;->b(Lpin;Llxa;)V

    iget-object v2, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    const-string v11, "closingSession"

    nop

    nop

    nop

    invoke-interface {v2, v11}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {v7}, Lgij;->close()V
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_f

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ac
    iget-object v3, v3, Lldx;->f:Lpdf;

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    goto/16 :goto_232

    nop

    nop

    nop

    nop

    :catch_a
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    goto/16 :goto_ab

    nop

    :catchall_17
    move-exception v0

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_1af
    invoke-interface {v5}, Lljk;->g()Lpgo;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_1b0
    goto/16 :goto_29

    nop

    nop

    :catchall_18
    move-exception v0

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    move-object v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    :goto_1b2
    move-object/from16 v36, v20

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    :goto_1b3
    goto/16 :goto_216

    nop

    nop

    nop

    nop

    :cond_26
    :goto_1b4
    goto/32 :goto_12d

    nop

    nop

    :goto_1b5
    sget-object v1, Lldy;->a:Lsdb;

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

    :goto_1b6
    goto/16 :goto_31f

    nop

    nop

    nop

    :catchall_19
    move-exception v0

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

    nop

    :goto_1b7
    iget-object v1, v2, Lldy;->f:Likn;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b8
    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    goto/16 :goto_32d

    nop

    nop

    nop

    nop

    :cond_27
    :try_start_24
    iget-object v4, v9, Lldx;->b:Lljk;

    nop

    invoke-interface {v4}, Lljk;->g()Lpgo;

    move-result-object v4

    nop

    nop

    invoke-interface {v4}, Lpgo;->b()Loyd;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Loyd;->cM()Ljava/lang/Object;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1d

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    move-object/from16 v34, v7

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

    nop

    :goto_1bb
    if-eqz v1, :cond_28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_289

    nop

    :cond_28
    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    :goto_1bc
    iget-object v4, v2, Lldy;->b:Lkuc;

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

    :goto_1bd
    move-object/from16 v2, p0

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1be
    move-object v4, v0

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    :goto_1bf
    move-object/from16 v33, v7

    nop

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c0
    move-object/from16 v3, v32

    nop

    nop

    :try_start_25
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c1

    nop

    :catch_b
    move-exception v0

    nop

    nop

    move-object/from16 v3, v32

    nop

    nop

    nop

    nop

    goto/16 :goto_2ea

    nop

    nop

    nop

    nop

    nop

    :cond_29
    move-object/from16 v29, v1

    nop

    nop

    move-object v3, v6

    nop

    move-object/from16 v34, v7

    nop

    nop

    move/from16 v35, v8

    nop

    nop

    nop

    nop

    move-object v1, v9

    nop

    nop

    move/from16 v31, v11

    nop

    move-object/from16 v23, v14

    nop

    nop

    nop

    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v36, v20

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    const/16 v5, 0xd61

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    check-cast v4, Lscz;

    nop

    nop

    const-string v5, "Failed to acquire PSL frame."

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v3}, Lpge;->close()V
    :try_end_25
    .catch Ljava/lang/InterruptedException; {:try_start_25 .. :try_end_25} :catch_6
    .catch Lpfi; {:try_start_25 .. :try_end_25} :catch_6
    .catchall {:try_start_25 .. :try_end_25} :catchall_6

    :goto_1c1
    :try_start_26
    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-virtual/range {v34 .. v34}, Lpim;->close()V
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_7

    :goto_1c2
    goto/32 :goto_d6

    nop

    nop

    :goto_1c3
    iget-object v3, v1, Lldy;->d:Lldx;

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

    :goto_1c4
    if-nez v15, :cond_2a

    nop

    goto/32 :goto_2cc

    nop

    :cond_2a
    :try_start_27
    iget-object v3, v1, Lldx;->d:Lleo;

    nop

    nop
    :try_end_27
    .catch Lpfi; {:try_start_27 .. :try_end_27} :catch_4
    .catchall {:try_start_27 .. :try_end_27} :catchall_2

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    invoke-interface {v6}, Ljava/util/List;->size()I

    goto/32 :goto_d2

    nop

    nop

    :goto_1c6
    goto/16 :goto_f1

    nop

    nop

    nop

    nop

    :catch_c
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    nop

    :goto_1c7
    if-nez v4, :cond_2b

    nop

    nop

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c8
    const/16 v23, 0x1

    nop

    nop

    nop

    :goto_1c9
    goto/32 :goto_2cb

    nop

    nop

    nop

    :goto_1ca
    move-object/from16 v21, v6

    nop

    nop

    goto/32 :goto_296

    nop

    nop

    :goto_1cb
    goto/16 :goto_2dc

    nop

    nop

    nop

    :catchall_1a
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2db

    nop

    nop

    :goto_1cc
    const/16 v4, 0xd76

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-interface {v4, v6}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_51

    nop

    nop

    :goto_1ce
    move-object/from16 v33, v18

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_1cf
    move-object/from16 v15, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    goto/16 :goto_bc

    nop

    nop

    nop

    nop

    :catchall_1b
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_1d1
    move-object/from16 v2, p0

    nop

    goto/32 :goto_29c

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    if-nez v8, :cond_2c

    nop

    goto/32 :goto_28d

    nop

    :cond_2c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    move-object v1, v9

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

    :goto_1d4
    move-object v3, v0

    nop

    :try_start_28
    monitor-exit v6

    nop
    :try_end_28
    .catchall {:try_start_28 .. :try_end_28} :catchall_18

    :try_start_29
    throw v3

    nop
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1c

    :catchall_1c
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    :goto_1d5
    check-cast v5, Ljava/lang/Integer;

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_1d6
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_1d7
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    iget-object v1, v2, Lldy;->e:Likv;

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_1d9
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    :goto_1da
    sget-object v4, Lldy;->a:Lsdb;

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

    nop

    nop

    :goto_1db
    move-object/from16 v32, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    move-object v1, v9

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_1dd
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    goto/32 :goto_344

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    const/16 v23, 0x1

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_1e0
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    goto/32 :goto_2f2

    nop

    nop

    :goto_1e1
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    :goto_1e2
    const-string v6, "Initial"

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    :goto_1e3
    const-string v3, "Aborting HDR+ shot."

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_1e4
    const-string v6, "trimToCapacity"

    nop

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    move-object/from16 v18, v33

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

    nop

    :goto_1e6
    invoke-interface {v7, v15}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    move-object/from16 v3, p1

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    goto/16 :goto_4b

    nop

    :catchall_1d
    move-exception v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e9
    if-eq v4, v5, :cond_2d

    nop

    goto/32 :goto_fc

    nop

    :cond_2d
    :try_start_2a
    iget-object v3, v9, Lldx;->e:Lijp;

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpge;->a()Lpge;

    move-result-object v5

    nop

    invoke-virtual {v3, v5}, Lijp;->c(Lpge;)V
    :try_end_2a
    .catch Ljava/lang/InterruptedException; {:try_start_2a .. :try_end_2a} :catch_14
    .catch Lpfi; {:try_start_2a .. :try_end_2a} :catch_14
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_1ea
    move-object v15, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_1eb
    move-object v14, v5

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    :goto_1ec
    const/4 v10, 0x0

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    const/16 v4, 0xd6f

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    move-object v11, v2

    nop

    :goto_1ef
    :try_start_2b
    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    if-gtz v1, :cond_36

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lldy;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    const/16 v2, 0xd71

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Can\'t execute command, not enough images."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V
    :try_end_2b
    .catch Lhui; {:try_start_2b .. :try_end_2b} :catch_3
    .catchall {:try_start_2b .. :try_end_2b} :catchall_9

    goto/32 :goto_a4

    nop

    nop

    :goto_1f0
    goto/16 :goto_216

    nop

    nop

    nop

    :goto_1f1
    :try_start_2c
    iget-object v2, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Lpdf;->g()V

    iget-object v2, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    const-string v11, "zslFramesFuture#get"

    nop

    invoke-interface {v2, v11}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_1

    :try_start_2d
    iget-object v2, v13, Lldw;->a:Lsuu;

    nop

    invoke-virtual {v2}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    check-cast v2, Ljava/util/List;

    nop

    nop

    nop

    nop
    :try_end_2d
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2d .. :try_end_2d} :catch_8
    .catch Ljava/lang/InterruptedException; {:try_start_2d .. :try_end_2d} :catch_8
    .catchall {:try_start_2d .. :try_end_2d} :catchall_f

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    :goto_1f2
    invoke-interface {v5}, Llxa;->j()Llxm;

    move-result-object v5

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1f4
    const/16 v16, 0x1

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

    :goto_1f5
    move/from16 v31, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_1f6
    goto/16 :goto_337

    nop

    :catch_d
    move-exception v0

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    :goto_1f7
    invoke-interface {v4}, Lpdf;->g()V

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    move-object v15, v8

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_1f9
    move-object/from16 v34, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    invoke-virtual {v13}, Lldw;->b()V

    goto/32 :goto_209

    nop

    nop

    nop

    :goto_1fb
    move-object/from16 v37, v9

    nop

    goto/32 :goto_1f9

    nop

    nop

    :goto_1fc
    invoke-interface {v8}, Lpge;->close()V

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    :goto_1fd
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fe
    invoke-interface {v1, v10}, Likv;->m(Linb;)V

    goto/32 :goto_1b7

    nop

    nop

    :goto_1ff
    invoke-static {v5}, Lpuq;->bE(Lpge;)V

    :goto_200
    goto/32 :goto_de

    nop

    nop

    :goto_201
    goto/16 :goto_4d

    nop

    nop

    :catchall_1e
    move-exception v0

    nop

    goto/32 :goto_2da

    nop

    nop

    :goto_202
    move-object/from16 v17, v7

    nop

    nop

    nop

    nop

    nop

    :try_start_2e
    new-instance v7, Lcom/google/googlex/gcam/CyclopsParameters;

    nop

    nop

    nop
    :try_end_2e
    .catch Ljava/lang/InterruptedException; {:try_start_2e .. :try_end_2e} :catch_c
    .catch Lpfi; {:try_start_2e .. :try_end_2e} :catch_c
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1e

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_203
    goto/16 :goto_16

    nop

    :catch_e
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    :goto_204
    const-string v5, "getAndLogAvailableCapacity"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    nop

    nop

    nop

    :goto_205
    invoke-interface {v3}, Ljava/util/ListIterator;->previousIndex()I

    move-result v4

    nop

    goto/32 :goto_185

    nop

    nop

    :goto_206
    move-object/from16 v23, v14

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_207
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    :goto_208
    move/from16 v35, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    :goto_209
    sget-object v1, Lldy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_314

    nop

    nop

    nop

    nop

    :goto_20a
    move-object v15, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_20b
    if-nez v3, :cond_2e

    nop

    goto/32 :goto_292

    nop

    nop

    :cond_2e
    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    add-int/lit8 v20, v11, 0x1

    nop

    nop

    nop

    :try_start_2f
    sget-object v21, Lsxd;->e:Lsxd;

    nop

    nop

    nop

    nop

    move-object/from16 v16, v3

    nop

    move-object/from16 v17, v15

    nop

    nop

    nop

    move-object/from16 v18, v10

    nop

    nop

    nop

    invoke-virtual/range {v16 .. v21}, Lleo;->e(Lpge;Linb;IILsxd;)I

    invoke-interface {v2, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2f
    .catch Lpfi; {:try_start_2f .. :try_end_2f} :catch_7
    .catchall {:try_start_2f .. :try_end_2f} :catchall_2

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    :goto_20e
    int-to-long v7, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    :goto_20f
    move/from16 v11, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_210
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_211
    goto/32 :goto_2ed

    nop

    nop

    nop

    nop

    :goto_212
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    :goto_213
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    goto/32 :goto_245

    nop

    nop

    :goto_214
    goto/16 :goto_27c

    nop

    nop

    nop

    nop

    :catch_f
    move-exception v0

    nop

    goto/32 :goto_2c4

    nop

    nop

    nop

    nop

    nop

    :goto_215
    move-object/from16 v25, v14

    nop

    nop

    nop

    :goto_216
    goto/32 :goto_267

    nop

    nop

    nop

    nop

    :goto_217
    goto/16 :goto_31f

    nop

    nop

    :catchall_1f
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    nop

    :goto_218
    move-object/from16 v1, v37

    nop

    nop

    :try_start_30
    iget-object v3, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-virtual/range {v34 .. v34}, Lpim;->close()V
    :try_end_30
    .catchall {:try_start_30 .. :try_end_30} :catchall_7

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_219
    if-eqz v6, :cond_2f

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :cond_2f
    :try_start_31
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    invoke-virtual {v7}, Lpim;->close()V
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1b

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21a
    goto/16 :goto_182

    nop

    :catchall_20
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    :goto_21b
    if-nez v10, :cond_30

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_30
    goto/32 :goto_1da

    nop

    nop

    :goto_21c
    new-instance v13, Lldw;

    nop

    nop

    nop

    goto/32 :goto_2f3

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    const-string v4, "No ZSL frames found."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    :goto_21e
    sget-object v1, Lldy;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_33d

    nop

    nop

    nop

    nop

    nop

    :goto_21f
    move-object/from16 v22, v11

    nop

    nop

    :goto_220
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_221
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_222
    move-object v2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_223
    move-object v2, v1

    nop

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_224
    move-object/from16 v2, p0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_225
    const v0, 0x1e

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    :goto_226
    move-object/from16 v1, p0

    nop

    nop

    nop

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_227
    move-object/from16 v15, v36

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_228
    move-object v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    :goto_229
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    nop

    nop

    :goto_22a
    invoke-virtual {v13}, Lldw;->close()V

    goto/32 :goto_11a

    nop

    nop

    :goto_22b
    move/from16 v35, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_22c
    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22d
    invoke-direct {v7, v8}, Lkoz;-><init>(I)V

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_22e
    move-object v1, v9

    nop

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    :goto_22f
    invoke-virtual {v13}, Lldw;->close()V

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_230
    goto/16 :goto_42

    nop

    :catch_10
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    :goto_231
    move/from16 v24, v11

    nop

    nop

    nop

    :goto_232
    goto/32 :goto_2b9

    nop

    nop

    :goto_233
    move-object/from16 v3, p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_234
    invoke-interface {v5}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    nop

    nop

    :goto_235
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_236
    goto/16 :goto_254

    nop

    :goto_237
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_238
    move-object/from16 v32, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_239
    invoke-interface {v8}, Lpge;->b()Lpgi;

    goto/32 :goto_1fc

    nop

    nop

    :goto_23a
    move-object/from16 v37, v9

    nop

    nop

    nop

    nop

    nop

    :goto_23b
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    :goto_23c
    move v6, v15

    nop

    nop

    nop

    :goto_23d
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    move-object/from16 v36, v20

    nop

    nop

    nop

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    nop

    :goto_23f
    sget-object v7, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    nop

    :goto_240
    iget-object v3, v1, Lldy;->k:Lpdf;

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

    :goto_241
    invoke-direct {v7, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    :goto_242
    move-object/from16 v37, v9

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

    :goto_243
    move/from16 v28, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_244
    invoke-interface {v5, v6}, Lljk;->m(Ljava/lang/String;)V

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_245
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_240

    nop

    nop

    :goto_246
    move-object/from16 v1, v37

    nop

    goto/32 :goto_16a

    nop

    nop

    :goto_247
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_248
    move-object/from16 v33, v18

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_249
    move-object/from16 v33, v7

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    :goto_24a
    invoke-interface {v3}, Lpdf;->g()V

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24b
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_2fb

    nop

    nop

    nop

    :goto_24c
    move-object/from16 v33, v18

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_24d
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    :goto_24e
    const/16 v16, 0x1

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_24f
    invoke-direct {v13, v4}, Lldw;-><init>(Lljk;)V

    goto/32 :goto_32

    nop

    nop

    :goto_250
    move-object v4, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_251
    move-object/from16 v37, v9

    nop

    nop

    nop

    goto/32 :goto_2e8

    nop

    nop

    nop

    nop

    :goto_252
    invoke-interface {v3}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_253
    if-nez v3, :cond_31

    nop

    goto/32 :goto_1b4

    nop

    :cond_31
    :try_start_32
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    if-nez v3, :cond_26

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_26

    nop

    nop

    nop

    invoke-interface {v15}, Ljava/util/List;->size()I

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v11, 0x0

    nop

    :goto_254
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_3

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    :goto_255
    invoke-virtual {v13}, Lldw;->a()I

    move-result v1

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_256
    move-object v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    :goto_257
    iget-object v4, v10, Linb;->w:Llko;

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    nop

    nop

    nop

    :goto_258
    move/from16 v24, v11

    nop

    nop

    nop

    nop

    nop

    :goto_259
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_25a
    move-object/from16 v3, v32

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

    :goto_25b
    goto/16 :goto_152

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    :goto_25c
    invoke-virtual {v1, v4}, Likn;->a(Llxm;)V

    :goto_25d
    goto/32 :goto_334

    nop

    nop

    nop

    nop

    nop

    :goto_25e
    move-object/from16 v32, v6

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    :goto_25f
    move-object/from16 v8, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_260
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catch_11
    move-exception v0

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    nop

    nop

    :goto_261
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :goto_262
    invoke-interface {v6}, Lj$/util/stream/Stream;->findFirst()Lj$/util/Optional;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    :goto_263
    goto/16 :goto_220

    nop

    nop

    :catch_12
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_264
    move-object v1, v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_265
    iget-object v4, v4, Llko;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_266
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    :goto_267
    if-nez v33, :cond_33

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    nop

    :cond_33
    :try_start_33
    invoke-virtual/range {v33 .. v33}, Lgij;->close()V

    :goto_268
    invoke-virtual {v13}, Lldw;->close()V

    iget-object v5, v1, Lldx;->b:Lljk;

    nop

    nop

    nop

    nop

    const-string v6, "Final"

    nop

    nop

    invoke-interface {v5, v6}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v25, :cond_34

    nop

    nop

    invoke-interface/range {v25 .. v25}, Lpge;->close()V

    :cond_34
    if-eqz v15, :cond_35

    nop

    nop

    nop

    nop

    invoke-interface {v15}, Lpge;->close()V

    :cond_35
    iget-object v1, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    invoke-interface {v1}, Lpdf;->g()V

    throw v4

    nop
    :try_end_33
    .catch Lhui; {:try_start_33 .. :try_end_33} :catch_e
    .catchall {:try_start_33 .. :try_end_33} :catchall_21

    :catchall_21
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    nop

    :goto_269
    move-object v15, v8

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_26a
    goto/16 :goto_5a

    nop

    :cond_36
    goto/32 :goto_224

    nop

    nop

    nop

    nop

    nop

    :goto_26b
    invoke-direct {v2, v1, v11, v3, v12}, Lldy;->da190e616797844b591057d0190e7728m(Lkuc;Ljava/util/List;Lkub;Llko;)V

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_26c
    goto/16 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :catchall_22
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    :goto_26d
    if-ltz v7, :cond_37

    nop

    nop

    goto/32 :goto_270

    nop

    :cond_37
    :try_start_34
    invoke-virtual {v1}, Lcom/google/googlex/gcam/BurstSpec;->c()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v7

    nop

    invoke-virtual {v7, v14}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v7

    nop

    nop

    invoke-virtual {v7}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v7

    nop

    nop

    nop

    nop

    sget-object v8, Lsxd;->h:Lsxd;

    nop

    nop

    nop

    nop

    nop

    if-ne v7, v8, :cond_38

    nop

    const/4 v7, 0x1

    nop

    goto :goto_271

    nop

    nop

    nop

    nop

    nop

    :cond_38
    add-int/lit8 v14, v14, 0x1

    nop

    nop

    nop

    nop

    move-object/from16 v7, v18

    nop

    nop

    move-object/from16 v8, v20

    nop

    nop

    goto/16 :goto_8e

    nop

    nop

    nop

    nop

    :catchall_23
    move-exception v0

    nop

    nop

    nop

    nop

    move-object/from16 v18, v7

    nop

    nop

    move-object/from16 v20, v8

    nop

    nop

    nop

    nop

    nop

    :goto_26e
    const/4 v14, 0x0

    nop

    move-object/from16 v2, p0

    nop

    nop

    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    move-object v4, v0

    nop

    nop

    nop

    nop

    move-object v1, v9

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v33, v18

    nop

    nop

    move-object/from16 v15, v20

    nop

    nop

    nop

    goto/16 :goto_216

    nop

    :goto_26f
    move-object/from16 v18, v7

    nop

    move-object/from16 v20, v8

    nop

    :goto_270
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_271
    if-lez v19, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Linb;->b()Lcom/google/googlex/gcam/ShotParams;

    move-result-object v8

    nop

    move-object/from16 v26, v15

    nop

    iget-wide v14, v8, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    invoke-static {v14, v15, v8}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_cyclops_use_psl_for_base_frame_get(JLcom/google/googlex/gcam/ShotParams;)Z

    move-result v8

    nop

    if-eqz v8, :cond_39

    nop

    nop

    if-nez v7, :cond_9

    nop

    :cond_39
    iget-object v7, v9, Lldx;->d:Lleo;

    nop

    nop

    nop

    iget-object v8, v7, Lleo;->b:Likn;

    nop

    nop

    invoke-virtual {v8, v10}, Likn;->i(Linb;)Z

    iget-object v7, v7, Lleo;->a:Likv;

    nop

    invoke-interface {v7, v10}, Likv;->s(Linb;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1b

    goto/32 :goto_1d0

    nop

    nop

    :goto_272
    iput-object v6, v13, Lldw;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_273
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_274
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_275
    move/from16 v31, v11

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    :goto_276
    invoke-interface {v7, v8}, Lscz;->M(I)Lsdo;

    move-result-object v7

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    :goto_277
    const/16 v4, 0xd70

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_278
    move/from16 v31, v11

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_279
    move-object v1, v0

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_27a
    move-object/from16 v23, v14

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    goto/16 :goto_9e

    nop

    :goto_27c
    goto/32 :goto_ac

    nop

    nop

    :goto_27d
    move-object v15, v8

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_27e
    iget-object v1, v2, Lldy;->b:Lkuc;

    nop

    goto/32 :goto_14c

    nop

    nop

    :goto_27f
    if-eqz v3, :cond_3a

    nop

    nop

    nop

    nop

    goto/32 :goto_281

    nop

    :cond_3a
    :try_start_35
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    const/16 v5, 0xd6a

    nop

    invoke-interface {v4, v5}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    check-cast v4, Lscz;

    nop

    const-string v5, "Failed to acquire metering frame."

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :catchall_24
    move-exception v0

    nop

    move-object/from16 v25, v3

    nop

    nop

    nop

    nop

    nop

    :goto_280
    move-object v3, v0

    nop

    nop

    nop

    nop

    goto/16 :goto_14f

    nop

    nop

    nop

    nop

    :goto_281
    if-eqz v7, :cond_0

    nop

    iget-object v4, v9, Lldx;->c:Llgc;

    nop

    new-instance v5, Loel;

    nop

    invoke-direct {v5, v4, v3}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v4, v9, Lldx;->m:Lrbh;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lrbh;->f()Llez;

    move-result-object v4

    nop

    iget-object v6, v7, Lgij;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v6

    nop

    nop

    nop

    nop

    nop
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_24

    :try_start_36
    iget-boolean v14, v7, Lgij;->d:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_b

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_282
    iget-object v3, v1, Lldy;->k:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_283
    move-object v14, v5

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_284
    if-nez v3, :cond_3b

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    :cond_3b
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_285
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    nop

    :goto_286
    move-object v3, v2

    nop

    nop

    nop

    :goto_287
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_288
    invoke-interface {v1, v4}, Lscz;->s(Ljava/lang/String;)V

    :goto_289
    goto/32 :goto_fe

    nop

    nop

    :goto_28a
    const/4 v14, 0x0

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_28c
    goto/16 :goto_29

    nop

    nop

    nop

    :goto_28d
    :try_start_37
    new-instance v5, Lpde;

    nop

    nop

    nop

    iget-object v6, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    const-string v3, "PostShutterCptCtlr_getMeteringFrame"

    nop

    nop

    invoke-direct {v5, v6, v3}, Lpde;-><init>(Lpdf;Ljava/lang/String;)V
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_c

    :try_start_38
    new-instance v3, Ljava/util/ArrayList;

    nop

    iget-object v4, v9, Lldx;->b:Lljk;

    nop

    invoke-interface {v4}, Lljk;->l()Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v3}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    nop

    nop

    const/4 v4, 0x0

    nop

    :goto_28e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    nop

    if-eqz v6, :cond_3d

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    check-cast v6, Lpge;

    nop

    iget-object v14, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    const-string v3, "meteringCandidate"

    nop

    nop

    invoke-interface {v14, v3}, Lpdf;->f(Ljava/lang/String;)V

    if-nez v4, :cond_3c

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpge;->g()Z

    move-result v3

    nop

    if-eqz v3, :cond_3c

    nop

    iget-object v3, v9, Lldx;->h:Lljo;

    nop

    invoke-virtual {v3, v6}, Lljo;->b(Lpge;)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_3c

    nop

    move-object v4, v6

    nop

    nop

    goto :goto_28f

    nop

    nop

    nop

    nop

    :cond_3c
    invoke-interface {v6}, Lpge;->close()V

    :goto_28f
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    move-object/from16 v3, v18

    nop

    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    goto :goto_28e

    nop

    nop

    nop

    :cond_3d
    if-eqz v4, :cond_3f

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpge;->b()Lpgi;
    :try_end_38
    .catch Ljava/lang/InterruptedException; {:try_start_38 .. :try_end_38} :catch_0
    .catchall {:try_start_38 .. :try_end_38} :catchall_2b

    :try_start_39
    invoke-virtual {v5}, Lpde;->close()V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_14

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_290
    move-object v1, v9

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_291
    goto/16 :goto_329

    nop

    :goto_292
    goto/32 :goto_328

    nop

    nop

    nop

    nop

    :goto_293
    if-nez v10, :cond_3e

    nop

    nop

    goto/32 :goto_2e4

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_168

    nop

    nop

    :goto_294
    sget v7, Lryb;->d:I

    nop

    nop

    goto/32 :goto_32f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_295
    move/from16 v35, v8

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_296
    move-object/from16 v6, v16

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_297
    move-object/from16 v36, v20

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_298
    move-object/from16 v9, v21

    nop

    nop

    nop

    nop

    nop

    :try_start_3a
    invoke-direct/range {v3 .. v9}, Liqi;-><init>(Liqk;Lprw;Lpro;Lcom/google/googlex/gcam/CyclopsParameters;Llko;Lioy;)V

    new-instance v3, Lihf;

    nop

    nop

    nop

    nop

    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v4, v14}, Lihf;-><init>(Ljava/lang/Object;I[B)V

    move-object/from16 v4, v21

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, v30

    nop

    nop

    invoke-virtual {v1, v11, v3, v12, v4}, Liqk;->b(Ljava/util/function/Consumer;Ljava/lang/Runnable;Llko;Lioy;)V
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_3a .. :try_end_3a} :catch_5
    .catch Lpfi; {:try_start_3a .. :try_end_3a} :catch_5
    .catchall {:try_start_3a .. :try_end_3a} :catchall_12

    goto/32 :goto_24e

    nop

    nop

    nop

    nop

    :goto_299
    goto/16 :goto_306

    nop

    nop

    nop

    nop

    nop

    :cond_3f
    :try_start_3b
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    const-string v4, "PostShutterCptCtlr_getOldestFrame"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    iget-object v3, v9, Lldx;->b:Lljk;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lljk;->d()Lpge;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_53

    nop

    nop

    nop

    iget-object v4, v9, Lldx;->h:Lljo;

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lgki;

    nop

    nop

    nop

    nop

    nop

    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    invoke-direct {v6, v4, v14}, Lgki;-><init>(Ljava/lang/Object;I)V

    const-string v4, ""

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v6, v4}, Lpuq;->bB(Lpge;Lpgv;Ljava/lang/String;)V

    invoke-static {v3}, Lpuq;->bC(Lpge;)V

    iget-object v4, v9, Lldx;->h:Lljo;

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Lljo;->b(Lpge;)Z

    move-result v4

    nop

    nop

    nop

    nop
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_2a

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_29a
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29b
    const-string v5, "Error creating the HDR+ shot."

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

    :goto_29c
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_29d
    move-object v3, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    :goto_29e
    const/16 v16, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_29f
    move-object v6, v7

    nop

    nop

    nop

    nop

    :goto_2a0
    goto/32 :goto_2c0

    nop

    nop

    nop

    nop

    :goto_2a1
    move-object/from16 v22, v11

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2a2
    new-instance v6, Llcc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2a3
    goto/16 :goto_32b

    nop

    nop

    :catch_13
    move-exception v0

    nop

    goto/32 :goto_32a

    nop

    nop

    nop

    nop

    nop

    :goto_2a4
    invoke-interface {v4, v5}, Lpdf;->h(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    :goto_2a5
    goto/16 :goto_92

    nop

    :catch_14
    move-exception v0

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    :goto_2a6
    move-object/from16 v2, p1

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    :goto_2a7
    move-object/from16 v33, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_2a8
    move/from16 v35, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_2a9
    move-object v1, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    :goto_2aa
    move-object/from16 v34, v17

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2ab
    move-object/from16 v32, v21

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    :goto_2ac
    move-object/from16 v33, v7

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_2ad
    iget-object v3, v3, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_330

    nop

    nop

    nop

    nop

    nop

    :goto_2ae
    move-object v15, v8

    nop

    goto/32 :goto_31c

    nop

    nop

    :goto_2af
    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    goto/32 :goto_226

    nop

    nop

    :goto_2b1
    if-eq v4, v5, :cond_40

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :cond_40
    :try_start_3c
    iget-object v4, v3, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Lcom/google/googlex/gcam/FrameRequest;

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameRequest;->e()Lcom/google/googlex/gcam/CyclopsParameters;

    move-result-object v4

    nop

    nop

    nop

    nop
    :try_end_3c
    .catch Ljava/lang/InterruptedException; {:try_start_3c .. :try_end_3c} :catch_15
    .catch Lpfi; {:try_start_3c .. :try_end_3c} :catch_15
    .catchall {:try_start_3c .. :try_end_3c} :catchall_4

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_2b2
    if-lt v3, v4, :cond_41

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    :cond_41
    :try_start_3d
    invoke-interface {v14, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lmhz;

    nop

    nop

    iget-object v4, v4, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v4, Lcom/google/googlex/gcam/FrameRequest;

    nop

    nop

    nop

    invoke-virtual {v4}, Lcom/google/googlex/gcam/FrameRequest;->d()Lsxd;

    move-result-object v4

    nop

    nop

    nop

    sget-object v5, Lsxd;->h:Lsxd;

    nop

    nop

    nop
    :try_end_3d
    .catchall {:try_start_3d .. :try_end_3d} :catchall_1b

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    :goto_2b3
    const/16 v28, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    :try_start_3e
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-ge v8, v3, :cond_32

    nop

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lmhz;

    nop

    nop

    nop

    nop

    invoke-interface {v15, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    move-object v7, v4

    nop

    nop

    check-cast v7, Lpim;

    nop

    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    const-string v5, "getPslFrame"

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpdf;->f(Ljava/lang/String;)V

    invoke-virtual {v7, v1}, Lpim;->a(Lpgo;)Lpge;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop
    :try_end_3e
    .catchall {:try_start_3e .. :try_end_3e} :catchall_3

    goto/32 :goto_219

    nop

    nop

    nop

    :goto_2b5
    invoke-interface {v7, v8, v5}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_2b6
    move-object/from16 v30, v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b7
    goto/16 :goto_303

    nop

    nop

    nop

    :catchall_25
    move-exception v0

    nop

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

    :goto_2b8
    move-object/from16 v33, v7

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    nop

    nop

    :goto_2b9
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    :goto_2ba
    move-object/from16 v32, v6

    nop

    nop

    nop

    goto/32 :goto_346

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bb
    move-object/from16 v7, v17

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2bc
    const/4 v14, 0x0

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bd
    move-object/from16 v34, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    nop

    :goto_2be
    const-string v8, "Capacity depleted, releasing %d buffers."

    nop

    goto/32 :goto_2b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2bf
    goto/16 :goto_90

    nop

    :catch_15
    move-exception v0

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

    :goto_2c0
    iget-object v5, v3, Lldx;->j:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    :goto_2c1
    move-object v4, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25a

    nop

    nop

    :goto_2c2
    goto/16 :goto_92

    nop

    nop

    nop

    nop

    :catch_16
    move-exception v0

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    :goto_2c3
    move/from16 v35, v8

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_2c4
    move-object v3, v2

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_2c5
    move-object/from16 v22, v11

    nop

    :goto_2c6
    :try_start_3f
    iget-object v11, v9, Lldx;->f:Lpdf;

    nop

    const-string v14, "camera3ADebugMetadataFetcher#populateMetadata"

    nop

    nop

    nop

    invoke-interface {v11, v14}, Lpdf;->f(Ljava/lang/String;)V
    :try_end_3f
    .catchall {:try_start_3f .. :try_end_3f} :catchall_8

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c7
    move-object v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_2c8
    invoke-direct {v2, v1, v4, v3, v12}, Lldy;->da190e616797844b591057d0190e7728m(Lkuc;Ljava/util/List;Lkub;Llko;)V

    :goto_2c9
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ca
    cmp-long v7, v7, v16

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    :goto_2cb
    move-object v3, v0

    nop

    nop

    :try_start_40
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    invoke-interface {v4, v3}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v3

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xd5f

    nop

    invoke-interface {v3, v4}, Lscz;->M(I)Lsdo;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Lscz;

    nop

    nop

    nop

    nop

    const-string v4, "Failed to process last PSL frame"

    nop

    invoke-interface {v3, v4}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_2cd

    nop

    nop

    nop

    nop

    nop

    :goto_2cc
    const/16 v23, 0x1

    nop

    nop

    nop

    :goto_2cd
    const/16 v28, 0x0

    nop

    nop

    nop

    nop

    :goto_2ce
    iget-object v3, v1, Lldx;->d:Lleo;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v5, p2

    nop

    move-object/from16 v6, v26

    nop

    nop

    nop

    nop

    move-object v7, v10

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v27

    nop

    nop

    nop

    nop

    invoke-virtual/range {v3 .. v9}, Lleo;->f(ILlko;Lpro;Linb;ZLcom/google/googlex/gcam/BurstSpec;)V

    if-nez v28, :cond_42

    nop

    nop

    nop

    iget-object v3, v1, Lldx;->l:Liqk;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v10, Linb;->p:Lioy;

    nop

    nop

    nop

    invoke-virtual {v3, v12, v4}, Liqk;->a(Llko;Lioy;)V
    :try_end_40
    .catchall {:try_start_40 .. :try_end_40} :catchall_2

    :cond_42
    goto/32 :goto_33a

    nop

    nop

    nop

    nop

    nop

    :goto_2cf
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    :goto_2d0
    invoke-interface {v1, v4}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2e1

    nop

    nop

    nop

    nop

    :goto_2d1
    move-object/from16 v14, v23

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_2d2
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d3
    goto/16 :goto_90

    nop

    :goto_2d4
    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    :goto_2d5
    invoke-virtual {v13}, Lldw;->b()V

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_2d6
    move-object/from16 v36, v20

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    :goto_2d7
    move-object/from16 v34, v7

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d8
    check-cast v4, Lscz;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d9
    move-object/from16 v34, v7

    nop

    nop

    goto/32 :goto_2c3

    nop

    nop

    nop

    :goto_2da
    move-object v14, v5

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    :goto_2db
    move-object v5, v0

    nop

    nop

    nop

    nop

    nop

    :try_start_41
    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2dc
    throw v4

    nop

    nop
    :try_end_41
    .catchall {:try_start_41 .. :try_end_41} :catchall_26

    :catchall_26
    move-exception v0

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

    :goto_2dd
    move/from16 v35, v8

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    :goto_2de
    invoke-virtual {v1, v3}, Likn;->a(Llxm;)V

    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    nop

    :goto_2df
    invoke-interface {v3, v4}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_2e0
    if-eqz v11, :cond_43

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :cond_43
    :try_start_42
    iget-object v2, v9, Lldx;->l:Liqk;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v10, Linb;->p:Lioy;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v12, v4}, Liqk;->a(Llko;Lioy;)V

    if-eqz v3, :cond_44

    nop

    nop

    invoke-virtual {v6}, Llez;->b()V

    :cond_44
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
    :try_end_42
    .catchall {:try_start_42 .. :try_end_42} :catchall_f

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_2e1
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_2e2
    move/from16 v35, v8

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

    :goto_2e3
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_2e4
    goto/32 :goto_2c7

    nop

    nop

    :goto_2e5
    move/from16 v11, v17

    nop

    nop

    :try_start_43
    invoke-virtual/range {v3 .. v11}, Lleo;->g(Lpnx;Llko;ILpro;Lijd;ZZZ)Linb;

    move-result-object v10

    nop

    nop

    nop
    :try_end_43
    .catch Lhtw; {:try_start_43 .. :try_end_43} :catch_10

    goto/32 :goto_230

    nop

    nop

    nop

    nop

    :goto_2e6
    move-object/from16 v34, v7

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_2e7
    move-object/from16 v32, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    :goto_2e8
    move-object/from16 v34, v17

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_2e9
    const/4 v14, 0x0

    nop

    :goto_2ea
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_2eb
    move-object/from16 v18, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_2ec
    move-object v4, v0

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

    :goto_2ed
    goto/32 :goto_2b0

    nop

    nop

    nop

    :goto_2ee
    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :goto_2ef
    move-object v15, v8

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_2f0
    move-object v3, v6

    nop

    nop

    nop

    goto/32 :goto_2d7

    nop

    nop

    nop

    :goto_2f1
    const/4 v5, 0x0

    nop

    nop

    nop

    :try_start_44
    invoke-virtual {v1, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Lprw;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Lpge;->d()Lpro;

    move-result-object v16

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    if-nez v16, :cond_45

    nop

    nop

    nop

    move-object/from16 v32, v6

    nop

    nop

    move-object/from16 v34, v7

    nop

    nop

    nop

    nop

    move/from16 v35, v8

    nop

    move-object/from16 v37, v9

    nop

    move/from16 v31, v11

    nop

    nop

    nop

    move-object/from16 v23, v14

    nop

    nop

    move-object/from16 v33, v18

    nop

    move-object/from16 v36, v20

    nop

    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    move-object v14, v5

    nop

    nop

    goto/16 :goto_13d

    nop

    :cond_45
    iget-object v4, v9, Lldx;->l:Liqk;

    nop

    nop

    nop

    nop

    nop
    :try_end_44
    .catch Ljava/lang/InterruptedException; {:try_start_44 .. :try_end_44} :catch_11
    .catch Lpfi; {:try_start_44 .. :try_end_44} :catch_11
    .catchall {:try_start_44 .. :try_end_44} :catchall_a

    goto/32 :goto_202

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    iget-object v6, v13, Lldw;->b:Lljk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_2f3
    iget-object v4, v3, Lldx;->b:Lljk;

    nop

    nop

    nop

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    nop

    :goto_2f4
    const-string v5, "getZslFramesAsync"

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_2f5
    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    :goto_2f6
    iget-object v6, v13, Lldw;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_2f7
    if-nez v18, :cond_46

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    nop

    nop

    :cond_46
    :try_start_45
    invoke-virtual/range {v18 .. v18}, Lgij;->close()V

    :goto_2f8
    invoke-virtual {v13}, Lldw;->close()V

    iget-object v2, v9, Lldx;->b:Lljk;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Final"

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v25, :cond_47

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v25 .. v25}, Lpge;->close()V

    :cond_47
    if-eqz v20, :cond_48

    nop

    invoke-interface/range {v20 .. v20}, Lpge;->close()V

    :cond_48
    iget-object v2, v9, Lldx;->f:Lpdf;

    nop

    invoke-interface {v2}, Lpdf;->g()V
    :try_end_45
    .catch Lhui; {:try_start_45 .. :try_end_45} :catch_2
    .catchall {:try_start_45 .. :try_end_45} :catchall_20

    goto/32 :goto_57

    nop

    nop

    :goto_2f9
    move-object/from16 v25, v3

    nop

    nop

    nop

    :goto_2fa
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    :goto_2fb
    move-object/from16 v22, v11

    nop

    nop

    nop

    :goto_2fc
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    move-object/from16 v33, v18

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_2fe
    if-nez v9, :cond_49

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :cond_49
    :try_start_46
    iget-object v3, v1, Lldy;->i:Llgc;

    nop

    nop

    nop

    new-instance v4, Loel;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v3, v5}, Loel;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v3, v1, Lldy;->g:Lleo;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Loel;->d()Lphh;

    move-result-object v4

    nop

    nop

    nop

    invoke-interface {v4}, Lphh;->d()Lpnx;

    move-result-object v4

    nop

    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    iget-object v8, v3, Lleo;->s:Lhoh;

    nop

    sget-object v5, Lcom/a;->zsl_base_frame_is_the_last:Lhmn;

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v5}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_4a

    nop

    nop

    nop

    iget-object v6, v13, Lldw;->a:Lsuu;

    nop

    invoke-virtual {v6}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    check-cast v6, Ljava/util/List;

    nop

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    nop

    add-int/lit8 v6, v6, -0x1

    nop

    :cond_4a
    iget-object v5, v1, Lldy;->h:Lije;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lije;->a()Lijd;

    move-result-object v8

    nop

    nop
    :try_end_46
    .catch Lhtw; {:try_start_46 .. :try_end_46} :catch_a

    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_2ff
    move-object v1, v0

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_300
    if-nez v3, :cond_4b

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_4b
    :try_start_47
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Llez;->a()Landroid/util/Pair;

    move-result-object v7

    nop

    nop

    nop

    iget-object v6, v6, Llez;->e:Lpgo;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    nop

    nop

    nop

    iget-object v8, v9, Lldx;->f:Lpdf;

    nop

    move-object/from16 v16, v6

    nop

    nop

    const-string v6, "closingZslBuffer"

    nop

    nop

    nop

    nop

    invoke-interface {v8, v6}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {v13}, Lldw;->close()V

    sget-object v6, Lspa;->a:Lspa;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ltkg;->m()Ltkb;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v8

    nop

    if-nez v8, :cond_4c

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_4c
    iget-object v8, v6, Ltkb;->b:Ltkg;

    nop

    nop

    move-object/from16 v17, v7

    nop

    nop

    nop

    move-object v7, v8

    nop

    nop

    nop

    nop

    check-cast v7, Lspa;

    nop

    nop

    nop

    move-object/from16 v27, v1

    nop

    nop

    nop

    nop

    iget v1, v7, Lspa;->b:I

    nop

    const/16 v21, 0x1

    nop

    or-int/lit8 v1, v1, 0x1

    nop

    iput v1, v7, Lspa;->b:I

    nop

    nop

    nop

    nop

    iput-wide v4, v7, Lspa;->c:J

    nop

    nop

    nop

    invoke-virtual {v8}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_4d

    nop

    nop

    invoke-virtual {v6}, Ltkb;->o()V

    :cond_4d
    iget-object v1, v6, Ltkb;->b:Ltkg;

    nop

    nop

    check-cast v1, Lspa;

    nop

    iget v4, v1, Lspa;->b:I

    nop

    nop

    nop

    or-int/lit8 v4, v4, 0x2

    nop

    nop

    iput v4, v1, Lspa;->b:I

    nop

    nop

    iput-wide v14, v1, Lspa;->d:J

    nop

    invoke-virtual {v6}, Ltkb;->i()Ltkg;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lspa;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v12, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Llxa;->ag()Lmjn;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v4, Lmjn;->D:Lspa;

    nop

    nop

    nop

    nop
    :try_end_47
    .catchall {:try_start_47 .. :try_end_47} :catchall_1b

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_301
    goto/16 :goto_cf

    nop

    nop

    nop

    nop

    :goto_302
    :try_start_48
    new-instance v1, Lcom/google/googlex/gcam/BurstSpec;

    nop

    nop

    nop

    invoke-direct {v1}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V
    :try_end_48
    .catchall {:try_start_48 .. :try_end_48} :catchall_d

    :cond_4e
    :goto_303
    goto/32 :goto_284

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_304
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_305
    move-object v4, v0

    nop

    :goto_306
    goto/32 :goto_215

    nop

    nop

    :goto_307
    const-string v4, "PostShutter_pckZslHdrPlusProcessor#createZslShot"

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    nop

    :goto_308
    check-cast v7, Lscz;

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    :goto_309
    invoke-interface {v3}, Lktp;->h()V

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_30a
    goto/16 :goto_216

    nop

    :catchall_27
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_30b
    goto/16 :goto_9a

    nop

    nop

    :catchall_28
    move-exception v0

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_30c
    invoke-static {v5, v6, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_171

    nop

    nop

    :goto_30d
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_30e
    iget-object v6, v12, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30f
    move-object/from16 v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_263

    nop

    nop

    :goto_310
    move-object v1, v9

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    :goto_311
    move-object v1, v9

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_312
    goto/16 :goto_fa

    nop

    :catch_17
    move-exception v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_313
    move-object/from16 v33, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_314
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_315
    const/16 v8, 0xd46

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    :goto_316
    if-lt v5, v11, :cond_4f

    nop

    goto/32 :goto_2a0

    nop

    nop

    nop

    :cond_4f
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_317
    move-object/from16 v5, p2

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_318
    move-object/from16 v33, v7

    nop

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    :goto_319
    move-object v9, v1

    nop

    goto/32 :goto_2d1

    nop

    nop

    :goto_31a
    const-wide/16 v4, 0x0

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

    :goto_31b
    move-object/from16 v2, p0

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_31c
    move-object v1, v9

    nop

    nop

    nop

    :goto_31d
    goto/32 :goto_113

    nop

    nop

    :goto_31e
    const/4 v14, 0x0

    nop

    :goto_31f
    goto/32 :goto_2c1

    nop

    nop

    nop

    :goto_320
    move-object v9, v10

    nop

    nop

    nop

    :goto_321
    goto/32 :goto_167

    nop

    nop

    nop

    nop

    :goto_322
    goto/16 :goto_335

    nop

    nop

    nop

    :goto_323
    goto/32 :goto_12e

    nop

    nop

    nop

    :goto_324
    move-object v4, v3

    nop

    nop

    nop

    goto/32 :goto_29a

    nop

    nop

    :goto_325
    new-instance v7, Lkoz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_326
    goto/16 :goto_83

    nop

    :goto_327
    :try_start_49
    iget-object v5, v1, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Lpdf;->g()V

    throw v4

    nop

    nop
    :try_end_49
    .catchall {:try_start_49 .. :try_end_49} :catchall_29

    :catchall_29
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    :goto_328
    move-object v5, v10

    nop

    nop

    nop

    :goto_329
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_32a
    move-object v3, v0

    nop

    :try_start_4a
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    const-string v5, "Failed to acquire FrameServer session. Continue command without session."

    nop

    nop

    const/16 v6, 0xd6b

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6, v4, v3}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_32b
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    invoke-interface {v3}, Lpdf;->g()V
    :try_end_4a
    .catch Lhui; {:try_start_4a .. :try_end_4a} :catch_f
    .catchall {:try_start_4a .. :try_end_4a} :catchall_22

    goto/32 :goto_1d2

    nop

    nop

    :goto_32c
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :catch_18
    move-exception v0

    nop

    nop

    :goto_32d
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_32e
    invoke-static {v4}, Lhst;->k(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_32f
    sget-object v7, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_330
    invoke-interface {v3}, Llxa;->j()Llxm;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_331
    const/4 v14, 0x0

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_332
    move-object/from16 v23, v14

    nop

    nop

    goto/32 :goto_28b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_333
    move-object v3, v2

    nop

    goto/32 :goto_1a1

    nop

    nop

    :goto_334
    iget-object v1, v2, Lldy;->b:Lkuc;

    nop

    :goto_335
    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_336
    move-object/from16 v37, v9

    nop

    nop

    :goto_337
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_338
    move-object v15, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    :goto_339
    move-object/from16 v33, v7

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33a
    if-nez v33, :cond_50

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33b

    nop

    nop

    nop

    :cond_50
    :try_start_4b
    invoke-virtual/range {v33 .. v33}, Lgij;->close()V

    :goto_33b
    invoke-virtual {v13}, Lldw;->close()V

    iget-object v3, v1, Lldx;->b:Lljk;

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Final"

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lljk;->m(Ljava/lang/String;)V

    if-eqz v25, :cond_51

    nop

    nop

    nop

    nop

    invoke-interface/range {v25 .. v25}, Lpge;->close()V

    :cond_51
    if-eqz v15, :cond_52

    nop

    nop

    nop

    invoke-interface {v15}, Lpge;->close()V

    :cond_52
    iget-object v1, v1, Lldx;->f:Lpdf;

    nop

    nop
    :try_end_4b
    .catch Lhui; {:try_start_4b .. :try_end_4b} :catch_18
    .catchall {:try_start_4b .. :try_end_4b} :catchall_20

    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_33c
    move-object/from16 v3, p1

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    :goto_33d
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    :goto_33e
    goto/16 :goto_199

    nop

    nop

    nop

    nop

    nop

    :goto_33f
    :try_start_4c
    sget-object v4, Lldx;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v4}, Lscs;->b()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0xd56

    nop

    nop

    nop

    nop

    invoke-interface {v4, v6}, Lscz;->M(I)Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    check-cast v4, Lscz;

    nop

    nop

    nop

    nop

    const-string v6, "Found older frame, but could not lock from binning."

    nop

    nop

    invoke-interface {v4, v6}, Lscz;->s(Ljava/lang/String;)V

    invoke-interface {v3}, Lpge;->close()V
    :try_end_4c
    .catchall {:try_start_4c .. :try_end_4c} :catchall_2a

    :cond_53
    :try_start_4d
    iget-object v3, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Lpdf;->g()V

    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :catchall_2a
    move-exception v0

    nop

    move-object v3, v0

    nop

    nop

    nop

    iget-object v4, v9, Lldx;->f:Lpdf;

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Lpdf;->g()V

    throw v3

    nop
    :try_end_4d
    .catch Ljava/lang/InterruptedException; {:try_start_4d .. :try_end_4d} :catch_0
    .catchall {:try_start_4d .. :try_end_4d} :catchall_2b

    :catchall_2b
    move-exception v0

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_340
    iget-object v1, v2, Lldy;->e:Likv;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_341
    move-object v15, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    :goto_342
    move/from16 v9, v18

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_343
    move-object v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_310

    nop

    nop

    nop

    nop

    :goto_344
    const-string v4, "PostShutter_pckZslHdrPlusProcessor#getLastGoodMetadata"

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_345
    move-object/from16 v33, v18

    nop

    goto/32 :goto_297

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_346
    move/from16 v35, v8

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
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "fallback"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const v0, 0x13

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

    :goto_2
    iget-object p0, p0, Lldy;->b:Lkuc;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const v1, 0xd

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lrrf;->c(Ljava/lang/Object;)Lrsr;

    move-result-object v0

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

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, p0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lrsr;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method
