.class public final synthetic Lmoe;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lssw;


# instance fields
.field public final synthetic a:Lmoi;

.field public final synthetic b:Lozx;

.field public final synthetic c:Lgrl;

.field public final synthetic d:Lpcg;

.field public final synthetic e:Z

.field public final synthetic f:Lqdl;


# direct methods
.method public synthetic constructor <init>(Lmoi;Lozx;Lgrl;Lpcg;ZLqdl;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput-object p4, p0, Lmoe;->d:Lpcg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lmoe;->a:Lmoi;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmoe;->b:Lozx;

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

    :goto_4
    iput-object p3, p0, Lmoe;->c:Lgrl;

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

    :goto_5
    iput-boolean p5, p0, Lmoe;->e:Z

    nop

    nop

    nop

    goto/32 :goto_7

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

    nop

    :goto_7
    iput-object p6, p0, Lmoe;->f:Lqdl;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lsui;
    .locals 23

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v17, v5

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v8, v11}, Lozu;->h(I)V

    goto/32 :goto_f6

    nop

    nop

    nop

    :goto_3
    if-nez v8, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v5, v7}, Lhoh;->d(Lhmn;)Lj$/util/Optional;

    move-result-object v5

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move/from16 v17, v2

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_9
    invoke-static {v12, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eq v12, v13, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v12, v3, Loyy;->c:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    :goto_c
    iget-object v5, v3, Loyy;->n:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, v1, Lmoi;->e:Loyy;

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

    :goto_e
    iget-object v5, v1, Lmoi;->e:Loyy;

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v11, Lpbo;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Lmoi;->b()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_7f

    nop

    nop

    :goto_13
    iget-object v1, v0, Lmoe;->a:Lmoi;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v5, v8}, Lpal;->c(Lozz;)V

    :goto_15
    goto/32 :goto_10e

    nop

    nop

    :goto_16
    invoke-virtual {v5}, Lmob;->c()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v4}, Lgrl;->e()Ljava/io/FileDescriptor;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    :goto_19
    iget-object v8, v1, Lmoi;->K:Lpog;

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

    :goto_1a
    iget-object v13, v3, Loyy;->b:Loze;

    nop

    goto/32 :goto_161

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v13, 0x5

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_1c
    invoke-static {v5, v8}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_156

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1f

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

    :goto_1e
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_1f
    move v14, v7

    nop

    :goto_20
    goto/32 :goto_183

    nop

    nop

    nop

    :goto_21
    move v11, v7

    nop

    nop

    :goto_22
    goto/32 :goto_15b

    nop

    nop

    nop

    :goto_23
    iput-boolean v8, v11, Lpbf;->q:Z

    nop

    :goto_24
    goto/32 :goto_ac

    nop

    nop

    :goto_25
    new-instance v12, Lpbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    :goto_26
    iget-boolean v15, v0, Lmoe;->e:Z

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

    :goto_27
    invoke-virtual {v5}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1c0

    nop

    nop

    :goto_28
    new-instance v11, Landroid/os/HandlerThread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    :goto_29
    iput-byte v5, v3, Lmqf;->j:B

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_93

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Lmoi;->a()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v3, Lmqf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {v8}, Lpal;->k()V

    goto/32 :goto_176

    nop

    nop

    nop

    :goto_2f
    iget v5, v5, Loze;->k:I

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

    :goto_30
    iget-object v5, v1, Lmoi;->e:Loyy;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_31
    sget-object v5, Llxp;->b:Llxp;

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v6, v7, v8, v9}, Lmoi;->l(Lpcg;Lnpq;Lpog;Lhoh;)I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_33
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_34
    iget-object v5, v1, Lmoi;->ag:Lhoh;

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v8, v12}, Lozu;->j(I)V

    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v5, v1, Lmoi;->H:Loze;

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_39
    iget-object v14, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    :goto_3a
    new-instance v5, Loyw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c0

    nop

    nop

    :goto_3c
    invoke-static {v8}, Lozv;->b(Lozv;)Lozu;

    move-result-object v8

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v11, v3, Loyy;->k:Lrss;

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    :goto_3e
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    nop

    :goto_3f
    move v5, v2

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

    :goto_40
    invoke-virtual {v7, v8}, Lhoh;->p(Lhmn;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/high16 v12, 0x10000

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v3, v7}, Lmqf;->b(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    int-to-byte v5, v5

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_45
    iget v12, v12, Lozx;->c:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v5, v3, Loyy;->s:Lrss;

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    :goto_47
    move/from16 v18, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v8, :cond_5

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :cond_5
    goto/32 :goto_c4

    nop

    nop

    :goto_49
    add-int v0, v0, v1

    nop

    goto/32 :goto_191

    nop

    nop

    :goto_4a
    new-instance v13, Loyx;

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

    :goto_4b
    iget v4, v4, Lpck;->b:I

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v8, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-object v5, v1, Lmoi;->e:Loyy;

    nop

    nop

    goto/32 :goto_1b5

    nop

    nop

    :goto_4e
    invoke-virtual {v8, v2}, Lozu;->k(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-interface/range {v16 .. v22}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v3

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_50
    if-nez v5, :cond_6

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_e7

    nop

    nop

    :goto_51
    check-cast v11, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_52
    iget-object v7, v1, Lmoi;->ag:Lhoh;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_53
    iget-object v11, v3, Loyy;->a:Lozg;

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

    :goto_54
    iget-object v11, v3, Loyy;->b:Loze;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_55
    invoke-interface {v8, v5}, Lpal;->o(Lozm;)V

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-nez v11, :cond_7

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v13}, Lpdd;-><init>()V

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v11, v3, Loyy;->j:Lrss;

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    :goto_5a
    iget-object v8, v3, Loyy;->A:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_5b
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_12f

    nop

    nop

    nop

    :goto_5c
    iget-object v8, v3, Loyy;->i:Lrss;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v8, v1, Lmoi;->TimeLapse:Lrss;

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_5e
    iput-object v3, v5, Loyy;->A:Lrss;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5f
    invoke-direct/range {v12 .. v19}, Lmqh;-><init>(Lmqd;ZZFIII)V

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v8, v1, Lmoi;->ag:Lhoh;

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

    :goto_61
    iget-boolean v8, v3, Loyy;->z:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    :goto_62
    invoke-static {v8}, Lozv;->b(Lozv;)Lozu;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static/range {v11 .. v18}, Lolx;->aS(Lozg;Lpnx;ILoze;Lrss;Lrss;ZZ)Lrss;

    move-result-object v8

    nop

    :goto_64
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    check-cast v7, Landroid/location/Location;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_154

    nop

    nop

    :goto_66
    invoke-static {v9}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-interface {v8, v5}, Lpal;->e(Landroid/view/Surface;)V

    :goto_68
    goto/32 :goto_153

    nop

    nop

    :goto_69
    iget-object v5, v3, Loyy;->u:Lrss;

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    :goto_6a
    iget-object v8, v3, Loyy;->r:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v15, v3, Loyy;->x:Lrss;

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-interface {v8, v5}, Lpal;->n(Ljava/io/FileDescriptor;)V

    :goto_6d
    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_6f
    iput-object v5, v8, Loyy;->x:Lrss;

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_71
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_73
    sget-object v8, Lhmq;->an:Lhmn;

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v5, v8, Loyy;->i:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_75
    iget-object v2, v1, Lmoi;->G:Lpnx;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput v7, v8, Loyy;->d:I

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_77
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_78
    if-ne v12, v13, :cond_9

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    sget-object v9, Lhly;->L:Lhmn;

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_7b
    const-string v8, "CamcorderCllbck"

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v7}, Ljqp;->c()Lrss;

    move-result-object v7

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_7d
    invoke-direct {v9, v8}, Lgtx;-><init>(Lhoh;)V

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v11, v3, Loyy;->b:Loze;

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    move v11, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    goto/32 :goto_10d

    nop

    nop

    :goto_81
    iput-object v5, v8, Loyy;->m:Lrss;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_82
    iput-object v2, v8, Loyy;->a:Lozg;

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object v5, v3, Loyy;->TimeLapse:Landroid/view/Surface;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v13}, Loze;->h()Z

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v4}, Lozg;->b()Lpck;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_86
    invoke-static {v8}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_87
    iget-object v11, v11, Lozx;->b:Lozg;

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_88
    iget-object v2, v1, Lmoi;->I:Lozg;

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-static {v5, v8}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_8a
    iput-byte v5, v3, Lmqf;->j:B

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

    :goto_8b
    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_30

    nop

    nop

    :goto_8c
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_8d
    iget-object v15, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    nop

    nop

    :goto_8e
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v5, v3, Loyy;->q:Landroid/media/AudioManager;

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

    :goto_90
    invoke-direct {v9}, Lozy;-><init>()V

    :goto_91
    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_92
    move v5, v7

    nop

    nop

    :goto_93
    goto/32 :goto_1ac

    nop

    nop

    :goto_94
    const/16 v10, 0x8

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v12, v3, Loyy;->a:Lozg;

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

    :goto_98
    move v5, v2

    nop

    nop

    :goto_99
    goto/32 :goto_150

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-object v5, v3, Lmqf;->a:Loze;

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    iget-object v12, v3, Loyy;->c:Lpnx;

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    :goto_9c
    iput-object v8, v11, Lpbf;->n:Lpad;

    nop

    :goto_9d
    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v8}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v18

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v8, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    :cond_c
    goto/32 :goto_188

    nop

    nop

    :goto_a0
    iget-object v5, v1, Lmoi;->I:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_a1
    iput-object v7, v5, Loyy;->l:Lrss;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_a2
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v5, v5, Loza;->a:Lpak;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_a4
    iput v5, v3, Lmqf;->i:F

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iget-object v5, v3, Loyy;->a:Lozg;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v11, :cond_d

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :goto_a7
    iget-object v7, v1, Lmoi;->g:Lnpq;

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_a8
    iget-object v8, v1, Lmoi;->K:Lpog;

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

    :goto_a9
    invoke-interface {v5}, Ljqp;->c()Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iput-object v11, v3, Loyy;->o:Lpal;

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

    :goto_ab
    invoke-direct {v12, v13}, Lpbg;-><init>(Landroid/media/MediaRecorder;)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_ac
    iput-object v11, v3, Loyy;->o:Lpal;

    nop

    nop

    nop

    nop

    :goto_ad
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

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

    :goto_af
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_b0
    move v14, v2

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_b1
    iget-object v5, v1, Lmoi;->j:Ljqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    :goto_b3
    if-nez v8, :cond_e

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_14d

    nop

    nop

    :goto_b5
    iget-object v2, v2, Loza;->c:Lj$/util/concurrent/ConcurrentLinkedQueue;

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

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

    :goto_b7
    iget-object v2, v1, Lmoi;->ac:Loza;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_b8
    new-instance v9, Lgtx;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_b9
    iget-object v5, v1, Lmoi;->ac:Loza;

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object v5, v3, Loyy;->b:Loze;

    nop

    nop

    nop

    nop

    goto/32 :goto_170

    nop

    nop

    nop

    :goto_bb
    if-eqz v13, :cond_f

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_ef

    nop

    nop

    :goto_bc
    iput-object v3, v1, Lmoi;->T:Ljava/util/concurrent/ScheduledFuture;

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

    :goto_bd
    invoke-virtual {v13}, Lrss;->c()Ljava/lang/Object;

    move-result-object v13

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_be
    iput-boolean v8, v11, Lpbf;->w:Z

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

    :goto_bf
    invoke-direct {v13}, Landroid/media/MediaRecorder;-><init>()V

    goto/32 :goto_ab

    nop

    nop

    :goto_c0
    iget-object v8, v3, Loyy;->o:Lpal;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_c1
    iget-object v3, v1, Lmoi;->x:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_c2
    const v1, 0x1f

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

    nop

    nop

    :goto_c3
    iget-object v14, v3, Loyy;->b:Loze;

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_c4
    iget-object v8, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v3, v5}, Lmqf;->b(I)V

    goto/32 :goto_e4

    nop

    nop

    :goto_c6
    invoke-interface {v8, v5}, Lpal;->f(Landroid/location/Location;)V

    :goto_c7
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_c8
    new-instance v5, Lmnq;

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iput-object v3, v1, Lmoi;->W:Lmqh;

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    check-cast v8, Lozx;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iget-object v8, v1, Lmoi;->ag:Lhoh;

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_cc
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_149

    nop

    nop

    :goto_cd
    goto/16 :goto_1b1

    nop

    :goto_ce
    goto/32 :goto_1b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    monitor-enter v5

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v6, v1, Lmoi;->E:Ljava/util/ArrayList;

    nop

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-nez v6, :cond_10

    nop

    nop

    nop

    sget-object v6, Lmoi;->a:Lsdb;

    nop

    nop

    invoke-virtual {v6}, Lscs;->c()Lsdo;

    move-result-object v6

    nop

    nop

    nop

    nop

    const/16 v8, 0x11d7

    nop

    nop

    nop

    nop

    invoke-interface {v6, v8}, Lscz;->M(I)Lsdo;

    move-result-object v6

    nop

    check-cast v6, Lscz;

    nop

    nop

    nop

    nop

    const-string v8, "prepareCamcorder(): Pending video file exists."

    nop

    nop

    invoke-interface {v6, v8}, Lscz;->s(Ljava/lang/String;)V

    iget-object v6, v1, Lmoi;->E:Ljava/util/ArrayList;

    nop

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    :cond_10
    iget-object v6, v1, Lmoi;->E:Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v5

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v8, v1, Lmoi;->e:Loyy;

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

    :goto_d1
    iget-byte v5, v3, Lmqf;->j:B

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    :goto_d2
    invoke-static {v0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v5, v8}, Lpal;->d(I)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-static {v8}, Lolx;->bc(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v8

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {v8}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v20

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    :goto_d7
    iget-object v7, v1, Lmoi;->j:Ljqp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-interface {v2}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_d9
    iget-object v9, v1, Lmoi;->ag:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_da
    iput-object v4, v3, Lmqf;->d:Lgrl;

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

    :goto_db
    invoke-virtual {v7}, Lrss;->c()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_dc
    if-eq v4, v5, :cond_11

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_dd
    iget-object v7, v0, Lmoe;->b:Lozx;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_de
    new-instance v9, Lozy;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_df
    invoke-direct {v11, v8, v12, v13}, Lpbf;-><init>(Lsuk;Landroid/os/Handler;Lpdf;)V

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    :goto_e1
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_21

    nop

    nop

    :goto_e3
    check-cast v8, Landroid/media/MediaCodec$Callback;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_e4
    invoke-virtual {v3}, Lmqf;->a()Lmqg;

    move-result-object v3

    nop

    nop

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

    :goto_e5
    iget-object v11, v3, Loyy;->a:Lozg;

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_e6
    iget-object v5, v1, Lmoi;->H:Loze;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v8, v3, Loyy;->o:Lpal;

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    invoke-virtual {v11}, Lrss;->c()Ljava/lang/Object;

    move-result-object v11

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

    :goto_e9
    const-string v2, "Fail to create video recorder"

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_ea
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_eb
    iget-object v5, v1, Lmoi;->A:Lmob;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_ec
    int-to-byte v5, v5

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

    :goto_ed
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v8, v9}, Lhoh;->p(Lhmn;)Z

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    :goto_ef
    iget-object v13, v3, Loyy;->b:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_f0
    const-string v8, "Camcorder"

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

    :goto_f1
    move-object/from16 v0, p0

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

    :goto_f2
    iget-object v5, v3, Loyy;->y:Lrss;

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    :goto_f3
    iget-object v0, v0, Lmoe;->f:Lqdl;

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

    :goto_f4
    iget-object v15, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    :goto_f5
    iget-object v5, v1, Lmoi;->m:Ljava/lang/Object;

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_f6
    invoke-virtual {v8}, Lozu;->a()Lozv;

    move-result-object v8

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

    :goto_f7
    iput-object v5, v8, Loyy;->k:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f9
    iget-object v11, v3, Loyy;->w:Lrss;

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_fa
    iput-object v5, v8, Loyy;->w:Lrss;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_fb
    iput-object v7, v5, Loyy;->h:Lrss;

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

    :goto_fc
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    iget-object v8, v8, Lozx;->j:Lozv;

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-virtual {v11}, Landroid/os/HandlerThread;->start()V

    goto/32 :goto_17c

    nop

    nop

    nop

    :goto_ff
    iput-object v2, v8, Loyy;->c:Lpnx;

    nop

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    nop

    :goto_100
    iget-object v5, v1, Lmoi;->e:Loyy;

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

    :goto_101
    iget-boolean v5, v1, Lmoi;->D:Z

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_102
    iput-object v5, v8, Loyy;->n:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_103
    iget-object v7, v7, Lmnx;->f:Landroid/media/MediaCodec$Callback;

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :goto_104
    if-nez v11, :cond_12

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    :cond_12
    goto/32 :goto_185

    nop

    nop

    :goto_105
    new-instance v11, Lpbf;

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    iput-byte v5, v3, Lmqf;->j:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_107
    goto/16 :goto_64

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_109
    invoke-virtual {v13}, Ljava/lang/Float;->floatValue()F

    move-result v13

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    :goto_10a
    iget-object v13, v3, Loyy;->w:Lrss;

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_10b
    invoke-static {v12, v13, v11}, Lrrf;->A(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_10c
    iget-object v5, v3, Loyy;->e:Landroid/location/Location;

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_10d
    sget v8, Lcom/a;->aa:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_10e
    iget-object v5, v3, Loyy;->o:Lpal;

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

    :goto_10f
    iget-object v14, v14, Lozx;->a:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    :goto_110
    sget-object v8, Lhqx;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-static {v8}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v8

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

    :goto_112
    check-cast v13, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_113
    const/4 v7, 0x0

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

    nop

    :goto_114
    new-instance v1, Ljava/lang/IllegalArgumentException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_115
    const v12, 0x8000

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_116
    iget-object v5, v3, Loyy;->o:Lpal;

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    :goto_117
    iget-object v5, v1, Lmoi;->e:Loyy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    :goto_118
    new-instance v8, Lpic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_119
    invoke-virtual {v1}, Lmoi;->a()F

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    :goto_11a
    invoke-direct {v5, v1, v2}, Loyw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const/4 v13, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    new-instance v12, Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_11d
    iput-object v5, v3, Lmqf;->f:Lmqd;

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    throw v0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11f
    if-nez v5, :cond_13

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-interface {v5, v8}, Lpal;->j(Landroid/media/MediaCodec$Callback;)V

    :goto_121
    goto/32 :goto_142

    nop

    nop

    :goto_122
    invoke-virtual {v1}, Lmoi;->d()V

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_123
    iget-object v0, v1, Lmoi;->ac:Loza;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    :goto_124
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v7

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

    :goto_125
    const/4 v13, 0x2

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_126
    check-cast v8, Lozv;

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    :goto_127
    iget-object v2, v1, Lmoi;->I:Lozg;

    nop

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

    :goto_128
    or-int/2addr v5, v10

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

    :goto_129
    goto/16 :goto_64

    nop

    nop

    :goto_12a
    goto/32 :goto_1c3

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    invoke-static {v8}, Lsgj;->H(Ljava/util/concurrent/ExecutorService;)Lsuk;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    move v5, v7

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v8, v13}, Lozu;->i(I)V

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_12e
    check-cast v12, Lozx;

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

    :goto_12f
    iput-object v5, v3, Lmqf;->b:Lozg;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    const-string v12, "Camcorder"

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    :goto_131
    invoke-direct {v5, v8}, Lozl;-><init>(Lpic;)V

    goto/32 :goto_17e

    nop

    nop

    :goto_132
    new-instance v3, Lmqh;

    nop

    nop

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    :goto_133
    iget-object v8, v3, Loyy;->h:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_134
    invoke-virtual {v2}, Lozg;->b()Lpck;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    :goto_135
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    nop

    :goto_136
    if-lez v0, :cond_14

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_19b

    nop

    :goto_137
    invoke-virtual {v3, v5}, Lmqf;->d(Llxn;)V

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_138
    throw v1

    nop

    nop

    nop

    nop

    nop

    :goto_139
    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_13a
    iput-object v3, v8, Loyy;->b:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_13b
    invoke-direct {v3, v9}, Lmqf;-><init>([B)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13c
    new-instance v5, Lozl;

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    :goto_13d
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    goto/16 :goto_20

    nop

    :goto_13f
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_140
    invoke-direct {v11, v12}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_141
    iget-object v8, v3, Loyy;->o:Lpal;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_142
    iget-object v5, v3, Loyy;->l:Lrss;

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

    :goto_143
    invoke-virtual {v11}, Lrss;->h()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :goto_144
    iget-object v13, v1, Lmoi;->V:Lmqd;

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    :goto_145
    iget-object v12, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_146
    iget-object v12, v3, Loyy;->a:Lozg;

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    :goto_147
    or-int/2addr v5, v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_148
    iget-object v5, v3, Loyy;->f:Lrss;

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_149
    throw v1

    nop

    nop

    :goto_14a
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_14b
    iput-boolean v7, v5, Loyy;->z:Z

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

    :goto_14c
    invoke-static {v15, v11, v12, v13, v14}, Lolx;->aW(ILozg;ILrss;Lrss;)I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_14d
    check-cast v8, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    move/from16 v19, v5

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_14f
    check-cast v8, Lozz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_150
    const-string v8, "Neither recordFileDescriptor nor recordFile are specified"

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

    :goto_151
    new-instance v13, Landroid/media/MediaRecorder;

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

    nop

    nop

    :goto_152
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    :goto_153
    iget-object v5, v3, Loyy;->g:Lrss;

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    nop

    nop

    :goto_154
    iput-object v7, v5, Loyy;->e:Landroid/location/Location;

    nop

    nop

    nop

    nop

    :goto_155
    goto/32 :goto_100

    nop

    nop

    nop

    :goto_156
    iget-object v5, v3, Loyy;->c:Lpnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_157
    invoke-direct {v11, v12, v8, v13}, Lpbo;-><init>(Lpbj;Lsuk;Lpbi;)V

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_158
    iget-object v5, v3, Loyy;->o:Lpal;

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_159
    iget-object v8, v3, Loyy;->i:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_15a
    check-cast v14, Lozx;

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    :goto_15b
    iget-object v13, v3, Loyy;->o:Lpal;

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_15c
    sget-object v16, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    :goto_15d
    iget-object v8, v3, Loyy;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_15e
    invoke-virtual {v8, v12}, Lozu;->j(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    check-cast v11, Lozx;

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

    nop

    :goto_160
    iget v5, v3, Loyy;->d:I

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

    :goto_161
    iget-object v13, v3, Loyy;->x:Lrss;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_162
    invoke-virtual {v15}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_163
    invoke-static {v7}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v7

    nop

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

    :goto_164
    iget-object v8, v1, Lmoi;->TimeLapse:Lrss;

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_165
    const-string v13, "Fail to camcorder profile for resolution %s"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_166
    iput-object v5, v3, Lmqf;->e:Lrss;

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    :goto_167
    iget-object v14, v3, Loyy;->q:Landroid/media/AudioManager;

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_168
    iget-object v2, v1, Lmoi;->c:Landroid/media/AudioManager;

    nop

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    move-object v12, v3

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

    :goto_16a
    invoke-direct {v12, v11}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_16b
    if-nez v8, :cond_15

    nop

    nop

    goto/32 :goto_9d

    nop

    :cond_15
    goto/32 :goto_5c

    nop

    nop

    :goto_16c
    iget-byte v5, v3, Lmqf;->j:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_16d
    invoke-interface {v8, v5}, Lpal;->l(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16e
    if-eqz v13, :cond_16

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16f
    iget-object v7, v7, Lmob;->k:Lmnx;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_170
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_171
    if-nez v8, :cond_17

    nop

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_cb

    nop

    nop

    :goto_172
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    monitor-exit v5

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_173
    iput-object v2, v8, Loyy;->q:Landroid/media/AudioManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    :goto_174
    invoke-interface {v5}, Lpak;->c()Lrss;

    move-result-object v5

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_175
    if-nez v5, :cond_18

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_34

    nop

    nop

    :goto_176
    iget-object v5, v3, Loyy;->n:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_177
    goto/16 :goto_1a0

    nop

    nop

    :goto_178
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v12}, Lrss;->c()Ljava/lang/Object;

    move-result-object v12

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_17a
    iget-object v8, v3, Loyy;->A:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_17b
    invoke-virtual {v2, v0}, Lj$/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    invoke-virtual {v11}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v16

    nop

    goto/32 :goto_127

    nop

    nop

    :goto_17e
    iget-object v8, v3, Loyy;->k:Lrss;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_17f
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_11d

    nop

    nop

    :goto_180
    iput-boolean v15, v3, Lmqf;->h:Z

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    :goto_181
    iget-object v5, v3, Loyy;->v:Lrss;

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v5, v3, Loyy;->o:Lpal;

    nop

    nop

    nop

    invoke-interface {v5}, Lpal;->a()Lpak;

    move-result-object v5

    nop

    nop

    nop

    new-instance v8, Loza;

    nop

    iget-object v11, v3, Loyy;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Loyy;->m:Lrss;

    nop

    invoke-direct {v8, v5, v11, v3}, Loza;-><init>(Lpak;Ljava/util/concurrent/Executor;Lrss;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_182
    sget-object v0, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->xwpTwZV:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_183
    iget-object v2, v1, Lmoi;->o:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_184
    sget-object v7, Lhnu;->k:Lhmn;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_185
    iget-object v11, v3, Loyy;->j:Lrss;

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

    :goto_186
    if-eqz v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_12c

    nop

    nop

    :goto_187
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_188
    sget-object v8, Lrsa;->a:Lrsa;

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    :goto_189
    or-int/lit8 v5, v5, 0x4

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    :goto_18a
    invoke-direct {v8, v9}, Lpic;-><init>([B)V

    goto/32 :goto_131

    nop

    nop

    :goto_18b
    sget-object v22, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    new-instance v13, Lpdd;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    const/4 v9, 0x0

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    move-object/from16 v16, v3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18f
    invoke-virtual {v1, v6, v5, v8, v9}, Lmoi;->l(Lpcg;Lnpq;Lpog;Lhoh;)I

    move-result v5

    nop

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    iget v8, v3, Loyy;->t:I

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_191
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_192
    invoke-direct {v13}, Loyx;-><init>()V

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    nop

    :goto_193
    iget-byte v5, v3, Lmqf;->j:B

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    :goto_194
    sget-object v8, Lhqx;->a:Lj$/time/Duration;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_195
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_196
    invoke-virtual {v8}, Lrss;->c()Ljava/lang/Object;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_197
    iget-object v5, v1, Lmoi;->V:Lmqd;

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_198
    iget-object v4, v1, Lmoi;->I:Lozg;

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_199
    check-cast v8, Landroid/view/Surface;

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    :goto_19a
    invoke-static {v3}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19b
    goto/32 :goto_139

    nop

    nop

    :goto_19c
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-virtual {v5}, Lrss;->h()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_19e
    iput v5, v3, Lmqf;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_19f
    invoke-interface {v5, v8, v11, v12}, Lozk;->c(Lozv;Loze;Lozg;)Lozm;

    move-result-object v5

    nop

    nop

    nop

    :goto_1a0
    goto/32 :goto_15d

    nop

    nop

    nop

    nop

    :goto_1a1
    iget-object v5, v3, Loyy;->h:Lrss;

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    :goto_1a2
    invoke-virtual {v14}, Lrss;->c()Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    nop

    nop

    goto/32 :goto_15a

    nop

    nop

    :goto_1a3
    invoke-virtual {v8, v13}, Lozu;->i(I)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_1a4
    invoke-static {v5}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1a5
    iget-object v8, v3, Loyy;->o:Lpal;

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_1a6
    int-to-byte v5, v5

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_1a7
    goto :goto_1b3

    nop

    nop

    :goto_1a8
    goto/32 :goto_8e

    nop

    nop

    :goto_1a9
    invoke-virtual {v15}, Lrss;->c()Ljava/lang/Object;

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual {v3}, Lmqf;->e()V

    goto/32 :goto_1ba

    nop

    nop

    :goto_1ab
    invoke-direct {v5, v1, v8}, Lmnq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_194

    nop

    nop

    nop

    :goto_1ac
    const-string v8, "camcorderVideoResolution is required"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1ad
    iput-object v5, v8, Loyy;->j:Lrss;

    nop

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

    :goto_1ae
    iget-object v8, v3, Loyy;->l:Lrss;

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    :goto_1af
    invoke-virtual {v8, v11}, Lozu;->h(I)V

    goto/32 :goto_1b2

    nop

    nop

    nop

    :goto_1b0
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    :goto_1b1
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    :goto_1b2
    invoke-virtual {v8}, Lozu;->a()Lozv;

    move-result-object v8

    nop

    nop

    nop

    :goto_1b3
    goto/32 :goto_111

    nop

    nop

    nop

    :goto_1b4
    iget-object v3, v1, Lmoi;->H:Loze;

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    :goto_1b5
    iget-object v7, v1, Lmoi;->A:Lmob;

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    xor-int/2addr v7, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    nop

    :goto_1b7
    invoke-virtual {v8, v10}, Lozu;->k(I)V

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_1b8
    iput-object v8, v3, Loyy;->p:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_1ba
    iget-object v5, v1, Lmoi;->U:Llxn;

    nop

    goto/32 :goto_137

    nop

    nop

    :goto_1bb
    goto/16 :goto_ad

    nop

    nop

    nop

    :goto_1bc
    goto/32 :goto_105

    nop

    nop

    nop

    :goto_1bd
    invoke-interface {v5, v8, v11, v12, v13}, Lozk;->d(Lozv;Loze;Lozg;F)Lozm;

    move-result-object v5

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    :goto_1be
    iget-object v9, v1, Lmoi;->ag:Lhoh;

    nop

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_1bf
    iput-object v8, v1, Lmoi;->ac:Loza;

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    :goto_1c0
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_1c1
    iput-object v8, v3, Loyy;->TimeLapse:Landroid/view/Surface;

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1c3
    iget v15, v8, Lozv;->g:I

    nop

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c4
    iget-object v5, v1, Lmoi;->g:Lnpq;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c5
    iget v2, v2, Lpck;->a:I

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    :goto_1c6
    invoke-virtual {v1}, Lmoi;->b()I

    move-result v5

    nop

    nop

    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    goto/16 :goto_91

    nop

    :goto_1c8
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_1c9
    iget-object v4, v0, Lmoe;->c:Lgrl;

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

    :goto_1ca
    const/16 v17, 0x0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1cb
    invoke-static {v4}, Lhhg;->D(Lgrl;)Llxp;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1cc
    sget-object v7, Lozz;->a:Lozz;

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    iput v5, v8, Loyy;->t:I

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ce
    check-cast v8, Lozv;

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

    :goto_1cf
    invoke-virtual {v8}, Lrss;->h()Z

    move-result v12

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    nop

    :goto_1d0
    iput-object v5, v3, Lmqf;->c:Lrss;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_1d1
    invoke-virtual {v3, v5}, Lmqf;->c(Z)V

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_1d2
    iget-object v6, v0, Lmoe;->d:Lpcg;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_1d3
    sget-object v5, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    goto/16 :goto_99

    nop

    nop

    nop

    :goto_1d5
    goto/32 :goto_98

    nop

    nop

    nop
.end method
