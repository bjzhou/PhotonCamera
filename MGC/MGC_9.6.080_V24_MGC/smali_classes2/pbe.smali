.class public final Lpbe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpak;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Lpag;

.field public final c:Lpau;

.field public final d:Ljava/util/Map;

.field public e:Lpah;

.field public final f:Lsui;

.field public final g:Ljava/util/concurrent/ExecutorService;

.field public h:Lppp;

.field public i:I

.field public final j:Lpbd;

.field public final k:Lpap;

.field public l:Lgtu;

.field private final m:Lsuk;

.field private final n:I

.field private final o:Z

.field private final p:Z

.field private q:Z


# direct methods
.method public constructor <init>(Lpbf;)V
    .locals 32

    goto/32 :goto_76

    nop

    nop

    :goto_0
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    iput-object v3, v0, Lpbe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v6, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v4, Lste;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_5
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_6
    iget v4, v4, Lozf;->e:I

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v2, v1, Lpbf;->c:Lozj;

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

    :goto_8
    iget v10, v1, Lpbf;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v5, v0, Lpbe;->h:Lppp;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    :goto_a
    const/4 v5, 0x1

    nop

    nop

    :goto_b
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v17, v4

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_e
    iput-object v2, v0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_10
    iget-object v4, v1, Lpbf;->d:Lozm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v4, Lstd;->a:Lstd;

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-boolean v14, v1, Lpbf;->p:Z

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v6, v1, Lpbf;->d:Lozm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_14
    move-object/from16 v16, v8

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v5, v0, Lpbe;->i:I

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_17
    invoke-direct/range {v16 .. v31}, Lpbd;-><init>(Lozm;Lozz;IIILpag;Lrss;Lrss;Lpau;Lpdf;Loyn;Loyn;ZLpaq;Lrss;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_18
    iget-object v6, v1, Lpbf;->o:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_19
    new-instance v9, Llxe;

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

    :goto_1a
    new-array v9, v8, [Lsui;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v5, v1, Lpbf;->u:Landroid/media/MediaCodec$Callback;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_1c
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_1d
    goto/32 :goto_3a

    nop

    nop

    :goto_1e
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_1f
    move-object v10, v12

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_20
    iget-object v8, v0, Lpbe;->h:Lppp;

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v3, v1, Lpbf;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_22
    if-nez v2, :cond_2

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_60

    nop

    nop

    :goto_23
    iget-object v12, v1, Lpbf;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_24
    iget-object v3, v1, Lpbf;->s:Lsui;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v3, v0, Lpbe;->f:Lsui;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_26
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v2, v0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_28
    move-object/from16 v1, p1

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

    :goto_29
    aput-object v3, v9, v5

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

    :goto_2a
    iget v12, v1, Lpbf;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_2b
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_5b

    nop

    nop

    :goto_2d
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2e
    move/from16 v20, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_2f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

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

    :goto_30
    iput-object v6, v0, Lpbe;->c:Lpau;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_31
    aput-object v3, v9, v15

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v5, v0, Lpbe;->b:Lpag;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_33
    iget-object v7, v1, Lpbf;->i:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_58

    nop

    :goto_35
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_36
    sget-object v6, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_37
    move-object/from16 v0, p0

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

    :goto_38
    iput-object v7, v0, Lpbe;->b:Lpag;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_39
    iput-boolean v5, v0, Lpbe;->q:Z

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v6, Lpau;

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

    :goto_3b
    move-object v9, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3c
    invoke-direct {v9, v0, v1, v4, v8}, Llxe;-><init>(Ljava/lang/Object;Ljava/lang/Object;II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_3e
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v4}, Lozm;->c()I

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput-object v5, v0, Lpbe;->h:Lppp;

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_41
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v4}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_43
    instance-of v5, v4, Lpba;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v5, v1, Lpbf;->b:Lpdf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_45
    if-nez v4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_3
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-eqz v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v4, Lpaw;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_48
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_49
    move-object v7, v8

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_57

    nop

    :goto_4b
    new-instance v4, Lpap;

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

    :goto_4c
    iget v4, v1, Lpbf;->y:I

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v6, v0, Lpbe;->c:Lpau;

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_4e
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v4, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_50
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_51
    iget-object v4, v1, Lpbf;->c:Lozj;

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

    :goto_52
    invoke-direct {v4}, Lste;-><init>()V

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_53
    iput-boolean v14, v0, Lpbe;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_54
    new-instance v8, Lqki;

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_55
    move-object v8, v9

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

    :goto_56
    new-instance v8, Lpbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_5a
    move v4, v5

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_c2

    nop

    nop

    :goto_5c
    iget-object v2, v1, Lpbf;->x:Lgtu;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    goto/16 :goto_73

    nop

    :goto_5e
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v6, :cond_7

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iput-object v2, v0, Lpbe;->l:Lgtu;

    nop

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {v6, v4, v7, v8}, Lpau;-><init>(Ljava/util/Set;Landroid/os/Handler;Lrss;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_63
    move-object/from16 v30, v13

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v9, v1, Lpbf;->e:Lozz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_65
    goto/16 :goto_7a

    nop

    nop

    :goto_66
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v8, v4, v9}, Lqki;-><init>(Landroid/media/AudioRecord;I)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v15, 0x1

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

    :goto_6a
    iput-boolean v5, v0, Lpbe;->o:Z

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6b
    invoke-interface {v4, v5, v6, v3, v7}, Lpaw;->a(Lpag;Lrss;Loyn;Lozm;)Lpaf;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_6c
    iget-object v4, v1, Lpbf;->u:Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6d
    move/from16 v19, v10

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move/from16 v21, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_6f
    move-object/from16 v28, v3

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v3, v9, v4}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v3

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

    :goto_71
    new-instance v3, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_72
    iput-object v2, v0, Lpbe;->j:Lpbd;

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v5, :cond_8

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

    :cond_8
    goto/32 :goto_67

    nop

    nop

    :goto_75
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x7

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_77
    sget-object v6, Lpaj;->b:Lpaj;

    nop

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

    :goto_78
    new-instance v4, Ljava/util/HashSet;

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

    :goto_79
    iput-boolean v15, v0, Lpbe;->o:Z

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_7b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-interface {v7}, Lpag;->g()V

    :goto_7e
    goto/32 :goto_41

    nop

    nop

    :goto_7f
    iput-object v8, v0, Lpbe;->j:Lpbd;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_80
    invoke-static {v5}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v23

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

    :goto_81
    if-nez v2, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    sget-object v6, Lpaj;->c:Lpaj;

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

    :goto_83
    const/4 v8, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_84
    invoke-direct {v3, v4}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_85
    move-object/from16 v25, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_86
    iget-boolean v6, v0, Lpbe;->o:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_87
    const-wide v8, 0x7fffffffffffffffL

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_88
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/32 :goto_99

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_4d

    nop

    nop

    :goto_8c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v7, v1, Lpbf;->d:Lozm;

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

    :goto_8e
    iget-object v6, v0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v4, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-boolean v2, v1, Lpbf;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_91
    move-object v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-direct {v7, v3}, Lpaa;-><init>(Lsui;)V

    goto/32 :goto_38

    nop

    nop

    :goto_93
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v6, v2}, Lpau;->a(Lpar;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_95
    iput-object v4, v0, Lpbe;->k:Lpap;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move-object/from16 v27, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_97
    move-object v6, v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_98
    iget-object v3, v1, Lpbf;->a:Lsuk;

    nop

    nop

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

    :goto_99
    sget-object v2, Lpar;->g:Lpar;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_9a
    move-object/from16 v18, v9

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

    :goto_9b
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

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

    :goto_9c
    iput-object v2, v0, Lpbe;->e:Lpah;

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_9d
    invoke-direct {v5, v8}, Lpay;-><init>(Lqkh;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9e
    const/4 v9, 0x0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_9f
    move-object v12, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-nez v6, :cond_b

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_b
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object v4, v0, Lpbe;->h:Lppp;

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-direct {v13}, Lpaq;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a4
    invoke-static {v6}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a5
    goto/16 :goto_3e

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v5}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v24

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_a9
    iget-boolean v6, v0, Lpbe;->q:Z

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

    :goto_aa
    iget-object v4, v1, Lpbf;->v:Lppq;

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v4, v1, Lpbf;->d:Lozm;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual/range {p1 .. p1}, Lpbf;->r()Lsui;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {v6}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v6

    nop

    nop

    nop

    nop

    :goto_ae
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_af
    iget-object v4, v4, Lozm;->a:Lozf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b0
    invoke-static {v9}, Lsgj;->L([Lsui;)Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_b1
    iput-object v3, v0, Lpbe;->m:Lsuk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_b2
    if-eqz v6, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_c
    goto/32 :goto_82

    nop

    nop

    :goto_b3
    invoke-direct {v11, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_b4
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_b5
    const/4 v5, 0x1

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

    :goto_b6
    sget-object v6, Lpaj;->a:Lpaj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    move-object/from16 v22, v7

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

    :goto_b9
    if-nez v4, :cond_d

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_d
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iput-object v4, v0, Lpbe;->g:Ljava/util/concurrent/ExecutorService;

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_bc
    new-instance v3, Loxv;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_bd
    iget-object v2, v1, Lpbf;->o:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_be
    move-object/from16 v26, v5

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_bf
    invoke-static {v7}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v4, v1, Lpbf;->d:Lozm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    :goto_c1
    iget v15, v1, Lpbf;->h:I

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_c2
    new-instance v7, Lpaa;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-interface {v4}, Lpaf;->a()Ljava/lang/String;

    move-result-object v7

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_c4
    invoke-virtual/range {p1 .. p1}, Lpbf;->r()Lsui;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_1d

    nop

    :goto_c6
    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_c7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_c8
    iput v3, v0, Lpbe;->n:I

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

    nop

    :goto_c9
    check-cast v4, Landroid/media/AudioRecord;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-interface {v4, v5}, Lppq;->a(Lppp;)Lppp;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v6, v1, Lpbf;->c:Lozj;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    invoke-direct/range {v5 .. v14}, Lpap;-><init>(Lozj;Lppp;Ljava/util/List;Ljava/util/List;Lpdf;Loyn;Loyn;Lpaq;Z)V

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    new-instance v13, Lpaq;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_ce
    goto/16 :goto_b

    nop

    :goto_cf
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    move/from16 v29, v2

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

    :goto_d1
    new-instance v11, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d2
    new-instance v5, Lpay;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_d3
    invoke-static {v4, v2}, Lolx;->aR(ILozj;)Lrss;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_d4
    if-nez v4, :cond_e

    nop

    goto/32 :goto_a2

    nop

    :cond_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    new-instance v2, Ljava/util/HashMap;

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

    :goto_d6
    iget-object v5, v1, Lpbf;->t:Landroid/view/Surface;

    nop

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

    :goto_d7
    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_d8
    sget-object v31, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Z)Lsui;
    .locals 12

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

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

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    const v1, 0x1f

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x3e8

    nop

    mul-long/2addr v1, v3

    nop

    nop

    iget-object v3, p0, Lpbe;->c:Lpau;

    nop

    invoke-virtual {v3}, Lpau;->close()V

    iget-object v3, p0, Lpbe;->m:Lsuk;

    nop

    new-instance v4, Lgtc;

    nop

    const/4 v10, 0x3

    nop

    move-object v5, v4

    nop

    nop

    move-object v6, p0

    nop

    move v7, p1

    nop

    nop

    nop

    nop

    move-wide v8, v1

    nop

    nop

    invoke-direct/range {v5 .. v10}, Lgtc;-><init>(Ljava/lang/Object;ZJI)V

    invoke-interface {v3, v4}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v3

    nop

    iget-object v4, p0, Lpbe;->m:Lsuk;

    nop

    new-instance v11, Lgtc;

    nop

    nop

    nop

    nop

    const/4 v10, 0x4

    nop

    nop

    nop

    nop

    move-object v5, v11

    nop

    nop

    nop

    move-object v6, p0

    nop

    nop

    nop

    move v7, p1

    nop

    nop

    nop

    nop

    move-wide v8, v1

    nop

    nop

    nop

    nop

    invoke-direct/range {v5 .. v10}, Lgtc;-><init>(Ljava/lang/Object;ZJI)V

    invoke-interface {v4, v11}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    iget-object v4, p0, Lpbe;->m:Lsuk;

    nop

    new-instance v5, Lgtd;

    nop

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    invoke-direct {v5, p0, v1, v2, v6}, Lgtd;-><init>(Ljava/lang/Object;JI)V

    invoke-interface {v4, v5}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v1

    nop

    const/4 v2, 0x3

    nop

    new-array v2, v2, [Lsui;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    aput-object v3, v2, v4

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    aput-object p1, v2, v3

    nop

    aput-object v1, v2, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object p1

    nop

    nop

    new-instance v1, Lgte;

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Lgte;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lpbe;->m:Lsuk;

    nop

    nop

    invoke-virtual {p1, v1, p0}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    invoke-static {p0}, Lsgj;->P(Lsui;)Lsui;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

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

    goto/32 :goto_7

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lpbe;->a:Ljava/lang/Object;

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

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

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
    iget p0, p0, Lpbe;->n:I

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
.end method

.method public final b()Lrss;
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    throw p0

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    :goto_8
    iget-object v0, p0, Lpbe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbe;->i:I

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    nop

    if-eq v1, v2, :cond_1

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    goto :goto_c

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_c
    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lpbd;->d:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_3

    nop

    sget-object p0, Lrsa;->a:Lrsa;

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-object p0

    nop

    :cond_3
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()Lrss;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lpbe;->f:Lsui;

    nop

    nop

    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lrss;

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    sget-object p0, Lrsa;->a:Lrsa;

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

    :goto_1
    const-string v0, "Failed to retrieve the location. Ignoring"

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-object p0

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
    const-string p0, "VideoRecorderImpl"

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
.end method

.method public final close()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lpbe;->i()Lsui;

    move-result-object p0

    nop

    nop

    nop

    invoke-interface {p0}, Lsui;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const-string p0, "VideoRecorderImpl"

    nop

    goto/32 :goto_4

    nop

    nop

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

    :catch_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const-string v0, "Failed to stop the video recorder at close"

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
.end method

.method public final d(Ljava/lang/String;)Lrss;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p0, Lpaf;

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
.end method

.method public final e()Lrss;
    .locals 2

    goto/32 :goto_f

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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    const-string p0, "VideoRecorderImpl"

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    const v1, 0xb

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_13

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

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

    :goto_a
    const-string v0, "Cannot get frame count."

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const v0, 0x15

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

    :goto_10
    invoke-virtual {p0}, Lpbd;->a()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_11
    return-object p0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final f()Lrss;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lpbd;->b()Lrss;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const-string v0, "Cannot get recording time."

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    const-string p0, "VideoRecorderImpl"

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()Lsui;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-direct {p0, v0}, Lpbe;->e94656b6137dd01f26085f984afe853em(Z)Lsui;

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

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lpah;)Lsui;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

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

    :goto_1
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    nop

    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    invoke-static {v2}, Lolx;->aN(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iput-object p1, p0, Lpbe;->e:Lpah;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lpbe;->b:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Lpag;->d(Lpah;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object p1, p0, Lpbe;->c:Lpau;

    nop

    iget-object v0, p0, Lpbe;->e:Lpah;

    nop

    invoke-virtual {p1, v0}, Lpau;->d(Lpas;)V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Lpbe;->m:Lsuk;

    nop

    nop

    new-instance v0, Lmaq;

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    invoke-direct {v0, p0, v2}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {p1, v0}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpbe;->m:Lsuk;

    nop

    nop

    nop

    nop

    new-instance v4, Lmaq;

    nop

    nop

    nop

    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    invoke-direct {v4, p0, v5}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v0, v4}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lpbe;->m:Lsuk;

    nop

    nop

    new-instance v5, Lmaq;

    nop

    nop

    nop

    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5, p0, v6}, Lmaq;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v4, v5}, Lsuk;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object v4

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    new-array v5, v5, [Lsui;

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    aput-object p1, v5, v6

    nop

    nop

    aput-object v0, v5, v3

    nop

    nop

    nop

    const/4 p1, 0x2

    nop

    nop

    nop

    nop

    aput-object v4, v5, p1

    nop

    nop

    invoke-static {v5}, Lsgj;->ac([Lsui;)Lkjj;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lgte;

    nop

    nop

    invoke-direct {v0, p0, v2}, Lgte;-><init>(Ljava/lang/Object;I)V

    iget-object p0, p0, Lpbe;->m:Lsuk;

    nop

    nop

    nop

    invoke-virtual {p1, v0, p0}, Lkjj;->b(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    return-object p0

    nop

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

    invoke-static {p0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->ZjaNKEYrc:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0x7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final i()Lsui;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lpbe;->e94656b6137dd01f26085f984afe853em(Z)Lsui;

    move-result-object p0

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

    :goto_2
    return-object p0

    nop

    nop

    nop
.end method

.method public final j(J)V
    .locals 3

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_10

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

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

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_a
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Lpbd;->j:Z

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-string p0, "Failed to notify close images before presentation timestamp."

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const-string v1, "Should handle encoder internally."

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

    :goto_14
    const v1, 0x20

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

    :goto_15
    const-string v2, "VideoRecorderImpl"

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_19
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1, p2}, Lpbd;->c(J)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v0, :cond_3

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_1c
    iget-boolean v0, p0, Lpbe;->o:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    const v0, 0xe

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(I)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lpbe;->o:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lpbd;->j:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lpbd;->e(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v2, "VideoRecorderImpl"

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

    nop

    :goto_5
    const-string v1, "Should handle encoder internally."

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
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

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

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
    const v1, 0x16

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

    :goto_c
    const-string p0, "Failed to notify input buffer available event."

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    const v0, 0xe

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    :goto_16
    return-void

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_e

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

    goto/32 :goto_14

    nop

    nop

    nop

    nop
.end method

.method public final l(Landroid/media/MediaFormat;)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->UvwMNA:Ljava/lang/String;

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

    :goto_1
    invoke-virtual {p0, p1}, Lpbd;->f(Landroid/media/MediaFormat;)V

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-string v2, "VideoRecorderImpl"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

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
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

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

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lpbd;->j:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lpbe;->o:Z

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "Should handle encoder internally."

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
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_18
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_19
    if-nez p0, :cond_2

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop
.end method

.method public final m(Ljava/io/FileDescriptor;)V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "STARTED is expected but we got "

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

    :goto_8
    goto/32 :goto_b

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    const-string p0, "VideoRecorderImpl"

    nop

    invoke-static {v2}, Lolx;->aN(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    :cond_1
    iget-object p0, p0, Lpbe;->b:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lpag;->i(Ljava/io/FileDescriptor;)V

    monitor-exit v1

    nop

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final n(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "Should handle encoder internally."

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lpbe;->o:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_4
    const-string p0, "Failed to write video date due to not video encoder."

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    iget-boolean v0, p0, Lpbd;->j:Z

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1, p2}, Lpbd;->l(ILandroid/media/MediaCodec$BufferInfo;)V

    goto/32 :goto_7

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_11
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    const v1, 0x8

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

    :goto_15
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x5

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const-string v2, "VideoRecorderImpl"

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
    goto/32 :goto_b

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop
.end method

.method public final o(Lprw;JZ)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpbe;->a:Ljava/lang/Object;

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

    :goto_1
    const v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    :try_start_0
    iget v1, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x4

    nop

    nop

    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v1, 0x0

    nop

    :goto_3
    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    invoke-virtual {p0, p1, p2, p3, p4}, Lpbd;->d(Lprw;JZ)V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_5
    throw p0

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1}, Lprw;->close()V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    const v1, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    throw p0

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

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
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    const-string p0, "VideoRecorderImpl"

    nop

    nop

    invoke-static {v2}, Lolx;->aN(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    iget-object p0, p0, Lpbe;->b:Lpag;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p1}, Lpag;->q(Ljava/lang/Object;)V

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

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

    monitor-exit v1

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

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "Trying to add metadata but state is "

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    :goto_b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
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
.end method

.method public final q()V
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const-string v0, "STARTED is expected but we got "

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

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    monitor-enter v1

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    if-eq v2, v3, :cond_1

    nop

    nop

    nop

    const-string p0, "VideoRecorderImpl"

    nop

    invoke-static {v2}, Lolx;->aN(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    nop

    const-wide/16 v5, 0x3e8

    nop

    nop

    mul-long/2addr v2, v5

    nop

    iget-object v0, p0, Lpbe;->c:Lpau;

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lpau;->b(J)V

    iget-object v0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lpbd;->g(J)V

    :cond_2
    iget-object v0, p0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lpap;->b(J)V

    :cond_3
    iget-object v0, p0, Lpbe;->d:Ljava/util/Map;

    nop

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_4

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lpaf;

    nop

    invoke-interface {v5, v2, v3}, Lpaf;->d(J)V

    goto :goto_c

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lpbe;->i:I

    nop

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final r()V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v1

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    if-eq v2, v3, :cond_0

    nop

    nop

    nop

    nop

    const-string p0, "VideoRecorderImpl"

    nop

    nop

    invoke-static {v2}, Lolx;->aN(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    nop

    nop

    nop

    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    mul-long/2addr v2, v5

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpbe;->j:Lpbd;

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lpbd;->h(J)V

    :cond_1
    iget-object v0, p0, Lpbe;->k:Lpap;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v3}, Lpap;->d(J)V

    :cond_2
    iget-object v0, p0, Lpbe;->d:Ljava/util/Map;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    if-eqz v5, :cond_3

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lpaf;

    nop

    nop

    invoke-interface {v5, v2, v3}, Lpaf;->f(J)V

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lpbe;->c:Lpau;

    nop

    invoke-virtual {v0, v2, v3}, Lpau;->c(J)V

    const/4 v0, 0x2

    nop

    iput v0, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

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
    const-string v0, "PAUSED is expected but we got "

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

    :goto_6
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    :goto_a
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final s(F)V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    iget-object v1, p0, Lpbe;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v1

    nop

    nop

    :try_start_0
    iget v2, p0, Lpbe;->i:I

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lpbe;->j:Lpbd;

    nop

    if-nez p0, :cond_1

    nop

    const-string p0, "VideoRecorderImpl"

    nop

    nop

    nop

    nop

    const-string p1, "video encoder is not enabled here, so ignored."

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v1

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_1
    iget-object v2, p0, Lpbd;->b:Ljava/lang/Object;

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v3, p0, Lpbd;->l:I

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    if-eq v3, v4, :cond_2

    nop

    iget-object p0, p0, Lpbd;->a:Ljava/lang/String;

    nop

    nop

    invoke-static {v3}, Lolx;->aO(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    iget v0, p0, Lpbd;->f:I

    nop

    nop

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpbd;->g:Landroid/util/Range;

    nop

    nop

    nop

    nop

    nop

    float-to-int p1, p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    iget v0, p0, Lpbd;->f:I

    nop

    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v3, "video-bitrate"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object p0, p0, Lpbd;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    :try_start_2
    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    const v1, 0x17

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_3
    monitor-exit v2

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "illegal state as "

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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
.end method
