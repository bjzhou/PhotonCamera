.class public final Lri;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lsl;


# instance fields
.field private final a:Lov;

.field private final b:Lvm;

.field private final synthetic c:I

.field private final d:Lejk;

.field private final e:Lejk;


# direct methods
.method public constructor <init>(Lejk;Lov;Lvm;Lejk;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lri;->d:Lejk;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput p5, p0, Lri;->c:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iput-object p3, p0, Lri;->b:Lvm;

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

    :goto_4
    iput-object p2, p0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    iput-object p4, p0, Lri;->e:Lejk;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lejk;Lov;Lvm;Lejk;I[B)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lri;->b:Lvm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lri;->d:Lejk;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lri;->e:Lejk;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iput p5, p0, Lri;->c:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lsd;Ljava/util/Map;Lsp;)Ljava/util/Map;
    .locals 16

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    iget-object v0, v0, Lri;->a:Lov;

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    if-nez v6, :cond_0

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    :cond_0
    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b1

    nop

    nop

    :goto_7
    iget-object v5, v0, Lri;->b:Lvm;

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

    :goto_8
    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_9
    if-eqz v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v6, v5, v7, v4}, Lsu;-><init>(III)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_e
    check-cast v5, Ljava/lang/Integer;

    nop

    :goto_f
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lri;->a:Lov;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_11
    if-nez v4, :cond_3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_12
    check-cast v4, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v6, Lse;->a:Lpx;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, v2, Lov;->d:Ljava/util/List;

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

    nop

    :goto_15
    if-nez v3, :cond_4

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :cond_4
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_16
    new-instance v6, Lsu;

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

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_19
    sget-object v0, Ltyx;->a:Ltyx;

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

    nop

    :goto_1a
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, v3, Lov;->d:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0}, Lox;->a(I)Ljava/lang/String;

    move-result-object v0

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

    :goto_1d
    goto/16 :goto_c4

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual/range {p3 .. p3}, Lsp;->f()V

    :goto_20
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v8, v0, Lov;->f:Ljava/util/Map;

    nop

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

    :goto_22
    invoke-virtual {v6, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_23
    const-string v1, "All InputStream.Config objects must have the same format for multi resolution"

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x20

    nop

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

    nop

    :goto_25
    invoke-virtual {v3, v6}, Lejk;->c(Ljava/lang/String;)Lrp;

    move-result-object v3

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_63

    nop

    nop

    :goto_28
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_29
    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

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

    nop

    nop

    :goto_2a
    throw v1

    nop

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    :goto_2c
    invoke-direct/range {v2 .. v8}, Lss;-><init>(Ljava/util/List;Ljava/util/concurrent/Executor;Lsp;Ljava/util/Map;Ljava/lang/Integer;Lst;)V

    goto/32 :goto_32

    nop

    nop

    :goto_2d
    move-object/from16 v9, p3

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    :goto_2e
    iget v8, v3, Lov;->g:I

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

    :goto_2f
    invoke-interface/range {p1 .. p1}, Lsd;->a()Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v3, Lsu;

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-interface {v1, v13}, Lsd;->f(Lss;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface/range {p1 .. p1}, Lsd;->a()Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_34
    invoke-interface {v3, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_35
    if-eqz v0, :cond_6

    nop

    goto/32 :goto_20

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    :goto_36
    new-instance v8, Lst;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v8, v14}, La;->p(II)Z

    move-result v15

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_38
    move-object v4, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual/range {p3 .. p3}, Lsp;->f()V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v4, v4, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_3b
    const-string v0, " for Extension CameraGraph"

    nop

    goto/32 :goto_da

    nop

    nop

    :goto_3c
    invoke-static {v11, v9, v1, v0, v10}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3d
    instance-of v6, v3, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3e
    goto/16 :goto_64

    nop

    nop

    :goto_3f
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_40
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_b6

    nop

    nop

    :goto_42
    const-string v1, "The CameraPipeKeys.camera2ExtensionMode must be set in the sessionParameters of the CameraGraph.Config when creating an Extension CameraGraph."

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_43
    check-cast v4, Lqei;

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v6, v0, Lri;->e:Lejk;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_45
    invoke-static {v3}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_46
    invoke-static {v3, v5, v2, v6, v8}, Lkg;->D(Lov;Lvm;Ljava/util/Map;Lejk;Ljava/lang/String;)Lsz;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_b9

    nop

    nop

    :goto_48
    goto/32 :goto_9b

    nop

    nop

    :goto_49
    invoke-static {v3, v6, v2, v7, v8}, Lkg;->D(Lov;Lvm;Ljava/util/Map;Lejk;Ljava/lang/String;)Lsz;

    move-result-object v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v3, v3, Lov;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_51

    nop

    nop

    :goto_4f
    iget-object v0, v0, Lri;->d:Lejk;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_50
    iget-object v5, v4, Lqd;->b:Landroid/util/Size;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v2, v0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_52
    invoke-static {v2}, Lrkm;->aI(Ljava/lang/Iterable;)I

    move-result v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_53
    throw v0

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_56
    goto/16 :goto_c7

    nop

    nop

    :goto_57
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_59
    move v3, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v7, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_5b
    const/4 v14, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_5d
    iget-object v5, v15, Lsz;->a:Ljava/util/List;

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, v15, Lsz;->b:Ljava/util/Map;

    nop

    :goto_5f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_61
    move-object/from16 v5, p3

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_62
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_3

    nop

    nop

    :goto_65
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v3, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v3, v2, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_68
    iget-object v7, v0, Lri;->e:Lejk;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_69
    return-object v0

    nop

    :goto_6a
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_6b
    iget-object v3, v0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_6c
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v6, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_6e
    const-string v0, "Failed to create capture session from "

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_b7

    nop

    nop

    :goto_70
    iget-object v0, v0, Lri;->a:Lov;

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_71
    if-eqz v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_72
    move-object v4, v3

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v5}, Landroid/util/Size;->getWidth()I

    move-result v5

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

    :goto_74
    invoke-static {v12, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_76
    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_77
    if-eqz v7, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :cond_9
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-nez v15, :cond_a

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

    :cond_a
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_93

    nop

    :goto_7a
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, v0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_7d
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_7e
    move v14, v13

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget v0, v0, Lov;->g:I

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

    :goto_80
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_81
    throw v1

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_83
    iget v8, v3, Lov;->g:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v4}, Lrkm;->ax(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_86
    invoke-interface/range {p1 .. p1}, Lsd;->a()Ljava/lang/String;

    move-result-object v8

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_87
    const-string v10, " for "

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const/16 v11, 0x21

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

    :goto_89
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_8b
    iget-object v6, v3, Lov;->f:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const-string v4, "Failed to create OutputConfigurations for "

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_8d
    const-string v1, "Reprocessing is not supported for Extensions"

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8f
    invoke-static {v8, v7}, La;->p(II)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_90
    invoke-direct {v8, v9}, Lst;-><init>(Lsp;)V

    goto/32 :goto_d2

    nop

    nop

    :goto_91
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_df

    nop

    nop

    :goto_92
    sget-object v0, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_ca

    nop

    nop

    :goto_94
    goto/16 :goto_c7

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_a4

    nop

    nop

    :goto_96
    goto/16 :goto_d5

    nop

    :goto_97
    goto/32 :goto_d4

    nop

    nop

    :goto_98
    if-nez v7, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_99
    move-object/from16 v2, p2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_9a
    const-string v6, "Unsupported session mode: "

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_9b
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-static {v0}, Lox;->a(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v7}, Landroid/util/Size;->getHeight()I

    move-result v7

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_9e
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    check-cast v5, Lsu;

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

    nop

    :goto_a0
    sget-object v0, Ltyx;->a:Ltyx;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_a2
    if-nez v5, :cond_c

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_c
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_a3
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-static {v8, v7}, La;->p(II)Z

    move-result v7

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

    :goto_a5
    invoke-static {v8, v13}, La;->p(II)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v4, v4, Lqei;->b:Ljava/lang/Object;

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

    :goto_a7
    invoke-interface {v4, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

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

    :goto_a8
    iget-object v3, v0, Lri;->e:Lejk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_a9
    move-object v2, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_aa
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget v0, v0, Lov;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_ac
    iget-object v0, v0, Lri;->a:Lov;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {v0}, Lejk;->b()Ljava/util/concurrent/Executor;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v7, 0x2

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

    :goto_af
    invoke-direct/range {v2 .. v8}, Ltg;-><init>(ILjava/util/List;Ljava/util/List;Ljava/util/concurrent/Executor;Lsp;Ljava/util/Map;)V

    goto/32 :goto_db

    nop

    nop

    :goto_b0
    iget-object v2, v15, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_b1
    move-object/from16 v0, p0

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

    :goto_b2
    new-instance v13, Lss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_b3
    iget-object v6, v0, Lri;->b:Lvm;

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_b4
    const-string v1, " does not support extension mode "

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_b6
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const-string v1, ". Supported extensions are "

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_b9
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    move-object v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_bb
    iget v4, v4, Lqd;->c:I

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

    :goto_bc
    const/4 v5, 0x0

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_bd
    invoke-virtual/range {p3 .. p3}, Lsp;->b()V

    :goto_be
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_bf
    new-instance v13, Ltg;

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    move-object v2, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    if-nez v4, :cond_d

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    iget-object v7, v4, Lqd;->b:Landroid/util/Size;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    throw v0

    nop

    :goto_c4
    goto/32 :goto_5d

    nop

    nop

    :goto_c5
    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c6
    move v14, v8

    nop

    nop

    :goto_c7
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_c9
    iget v5, v5, Lsu;->c:I

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    return-object v0

    nop

    :goto_cb
    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    invoke-static {v11, v9, v1, v0, v10}, La;->bm(BLjava/lang/Object;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_ce
    iget v3, v0, Lri;->c:I

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

    :goto_cf
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_d0
    iget-object v3, v0, Lri;->a:Lov;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    new-instance v3, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object v4, v2, Lsz;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_d3
    if-nez v3, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    move-object v4, v5

    nop

    nop

    :goto_d5
    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    iget-object v2, v0, Lri;->d:Lejk;

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

    :goto_d8
    check-cast v4, Lqd;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d9
    if-nez v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_d1

    nop

    nop

    :goto_da
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a1

    nop

    nop

    :goto_db
    invoke-interface {v1, v13}, Lsd;->e(Ltg;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_dc
    iget v3, v3, Lsu;->c:I

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_dd
    if-nez v14, :cond_11

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_7e

    nop

    nop

    :goto_de
    iget-object v3, v0, Lri;->a:Lov;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_df
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_b4

    nop

    nop

    :goto_e0
    const-string v0, "Failed to create ExtensionCaptureSession from "

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_e1
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-direct {v2, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    new-instance v1, Ljava/lang/IllegalStateException;

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

    :goto_e4
    sget-object v6, Lse;->a:Lpx;

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

    nop

    :goto_e5
    throw v0

    nop

    :goto_e6
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_e7
    if-eq v3, v5, :cond_12

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_e9
    invoke-virtual {v2}, Lejk;->b()Ljava/util/concurrent/Executor;

    move-result-object v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_ea
    iget-object v3, v0, Lri;->a:Lov;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    if-lez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_13
    goto/32 :goto_5

    nop

    :goto_ec
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_ee
    move-object v5, v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual/range {p3 .. p3}, Lsp;->f()V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f0
    const-string v12, "CXCP"

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

    :goto_f1
    invoke-virtual {v3}, Lrp;->f()Ljava/util/Set;

    move-result-object v3

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
.end method
