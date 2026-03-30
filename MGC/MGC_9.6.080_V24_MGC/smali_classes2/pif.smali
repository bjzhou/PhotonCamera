.class public final Lpif;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final b:Ltxm;


# direct methods
.method public constructor <init>(Ltxm;Ltxm;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p2, p0, Lpif;->b:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lpif;->a:Ltxm;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

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


# virtual methods
.method public final synthetic a()Ljava/lang/Object;
    .locals 28

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    :goto_1
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v21, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1e2

    nop

    nop

    :goto_4
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v8, Lcom/google/android/apps/camera/backup/iI/oRSsAde;->TQEkBJqPpvUB:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    nop

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    :goto_9
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_a
    invoke-direct {v10}, Lprx;-><init>()V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_b
    or-int/lit8 v13, v11, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v17, 0x0

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

    :goto_d
    iget v2, v7, Lpry;->b:I

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v8, v5}, Lpcu;->h(Ljava/lang/String;)V

    goto/32 :goto_7a

    nop

    nop

    :goto_f
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {v0, v6}, Lpot;-><init>(Lpse;)V

    :goto_11
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v15, v5, Lphj;->e:I

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v7, ""

    nop

    :goto_14
    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_15
    iget v6, v5, Lphj;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_16
    invoke-static {v6, v8}, Ljava/lang/Math;->min(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v13, -0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v10, v11}, Lprx;->b(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v10, v11}, Lprx;->c(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_1a
    move-object v2, v14

    nop

    nop

    :goto_1b
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v10, Lprx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v3}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1f
    const-string v3, "createStreamMap"

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_f2

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_22
    move-object v0, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    :goto_24
    iget-object v13, v7, Lphl;->b:Lpck;

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_25
    move-object v9, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_26
    const-class v6, Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Lpox;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_28
    invoke-virtual {v10, v9}, Lprx;->b(I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_29
    invoke-virtual/range {v6 .. v12}, Lnar;->B(Ljava/lang/String;Ljava/lang/String;IIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v13, Lpnx;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v10, v11}, Lprx;->a(I)V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v10, v10, Lprx;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_2d
    move-object v15, v10

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_2e
    iget v2, v7, Lpry;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_2f
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_132

    nop

    nop

    :goto_30
    invoke-virtual {v10, v13, v14}, Lprx;->d(J)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, v5, Lphj;->q:I

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    :goto_32
    check-cast v9, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    :goto_33
    invoke-virtual {v0, v9}, Lows;->d(Lpci;)V

    goto/32 :goto_207

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v17, v3

    nop

    goto/32 :goto_17f

    nop

    nop

    :goto_37
    new-instance v6, Lrxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_38
    const/4 v8, 0x0

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

    :goto_39
    new-instance v4, Lryw;

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v19, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-lt v15, v14, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_16d

    nop

    nop

    :cond_0
    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v6, v15, Lpml;->g:Lows;

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1ba

    nop

    :goto_3e
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_3f
    check-cast v7, Lrbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_40
    move-object v3, v0

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    :goto_41
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_42
    iget-object v6, v5, Lphj;->n:Lryb;

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

    nop

    nop

    :goto_43
    iget-object v0, v0, Lpox;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v8}, Lpnx;->b(Ljava/lang/String;)Lpnx;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v7, v7, Lpgn;->a:Lpnx;

    nop

    goto/32 :goto_101

    nop

    nop

    :goto_46
    check-cast v0, Lpid;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_47
    check-cast v0, Lpra;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_48
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    :goto_49
    const-string v0, "Less than two matching MultiResolutionStreamInfo for the given StreamConfig. %s"

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_4a
    move-object v14, v2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v7, v6, Lnar;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct/range {v6 .. v11}, Lpma;-><init>(Lphj;Lpnx;Lpmk;IZ)V

    goto/32 :goto_155

    nop

    nop

    :goto_4d
    iget-object v0, v15, Lpml;->g:Lows;

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v8, v14}, Lpnv;->a(Lpnx;)Lpnu;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v8}, Landroid/hardware/camera2/MultiResolutionImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct/range {v18 .. v18}, Lpuq;-><init>()V

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_51
    move/from16 v27, v10

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_52
    iget-boolean v6, v5, Lphj;->o:Z

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object v0, v3

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

    :goto_54
    goto/16 :goto_11a

    nop

    :goto_55
    goto/32 :goto_119

    nop

    nop

    :goto_56
    check-cast v6, Lpcs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual/range {v5 .. v11}, Lnar;->B(Ljava/lang/String;Ljava/lang/String;IIII)V

    goto/32 :goto_12c

    nop

    nop

    :goto_58
    invoke-direct/range {v13 .. v18}, Lpnn;-><init>(Ljava/util/Collection;IILjava/lang/Long;Lpuq;)V

    goto/32 :goto_10

    nop

    nop

    :goto_59
    move-object v6, v4

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    move v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_5b
    iget-object v4, v3, Lpmm;->f:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    :goto_5c
    const/4 v6, 0x1

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    :goto_5d
    iget-byte v7, v10, Lprx;->g:B

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_5f
    move v4, v11

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_60
    new-instance v14, Lpmi;

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    :goto_61
    if-nez v12, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f7

    nop

    nop

    nop

    :goto_62
    invoke-direct {v2}, Lryw;-><init>()V

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_63
    const-string v0, "API 31 or higher is needed for MultiResolutionImageReader factory."

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_98

    nop

    nop

    :goto_65
    check-cast v8, Lpnn;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_66
    move-object v6, v3

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v7, v1, Lqpe;->d:Ljava/lang/Object;

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

    nop

    :goto_68
    iget-object v2, v1, Lqpe;->f:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1b0

    nop

    nop

    :goto_6a
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v7, v1, Lqpe;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_6c
    invoke-direct/range {v20 .. v27}, Lpry;-><init>(IIIIJI)V

    goto/32 :goto_2e

    nop

    nop

    :goto_6d
    move-object v7, v5

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_6e
    if-nez v13, :cond_3

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_151

    nop

    nop

    nop

    :goto_6f
    iget v3, v5, Lphj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    move-object/from16 v19, v0

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance v3, Lryw;

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_72
    const-string v5, " will not be available."

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v7, v7, Lphl;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_74
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_75
    iget-object v6, v1, Lqpe;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    :goto_76
    move-object v9, v13

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_77
    if-nez v8, :cond_4

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :cond_4
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v7, v5, Lphj;->d:Lpck;

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v8, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    goto/16 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v14, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_170

    nop

    nop

    :goto_7d
    iget v9, v5, Lphj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v9, v8, v7}, Lpnm;-><init>(Lpnn;Lpsd;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v13, v7, v8, v6}, Lpmk;-><init>(ILandroid/view/Surface;Ljava/util/List;)V

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    nop

    :goto_80
    check-cast v2, Lpgn;

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    :goto_81
    check-cast v7, Lpgn;

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    :goto_82
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_83
    const/4 v11, -0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v0, v0, Lpox;->a:Ljava/lang/Object;

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

    :goto_85
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_49

    nop

    nop

    :goto_87
    iget-object v4, v4, Lpmm;->f:Lpnx;

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

    :goto_88
    iget-object v14, v14, Lpgn;->a:Lpnx;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    check-cast v0, Lpox;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_8a
    iget v0, v0, Lsbh;->c:I

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

    :goto_8b
    if-nez v7, :cond_5

    nop

    nop

    goto/32 :goto_139

    nop

    :cond_5
    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_8c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v8, v10, Lpml;->d:Lpnv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    check-cast v8, Lpnx;

    nop

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_8f
    move-object v14, v2

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object v0, v0, Lpgn;->g:Lryb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_91
    iget-object v0, v15, Lpml;->g:Lows;

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    :goto_92
    iget-boolean v0, v0, Lpra;->d:Z

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_93
    iget v11, v7, Lpck;->a:I

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    :goto_94
    move-object v13, v6

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

    :goto_95
    if-nez v6, :cond_6

    nop

    goto/32 :goto_21

    nop

    :cond_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_96
    new-instance v3, Lpma;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v6, v6, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    :goto_98
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a4

    nop

    nop

    :goto_99
    invoke-virtual {v0, v2}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget v7, v5, Lphj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    const-string v6, ". "

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v7, v8, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_1bb

    nop

    nop

    :goto_9e
    invoke-interface {v0}, Lpdf;->g()V

    goto/32 :goto_1d0

    nop

    nop

    :goto_9f
    invoke-direct {v6, v3, v0, v7}, Lpmk;-><init>(ILandroid/view/Surface;Ljava/util/List;)V

    goto/32 :goto_169

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    iget-object v3, v5, Lphj;->g:Lrss;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v8, v21

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_35

    nop

    nop

    :goto_a3
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v13, v8}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v8

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    move-object/from16 v20, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :goto_a6
    move-object/from16 v0, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    :goto_a7
    check-cast v17, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_a8
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_a9
    iget-boolean v10, v10, Lpra;->e:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v14, v5, Lphj;->e:I

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move-object/from16 v19, v0

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object v13, v7, Lphl;->b:Lpck;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v14}, Lryw;->g()Lryy;

    move-result-object v3

    nop

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

    :goto_af
    move/from16 v20, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_b0
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v10, v4}, Lprx;->c(I)V

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    iget v7, v5, Lphj;->i:I

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    :goto_b3
    const-string v2, "Non positive height."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_b4
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0}, Lpid;->b()Lpgn;

    move-result-object v0

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_b6
    invoke-virtual {v6}, Lryb;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-direct {v6}, Lrxw;-><init>()V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_b8
    new-instance v0, Lpot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    :goto_b9
    move-object v15, v10

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_bb
    iget v13, v10, Lprx;->d:I

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

    :goto_bc
    invoke-interface {v7}, Ljava/util/Set;->isEmpty()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v0, v1, Lqpe;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v15, 0x0

    nop

    nop

    nop

    :goto_bf
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_c0
    invoke-static {v9, v2}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    move-object v6, v14

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_c2
    if-eqz v8, :cond_8

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_c3
    check-cast v6, Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    goto/32 :goto_1b3

    nop

    nop

    :goto_c4
    move/from16 v23, v14

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    iget v9, v5, Lpck;->a:I

    nop

    goto/32 :goto_1b9

    nop

    nop

    :goto_c6
    move/from16 v24, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_191

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {v6}, Lrss;->c()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    :goto_c8
    throw v0

    nop

    :goto_c9
    goto/32 :goto_ab

    nop

    nop

    :goto_ca
    goto/16 :goto_146

    nop

    :goto_cb
    goto/32 :goto_145

    nop

    nop

    :goto_cc
    iget-object v3, v1, Lqpe;->b:Ljava/lang/Object;

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

    :goto_cd
    if-eq v6, v7, :cond_9

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_ce
    invoke-interface {v8, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :goto_cf
    const/16 v8, 0x3f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_d0
    const-string v3, "Non positive width."

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_d1
    move/from16 v25, v7

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    new-instance v6, Lpmk;

    nop

    nop

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_d3
    sget-object v7, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_d4
    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_d5
    iput-byte v7, v10, Lprx;->g:B

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

    :goto_d6
    invoke-virtual {v2, v4}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    move-object/from16 v7, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_d8
    check-cast v6, Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    :goto_d9
    check-cast v8, Lpnx;

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    iget-object v7, v4, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_db
    invoke-static {v2, v3}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_dc
    check-cast v5, Lnar;

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_dd
    invoke-interface {v7, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v12

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_de
    move/from16 v23, v11

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_df
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_e0
    iget-object v0, v10, Lpml;->b:Lpra;

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    if-eqz v7, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_67

    nop

    nop

    :goto_e2
    iget-object v3, v5, Lphj;->b:Lrss;

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

    nop

    :goto_e3
    const-string v6, " does not match "

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

    :goto_e4
    move-object/from16 v22, v0

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_e5
    iget-object v6, v15, Lpml;->e:Lpgn;

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_e6
    move v4, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_e7
    check-cast v10, Lpml;

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    goto/16 :goto_1b

    nop

    :goto_e9
    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v6, v7}, Lpnx;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    iget-object v0, v10, Lpml;->a:Lprz;

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    :goto_ec
    iget v8, v10, Lprx;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_72

    nop

    nop

    :goto_ee
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

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

    :goto_ef
    invoke-interface {v4, v5}, Lpcu;->d(Ljava/lang/String;)V

    :goto_f0
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    move-object v9, v6

    nop

    nop

    nop

    nop

    :goto_f2
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_f3
    if-lt v0, v7, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget-object v0, v0, Lpif;->b:Ltxm;

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

    :goto_f5
    iget-object v2, v1, Lqpe;->g:Ljava/lang/Object;

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

    :goto_f6
    iget-object v8, v8, Lpnn;->a:Landroid/hardware/camera2/MultiResolutionImageReader;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f7
    move/from16 v16, v11

    nop

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

    nop

    :goto_f8
    invoke-virtual {v8, v14}, Lpns;->a(I)Lryb;

    move-result-object v8

    nop

    nop

    :goto_f9
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    new-instance v7, Lpry;

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_fb
    move v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_fc
    check-cast v7, Lpgn;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_fd
    iget v9, v5, Lphj;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v6, v5, Lphj;->g:Lrss;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    invoke-virtual {v6}, Lrxw;->g()Lryb;

    move-result-object v14

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

    :goto_100
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v13

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_101
    invoke-virtual {v6, v7}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_102
    iget-object v0, v5, Lphj;->g:Lrss;

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_103
    check-cast v13, Lrsx;

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    :goto_104
    const-string v15, "Found a matching multi-resolution stream info for size="

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    :goto_105
    move v11, v12

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    :goto_106
    iget-boolean v0, v0, Lpra;->e:Z

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_107
    invoke-interface {v0, v7}, Lprz;->a(Lpry;)Lpsb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_108
    const/4 v8, 0x1

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    :goto_109
    if-eqz v6, :cond_c

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

    :cond_c
    goto/32 :goto_16b

    nop

    nop

    :goto_10a
    move-object/from16 v23, v3

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_10b
    move-object/from16 v16, v4

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    iget-object v9, v5, Lphj;->d:Lpck;

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_10e
    move v9, v6

    nop

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

    :goto_10f
    iget-boolean v0, v0, Lpra;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_110
    move-object v8, v2

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_111
    move-object/from16 v20, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_112
    check-cast v6, Lnar;

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {v0, v13}, Lows;->d(Lpci;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_114
    goto/16 :goto_86

    nop

    :goto_115
    goto/32 :goto_85

    nop

    nop

    :goto_116
    check-cast v7, Lphl;

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v2, v15, Lpml;->h:Lrbh;

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    :goto_118
    iget-object v7, v1, Lqpe;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_119
    move/from16 v24, v15

    nop

    nop

    nop

    :goto_11a
    goto/32 :goto_74

    nop

    nop

    :goto_11b
    invoke-interface {v8}, Lpnu;->R()Lpns;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_11c
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    goto/32 :goto_138

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_11e
    new-instance v0, Lpot;

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

    :goto_11f
    new-instance v4, Lhdn;

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

    nop

    :goto_120
    invoke-interface {v7}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v7

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

    :goto_121
    iget-object v3, v1, Lqpe;->f:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_122
    invoke-direct {v7, v0, v14}, Lpor;-><init>(Lpot;Lpsd;)V

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-direct {v4}, Lryw;-><init>()V

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    :goto_124
    move-object v10, v5

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    invoke-direct {v3}, Lryw;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_126
    move-object/from16 v0, v17

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_127
    iget-object v13, v13, Lrsx;->a:Ljava/lang/Object;

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

    :goto_128
    iget v11, v10, Lprx;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_129
    iget-object v0, v10, Lpml;->a:Lprz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12a
    invoke-static {v6, v0}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    iput-byte v13, v10, Lprx;->g:B

    nop

    nop

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    :goto_12c
    move-object v3, v0

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    :goto_12d
    move-object/from16 v16, v4

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    :goto_12e
    iget-object v0, v5, Lphj;->g:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    iget-object v0, v10, Lpml;->b:Lpra;

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_130
    iget v8, v1, Lqpe;->a:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_131
    invoke-virtual {v3, v6}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    :goto_132
    iget-object v6, v6, Lnar;->b:Ljava/lang/Object;

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

    :goto_133
    goto/16 :goto_11

    nop

    :goto_134
    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_135
    new-instance v2, Lryw;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_136
    iget-object v7, v7, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_137
    invoke-virtual {v7, v9, v6}, Landroid/hardware/camera2/MultiResolutionImageReader;->setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_138
    invoke-virtual {v10, v7, v8}, Lprx;->d(J)V

    :goto_139
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast v8, Lpnn;

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_13b
    iget v10, v5, Lphj;->e:I

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_13c
    invoke-virtual {v0, v7}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_13d
    iget-object v9, v1, Lqpe;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    :goto_13e
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    move-object/from16 v9, v16

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_140
    invoke-virtual {v2, v3}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    add-int/2addr v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_142
    move-object/from16 v21, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    :goto_143
    invoke-virtual {v1}, Lpmn;->b()Lqpe;

    move-result-object v1

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_144
    const-string v11, "Stream configuration is invalid. Camera-"

    nop

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    nop

    :goto_145
    const/4 v2, 0x0

    nop

    :goto_146
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_147
    check-cast v0, Lsbh;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_148
    new-instance v6, Lpnn;

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

    :goto_149
    iget-object v13, v5, Lphj;->n:Lryb;

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_14a
    iget-object v0, v5, Lphj;->h:Lrss;

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_14b
    iget-boolean v6, v10, Lpml;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_14c
    invoke-virtual {v3}, Lpma;->a()I

    move-result v8

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    :goto_14d
    invoke-direct {v9, v8}, Lpno;-><init>(Landroid/hardware/camera2/params/OutputConfiguration;)V

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    invoke-virtual {v0}, Lryb;->t()Lscq;

    move-result-object v0

    nop

    nop

    :goto_14f
    goto/32 :goto_82

    nop

    nop

    :goto_150
    sget-object v7, Lphm;->a:Lphm;

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_151
    iget-object v13, v7, Lphl;->a:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    :goto_152
    const/4 v9, 0x1

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_153
    if-nez v8, :cond_d

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_154
    new-instance v18, Lpuq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_155
    invoke-virtual {v14, v3}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_156
    new-instance v7, Lpor;

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_157
    check-cast v0, Lpox;

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_158
    add-int/lit8 v10, v4, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_159
    check-cast v0, Lows;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_15a
    const/4 v7, 0x2

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_15b
    sget-object v6, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    check-cast v9, Lpgn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    :goto_15d
    move-object/from16 v16, v4

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_15e
    const-string v7, "buffered"

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_15f
    move-object v7, v5

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_160
    invoke-direct {v7}, Lrxw;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_161
    iget v10, v5, Lpck;->b:I

    nop

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

    :goto_162
    move-object/from16 v4, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_163
    iget-byte v11, v10, Lprx;->g:B

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_164
    invoke-virtual {v6, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_165
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_166
    goto/16 :goto_14f

    nop

    nop

    nop

    :goto_167
    goto/32 :goto_1e7

    nop

    nop

    :goto_168
    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_18f

    nop

    nop

    :goto_169
    invoke-virtual {v6, v2}, Lpmk;->a(Lpmg;)V

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_16a
    if-eqz v6, :cond_e

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_16b
    sget-object v6, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16c
    goto/16 :goto_bf

    nop

    nop

    nop

    nop

    :goto_16d
    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    iget-object v8, v1, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    invoke-direct/range {v6 .. v11}, Lpmi;-><init>(Lrbh;Lpcu;Lpse;Lphj;Lpmk;)V

    goto/32 :goto_15b

    nop

    nop

    :goto_170
    move/from16 v24, v15

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_171
    const/4 v7, 0x2

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_172
    sget-object v8, Lsbh;->a:Lryb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_173
    invoke-static {v9, v0, v5}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_12f

    nop

    nop

    :goto_174
    move/from16 v15, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_175
    new-instance v9, Lpnm;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v8

    nop

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

    nop

    :goto_177
    invoke-direct/range {v6 .. v11}, Lpmb;-><init>(Lphj;Lpnx;Lpck;IZ)V

    goto/32 :goto_19d

    nop

    nop

    nop

    :goto_178
    new-instance v13, Lpmk;

    nop

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    :goto_179
    iget-object v2, v2, Lpgn;->a:Lpnx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_17a
    invoke-interface {v0}, Lpsb;->e()Landroid/view/Surface;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_17b
    invoke-virtual {v2}, Lryw;->g()Lryy;

    move-result-object v2

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    nop

    nop

    :goto_17c
    iget-object v0, v0, Lpox;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-virtual/range {v20 .. v25}, Lrbh;->b(Lpnx;Lpsb;Lrss;ZI)Lpmg;

    move-result-object v2

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_17e
    iget-object v6, v4, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    iget-wide v2, v10, Lprx;->e:J

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_180
    check-cast v5, Lphj;

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    move-object/from16 v17, v6

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_182
    new-instance v6, Lpnn;

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_183
    move-object/from16 v0, v19

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    nop

    :goto_184
    check-cast v1, Lpmn;

    nop

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

    :goto_185
    iget-object v0, v1, Lqpe;->g:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_186
    invoke-direct {v4, v3, v0, v2}, Lhdn;-><init>(Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_187
    iget v10, v5, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    :goto_188
    invoke-static {v6}, Luct;->a(Ljava/lang/Class;)Ludp;

    move-result-object v6

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_189
    move/from16 v24, v6

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

    :goto_18a
    iput v7, v10, Lprx;->b:I

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_168

    nop

    nop

    nop

    nop

    :goto_18c
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_18d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v7

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    check-cast v8, Landroid/hardware/camera2/params/OutputConfiguration;

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_18f
    const-string v13, ",cameraId="

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_190
    if-nez v5, :cond_f

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    :cond_f
    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_191
    move-wide/from16 v25, v2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_192
    const/4 v12, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_193
    invoke-interface {v8, v7}, Lpcu;->f(Ljava/lang/String;)V

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_194
    iget-boolean v0, v0, Lpra;->b:Z

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_195
    move-object v8, v0

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_196
    new-instance v9, Lpno;

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    :goto_197
    add-int/lit8 v18, v15, 0x1

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_198
    iget-object v5, v5, Lphj;->d:Lpck;

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

    :goto_199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    if-gtz v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :cond_10
    goto/32 :goto_10e

    nop

    nop

    :goto_19b
    iget-object v7, v15, Lpml;->a:Lprz;

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_19c
    invoke-virtual {v3}, Lryy;->isEmpty()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    :goto_19d
    invoke-virtual {v14, v4}, Lryw;->h(Ljava/lang/Object;)V

    goto/32 :goto_1c4

    nop

    nop

    :goto_19e
    check-cast v0, Lpox;

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_19f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1a0
    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-interface {v0, v6}, Lpse;->c(Ludp;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_1a2
    iget-object v7, v1, Lqpe;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    iget-object v2, v1, Lqpe;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_1a4
    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_1a5
    iget v11, v5, Lpck;->b:I

    nop

    nop

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    :goto_1a6
    move-object/from16 v13, v22

    nop

    nop

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    move-object v10, v6

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    move-object v13, v6

    nop

    nop

    nop

    goto/32 :goto_1ae

    nop

    nop

    :goto_1a9
    const-string v8, " or one of its physical cameras: "

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    :goto_1ab
    iget v9, v10, Lprx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_1ac
    goto/16 :goto_f9

    nop

    nop

    nop

    nop

    :goto_1ad
    goto/32 :goto_aa

    nop

    nop

    :goto_1ae
    move/from16 v16, v11

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_1af
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_1b0
    new-instance v10, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    :goto_1b1
    iget-object v8, v0, Lpot;->a:Lpse;

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    :goto_1b2
    iget-object v6, v10, Lpml;->i:Lnar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_1b3
    invoke-static {v6}, Landroid/hardware/camera2/params/OutputConfiguration;->createInstancesForMultiResolutionOutput(Landroid/hardware/camera2/MultiResolutionImageReader;)Ljava/util/Collection;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_1b4
    or-int/lit8 v7, v11, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    move/from16 v14, v23

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    :goto_1b6
    move/from16 v21, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :goto_1b7
    iget-object v0, v0, Lpox;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1b8
    move/from16 v22, v9

    nop

    goto/32 :goto_de

    nop

    nop

    :goto_1b9
    move-object v5, v2

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_1ba
    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    :goto_1bb
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_1bc
    iget-object v3, v3, Lpgn;->a:Lpnx;

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    iget-object v1, v0, Lpif;->a:Ltxm;

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_1be
    if-gtz v2, :cond_11

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_5a

    nop

    nop

    :goto_1bf
    invoke-direct {v0, v6}, Lpot;-><init>(Lpse;)V

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_1c0
    if-eq v7, v8, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    move-object/from16 v22, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    :goto_1c2
    int-to-byte v7, v7

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_1c3
    move-object v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_1c4
    move-object/from16 v2, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_1c5
    invoke-virtual/range {v17 .. v17}, Ljava/lang/Long;->longValue()J

    goto/32 :goto_157

    nop

    nop

    :goto_1c6
    iget-object v2, v5, Lphj;->b:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_1c7
    goto/16 :goto_14

    nop

    nop

    :goto_1c8
    goto/32 :goto_13

    nop

    nop

    :goto_1c9
    goto/16 :goto_1

    nop

    :goto_1ca
    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    int-to-byte v13, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    move-object v0, v3

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    invoke-virtual {v9}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_1ce
    invoke-virtual {v6, v9}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1cf
    iget v15, v5, Lphj;->e:I

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    return-object v4

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    goto/32 :goto_9d

    nop

    nop

    :goto_1d2
    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_1d3
    check-cast v0, Lpra;

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v7

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

    :goto_1d5
    invoke-virtual {v0, v6}, Lows;->d(Lpci;)V

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    iget-object v4, v1, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d7
    move/from16 v15, v24

    nop

    goto/32 :goto_1dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_1d9
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_1da
    check-cast v3, Lpgn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_1db
    new-instance v4, Lpmb;

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_1dc
    goto/16 :goto_1a0

    nop

    nop

    :goto_1dd
    goto/32 :goto_174

    nop

    nop

    :goto_1de
    move-object v11, v13

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    :goto_1df
    iget-object v6, v6, Lpnx;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e0
    move-object v6, v3

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e1
    invoke-virtual {v7}, Lrxw;->g()Lryb;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    :goto_1e2
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    move-object v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e4
    if-nez v4, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_1e5
    iget-object v5, v3, Lpma;->b:Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    :goto_1e6
    iget-object v8, v0, Lpot;->a:Lpse;

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    :goto_1e7
    move-object v14, v2

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

    :goto_1e8
    iget-object v8, v10, Lpml;->c:Lpcu;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_1e9
    move-object/from16 v17, v3

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

    :goto_1ea
    check-cast v0, Lprz;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_1eb
    invoke-virtual {v13, v14}, Lpck;->equals(Ljava/lang/Object;)Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ec
    iput v11, v10, Lprx;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    :goto_1ed
    iget-object v8, v7, Lphl;->a:Lrss;

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_1ee
    invoke-direct {v14, v8, v13}, Lpck;-><init>(II)V

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    :goto_1ef
    invoke-virtual {v6}, Lpcs;->b()Lpcu;

    move-result-object v8

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_1f0
    move-object/from16 v19, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_1f1
    if-ge v0, v6, :cond_14

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    :cond_14
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    :goto_1f2
    iget-object v9, v9, Lpgn;->a:Lpnx;

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    const-string v5, "No streams available, camera configuration will fail!"

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :goto_1f4
    iget v11, v3, Lpma;->d:I

    nop

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_1f5
    iget-object v6, v5, Lphj;->a:Lphm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    :goto_1f6
    new-instance v7, Lrxw;

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

    :goto_1f7
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    goto/32 :goto_1a2

    nop

    nop

    :goto_1f9
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1fa
    iget-object v14, v10, Lpml;->e:Lpgn;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1fb
    new-instance v14, Lpck;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    move-object v14, v2

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    iget v7, v7, Lpck;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    :goto_1fe
    move-object v2, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_200
    iget-object v7, v1, Lqpe;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_201
    if-eqz v7, :cond_15

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_61

    nop

    nop

    nop

    :goto_202
    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_203
    invoke-direct/range {v13 .. v18}, Lpnn;-><init>(Ljava/util/Collection;IILjava/lang/Long;Lpuq;)V

    goto/32 :goto_1bf

    nop

    nop

    :goto_204
    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_202

    nop

    nop

    nop

    :goto_205
    invoke-interface {v2, v3}, Lpdf;->f(Ljava/lang/String;)V

    goto/32 :goto_135

    nop

    nop

    nop

    :goto_206
    invoke-virtual {v7, v9}, Lrxw;->h(Ljava/lang/Object;)V

    goto/32 :goto_1c9

    nop

    nop

    nop

    :goto_207
    iget-object v0, v5, Lphj;->b:Lrss;

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_208
    check-cast v21, Lpnx;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_209
    invoke-virtual {v10, v0}, Lprx;->a(I)V

    goto/32 :goto_14a

    nop

    nop

    nop

    :goto_20a
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    move-result v11

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_20b
    move/from16 v7, v20

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_20c
    iget-object v10, v15, Lpml;->b:Lpra;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    iget-object v6, v5, Lphj;->b:Lrss;

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
.end method
