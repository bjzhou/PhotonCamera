.class public Ljli;
.super Lggo;
.source "PG"

# interfaces
.implements Lmxc;


# static fields
.field public static final a:Lsdb;


# instance fields
.field private final A:Landroid/content/Context;

.field private final B:Landroid/content/res/Resources;

.field private final C:Ljkz;

.field private final D:Lkob;

.field private E:Lkbe;

.field private final F:Lmut;

.field private final G:Lmlf;

.field private final H:Llwx;

.field private final I:Ljqp;

.field private final J:Lkce;

.field private final K:Llxb;

.field private final L:Lknw;

.field private final M:Lmjn;

.field private final N:Lhdn;

.field private final O:Lhhg;

.field public final b:Lngu;

.field public final c:Lnxc;

.field public final d:Loyn;

.field public final e:Lowu;

.field public final f:Lmwp;

.field public final g:Lhco;

.field public final h:Lmts;

.field public final i:Lrss;

.field public j:Lsuu;

.field public final k:Ljkx;

.field public l:Lows;

.field public final m:Loyn;

.field public final n:Lmhf;

.field public final o:Llad;

.field public p:Lkbf;

.field public final q:Lhoh;

.field public final r:Lgnj;

.field public final s:Lobe;

.field public final v:Lqpa;

.field public final w:Lhwy;

.field private final x:Lngo;

.field private final y:Ljdc;

.field private final z:Ljdb;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "jli"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    sput-object v0, Ljli;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lowu;Llad;Lhco;Lknw;Lkob;Lrss;Landroid/content/res/Resources;Lglm;Lngo;Ljdc;Lnxc;Lmhf;Loyn;Ljkz;Lmts;Lmwp;Lmut;Lfdo;Lmjn;Llwx;Ltxm;Lgnj;Lfdn;Landroid/content/Context;Ljkx;Lhwy;Lqpa;Lhdn;Lhoh;Lkce;Loyn;Lobe;)V
    .locals 6

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_0
    iput-object v2, v0, Ljli;->b:Lngu;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    iput-object v4, v0, Ljli;->c:Lnxc;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v4, v0, Ljli;->D:Lkob;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_3
    iput-object v4, v0, Ljli;->L:Lknw;

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

    nop

    :goto_4
    const-string v5, "include_location_in_exif"

    nop

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

    nop

    :goto_5
    move-object/from16 v4, p11

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object/from16 v4, p16

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v2, Ljlh;

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

    :goto_8
    invoke-direct {v3}, Lsuu;-><init>()V

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_9
    iput-object v4, v0, Ljli;->h:Lmts;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object/from16 v2, p17

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

    :goto_c
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_d
    move-object v4, p3

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_58

    nop

    nop

    :goto_10
    invoke-virtual/range {p24 .. p24}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_11
    move-object v4, p7

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_12
    iput-object v3, v0, Ljli;->I:Ljqp;

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v2, p0}, Ljld;-><init>(Ljli;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v2, v0, Ljli;->F:Lmut;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v4, v0, Ljli;->k:Ljkx;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v2, Ljld;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    invoke-direct {v2, p0, v3}, Ljle;-><init>(Lggo;I)V

    goto/32 :goto_34

    nop

    nop

    :goto_19
    new-instance v1, Ljlc;

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

    :goto_1a
    iput-object v4, v0, Ljli;->H:Llwx;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_1b
    iput-object v4, v0, Ljli;->m:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v4, p22

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move-object/from16 v4, p27

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1e
    move-object/from16 v4, p30

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

    :goto_1f
    move-object v0, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v4, v0, Ljli;->C:Ljkz;

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

    :goto_21
    new-instance v2, Ljle;

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_22
    invoke-interface/range {p21 .. p21}, Ltxm;->a()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_23
    iput-object v2, v0, Ljli;->d:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    new-instance v3, Ljava/io/File;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v2, v0, Ljli;->n:Lmhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_26
    iput-object v4, v0, Ljli;->J:Lkce;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v4, p15

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

    :goto_28
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2a
    invoke-direct {v1, p0}, Ljlc;-><init>(Ljli;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v4, p29

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_2c
    invoke-virtual {p8, v1}, Lglm;->z(Lhhg;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v3, Ljqt;

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

    :goto_2e
    iput-object v2, v0, Ljli;->G:Lmlf;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_30
    move-object/from16 v3, p18

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_31
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_32
    new-instance v2, Lmle;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_33
    move-object/from16 v4, p14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_34
    iput-object v2, v0, Ljli;->z:Ljdb;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move-object v4, p4

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

    :goto_36
    move-object/from16 v4, p10

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

    nop

    nop

    :goto_37
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2d

    nop

    nop

    :goto_39
    const-string v5, "No image has been captured"

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_3b
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3c
    iput-object v2, v0, Ljli;->K:Llxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v3}, Ljqt;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v4, Ljava/lang/IllegalStateException;

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

    nop

    :goto_3f
    iput-object v4, v0, Ljli;->f:Lmwp;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast v3, Ljqp;

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

    nop

    nop

    :goto_41
    invoke-virtual {v3, v2}, Lfdo;->C(Lmle;)Lmlf;

    move-result-object v2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v2, p12

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_43
    move-object v4, p9

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_44
    iput-object v1, v0, Ljli;->O:Lhhg;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object/from16 v4, p31

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

    :goto_46
    move-object/from16 v2, p24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iput-object v4, v0, Ljli;->r:Lgnj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_48
    iput-object v4, v0, Ljli;->s:Lobe;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_49
    move-object/from16 v4, p32

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4a
    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v4, p26

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

    :goto_4c
    move-object/from16 v4, p20

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4d
    iput-object v4, v0, Ljli;->v:Lqpa;

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

    nop

    nop

    :goto_4e
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_4f
    const-string v2, "ImageIntent"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_50
    iput-object v4, v0, Ljli;->B:Landroid/content/res/Resources;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v4, v0, Ljli;->q:Lhoh;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_52
    invoke-direct {v2, p0}, Ljlh;-><init>(Ljli;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_54
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_55
    return-void

    nop

    nop

    :goto_56
    goto/32 :goto_53

    nop

    nop

    :goto_57
    invoke-direct {v2, v3}, Lmle;-><init>(Ljava/io/File;)V

    goto/32 :goto_30

    nop

    nop

    :goto_58
    move-object v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_59
    move-object/from16 v4, p28

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v3, v0, Ljli;->j:Lsuu;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_5b
    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto/32 :goto_32

    nop

    nop

    :goto_5c
    invoke-virtual/range {p23 .. p23}, Lfdn;->h()Landroid/content/Intent;

    move-result-object v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5d
    iput-object v3, v0, Ljli;->I:Ljqp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_5e
    move-object v4, p5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object/from16 v4, p25

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_61
    iput-object v4, v0, Ljli;->M:Lmjn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_62
    move-object/from16 v4, p19

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-instance v3, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_64
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput-object v2, v0, Ljli;->e:Lowu;

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

    :goto_67
    iput-object v2, v0, Ljli;->o:Llad;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_68
    invoke-direct {p0}, Lggo;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iput-object v4, v0, Ljli;->i:Lrss;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_6a
    move-object/from16 v2, p13

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

    :goto_6b
    move-object v4, p6

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

    nop

    :goto_6c
    iput-object v4, v0, Ljli;->N:Lhdn;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v3, v4}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6e
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_6f
    iput-object v4, v0, Ljli;->w:Lhwy;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput-object v4, v0, Ljli;->g:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_72
    iput-object v4, v0, Ljli;->y:Ljdc;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iput-object v2, v0, Ljli;->A:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iput-object v4, v0, Ljli;->x:Lngo;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_77
    move-object v2, p2

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final A()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final C()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

.method public final a()Lrss;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljli;->p:Lkbf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Ljli;->F:Lmut;

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

    :goto_3
    invoke-virtual {p0}, Lmuq;->d()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    const v1, 0x7f130084

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

    :goto_a
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Ljli;->n:Lmhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lmhf;->d(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final c(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p1, v0, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const p1, 0x7f130083

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_e

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Ljli;->n:Lmhf;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    iget-object p0, p0, Ljli;->n:Lmhf;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const p1, 0x7f130082

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

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lmhf;->d(I)V

    goto/32 :goto_a

    nop

    nop

    :goto_10
    const/4 v0, 0x2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x3

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

    :goto_12
    invoke-virtual {p0, p1}, Lmhf;->d(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final close()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

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

    nop
.end method

.method public final declared-synchronized d()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xc

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    return-void

    nop

    :cond_1
    :try_start_0
    const-string v2, "ImageIntent:CompressingImageIntoIntentExtra"

    nop

    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-static {v0}, Lnou;->a([B)Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v2, Landroid/content/Intent;

    nop

    nop

    nop

    const-string v3, "inline-data"

    nop

    nop

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "data"

    nop

    invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljkz;->c:Lowu;

    nop

    nop

    nop

    nop

    new-instance v3, Ljky;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v0, v4}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-virtual {v2, v3}, Lowu;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Ljli;->j:Lsuu;

    nop

    invoke-virtual {v0}, Lsuu;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, [B

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ljli;->C:Ljkz;

    nop

    iget-object v2, v1, Ljkz;->d:Lrss;

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->h()Z

    move-result v3

    nop

    if-eqz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Lrss;->c()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/net/Uri;

    nop

    nop

    new-instance v3, Lhfj;

    nop

    nop

    nop

    nop

    nop

    const/16 v4, 0xc

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1, v2, v0, v4}, Lhfj;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iget-object v0, v1, Ljkz;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v0}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Litv;

    nop

    nop

    const/4 v4, 0x6

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-direct {v3, v1, v2, v4, v5}, Litv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    iget-object v1, v1, Ljkz;->c:Lowu;

    nop

    nop

    invoke-static {v0, v3, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    goto :goto_c

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_2
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string v2, "Couldn\'t get image data from Future"

    nop

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    nop

    :goto_c
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    return-void

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

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method

.method protected final dB()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljli;->e()Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method

.method public final dC()V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lnne;->h:Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljli;->E:Lkbe;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    :goto_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Ljli;->D:Lkob;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljli;->p:Lkbf;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Ljli;->e:Lowu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_7
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_26

    nop

    :goto_9
    invoke-virtual {v0}, Lkbf;->close()V

    :goto_a
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lhwy;->H()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {v1, p0, v2}, Ljkd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljkd;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_f
    new-instance v1, Lgng;

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

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    iget-object v1, p0, Ljli;->g:Lhco;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljli;->w:Lhwy;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_15
    iget-object v1, p0, Ljli;->E:Lkbe;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Ljli;->e:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    iput-object v0, p0, Ljli;->E:Lkbe;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, v2, v3}, Lknw;->a(Lhco;Lkob;Lnne;)Lkbe;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x20

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

    :goto_1a
    iget-object v0, p0, Ljli;->L:Lknw;

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

    :goto_1b
    iput-object v0, p0, Ljli;->E:Lkbe;

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x14

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v2}, Lssk;->cancel(Z)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

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

    :goto_20
    const v0, 0x13

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v0, p0, Ljli;->p:Lkbf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x5

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

    :goto_25
    goto/32 :goto_22

    nop

    :goto_26
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_28
    invoke-direct {v1, p0, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final dD()V
    .locals 5

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lesy;

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

    :goto_1
    invoke-virtual {p0, v0}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object v0, v0, Ljkz;->d:Lrss;

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

    :goto_4
    const/16 v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljli;->C:Ljkz;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

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
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v0

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    iget-object p0, p0, Lhdn;->c:Ljava/lang/Object;

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

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    check-cast p0, Lowu;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    goto :goto_8

    nop

    nop

    :goto_16
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    invoke-direct {v0, p0, v1}, Lesy;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_1a
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ljli;->A:Landroid/content/Context;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Landroid/net/Uri;

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

    :goto_1d
    iget-object p0, p0, Ljli;->N:Lhdn;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    iget-object p0, p0, Ljli;->v:Lqpa;

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

    :goto_1f
    const v1, 0x19

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lqpa;->f()V

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method public final dx()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljli;->F:Lmut;

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
    invoke-virtual {p0}, Lggo;->n()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {v0}, Lmuq;->e()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 1

    goto/32 :goto_8

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

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_b

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lmwy;->a()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    invoke-virtual {v0}, Ljkx;->c()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Ljli;->k:Ljkx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljli;->k:Ljkx;

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
    iget-object v0, v0, Ljkx;->b:Lmwy;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ljli;->F:Lmut;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lmuq;->e()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method protected final l()V
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v1, Ljeo;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljli;->H:Llwx;

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

    :goto_2
    iget-object v2, p0, Ljli;->b:Lngu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljdc;->b(Ljdb;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v0}, Lows;->d(Lpci;)V

    goto/32 :goto_f

    nop

    nop

    :goto_5
    iput-object v0, p0, Ljli;->l:Lows;

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

    :goto_6
    const v1, 0x13

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_7
    iget-object v2, p0, Ljli;->l:Lows;

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

    :goto_8
    iget-object v1, p0, Ljli;->x:Lngo;

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

    :goto_9
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p0, v1, v2}, Lkce;->b(Lggo;Lnne;Lows;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Ljli;->l:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2, v1, v3}, Lhco;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

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
    iget-object v0, p0, Ljli;->l:Lows;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0}, Lows;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ljli;->l:Lows;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljli;->k:Ljkx;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Ljli;->K:Llxb;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v3, 0x10

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_17
    new-instance v0, Lows;

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

    :goto_18
    invoke-interface {v0, v2}, Lngo;->e(Lngu;)Lpci;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    iget-object v2, p0, Ljli;->g:Lhco;

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

    :goto_1a
    iget-object v0, p0, Ljli;->x:Lngo;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Lstd;->a:Lstd;

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

    :goto_1c
    invoke-interface {v1, v2, v3}, Loyn;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Ljli;->z:Ljdb;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

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

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    sget-object v1, Lnne;->h:Lnne;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Llwx;->a(Llxb;)V

    goto/32 :goto_17

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v2, Ljeo;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_28
    const/16 v2, 0x11

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Ljli;->J:Lkce;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2a
    invoke-direct {v1, p0, v2}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Ljli;->E:Lkbe;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2d
    iget-object v0, p0, Ljli;->y:Ljdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2e
    iget-object v3, p0, Ljli;->e:Lowu;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_30
    invoke-direct {v2, v1, v3}, Ljeo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Ljli;->d:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_32
    invoke-virtual {v0, v1}, Ljkx;->a(Z)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method

.method protected final m()V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0xc

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    add-int v0, v0, v1

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
    iget-object v1, p0, Ljli;->K:Llxb;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Lssk;->cancel(Z)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Ljli;->E:Lkbe;

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    :goto_7
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_15

    nop

    :goto_8
    invoke-virtual {p0}, Lows;->close()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

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
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ljli;->H:Llwx;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Llwx;->i(Llxb;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Ljli;->w:Lhwy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lhwy;->H()V

    goto/32 :goto_17

    nop

    nop

    :goto_14
    iget-object v0, p0, Ljli;->E:Lkbe;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Ljli;->l:Lows;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final declared-synchronized n()V
    .locals 10

    goto/32 :goto_b

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Ljli;->a:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x995

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

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

    const-string v1, "takePictureInvoked"

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    iget-object v0, p0, Ljli;->p:Lkbf;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ljli;->G:Lmlf;

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    nop

    invoke-interface {v1, v4, v5}, Lmlf;->a(J)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    new-instance v1, Lsuu;

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iput-object v1, p0, Ljli;->j:Lsuu;

    nop

    iget-object v1, p0, Ljli;->I:Ljqp;

    nop

    nop

    new-instance v9, Llwg;

    nop

    invoke-interface {v1}, Ljqp;->b()Lgii;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljli;->M:Lmjn;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, p0, Ljli;->j:Lsuu;

    nop

    nop

    nop

    move-object v2, v9

    nop

    nop

    nop

    invoke-direct/range {v2 .. v8}, Llwg;-><init>(Ljava/lang/String;JLgii;Lmjn;Lsuu;)V

    new-instance v1, Loxv;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    invoke-direct {v1, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    iget-object v3, p0, Ljli;->o:Llad;

    nop

    nop

    invoke-static {}, Lkmq;->a()Lkmp;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Llad;->a()Lpcg;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Lpcg;->a()I

    move-result v3

    nop

    invoke-virtual {v4, v3}, Lkmp;->i(I)V

    new-instance v3, Ljlf;

    nop

    nop

    nop

    invoke-direct {v3, p0}, Ljlf;-><init>(Ljli;)V

    invoke-virtual {v4, v3}, Lkmp;->b(Lkmr;)V

    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v3}, Lkmp;->e(I)V

    iget-object v3, v0, Lkbf;->c:Lkog;

    nop

    nop

    invoke-interface {v3}, Lpnu;->l()Lpog;

    move-result-object v5

    nop

    invoke-virtual {v4, v5}, Lkmp;->c(Lpog;)V

    invoke-interface {v3}, Lpnu;->P()[B

    move-result-object v3

    nop

    nop

    iput-object v3, v4, Lkmp;->a:[B

    nop

    nop

    iput-object v1, v4, Lkmp;->c:Loyn;

    nop

    nop

    invoke-virtual {v4, v2}, Lkmp;->d(Z)V

    invoke-virtual {v4, v2}, Lkmp;->g(Z)V

    invoke-virtual {v4}, Lkmp;->a()Lkmq;

    move-result-object v1

    nop

    invoke-virtual {v0, v1, v9}, Lkbf;->e(Lkmq;Llxa;)Lsui;

    move-result-object v0

    nop

    new-instance v1, Ljlg;

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Ljlg;-><init>(Ljava/lang/Object;I)V

    iget-object v2, p0, Ljli;->e:Lowu;

    nop

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    throw v0

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1b

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

    :goto_c
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public final o()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhhg;->f()V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljli;->O:Lhhg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Ljli;->e()Z

    move-result p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Ljli;->k:Ljkx;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v0, Ljkx;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop
.end method

.method public final q()Ljava/lang/String;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    iget-object p0, p0, Ljli;->B:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x7f1404cc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final s(Lfgv;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
