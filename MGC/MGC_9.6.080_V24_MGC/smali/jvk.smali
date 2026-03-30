.class public Ljvk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljvx;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final A:Lfdo;

.field private final B:Lkae;

.field private final C:Z

.field private final D:Loyd;

.field private final E:Loyd;

.field private final F:Loyd;

.field private final G:Llyv;

.field private final H:Liof;

.field private final I:Loyb;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljwa;

.field public final e:Ljut;

.field public final f:Lrss;

.field public final g:Lrss;

.field public final h:Lkji;

.field public final i:Z

.field public final j:Ljus;

.field public final k:Ljvq;

.field public final l:Landroid/os/Handler;

.field public final m:Lpnu;

.field public final n:Liie;

.field public volatile o:J

.field public final p:Ljava/util/List;

.field public final q:Loyn;

.field public final r:Loyn;

.field public final s:Loyn;

.field public final t:Ljwk;

.field public final u:Lidi;

.field public final v:Lhoh;

.field public final w:Lnkn;

.field public final x:Llko;

.field public final y:Liof;

.field public final z:Lnpr;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_7

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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Lj$/time/Duration;->ofSeconds(J)Lj$/time/Duration;

    goto/32 :goto_d

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    sput-object v0, Ljvk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1

    nop

    goto/32 :goto_9

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

    goto/32 :goto_4

    nop

    nop

    :goto_9
    const v1, 0x8

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

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "jvk"

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

    :goto_e
    const-wide/16 v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljwa;Ljut;Loyb;Lrss;Lrss;Lkji;Ljwk;Lnkn;Lkae;Lhoh;Ljus;Lnpr;Lpnu;Landroid/os/Handler;Ljvq;Liie;Liof;Lfdo;Llko;Liof;Loyd;Llyv;Loyd;Lidi;Loyn;)V
    .locals 5

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v2, v0, Ljvk;->H:Liof;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    move-object/from16 v2, p17

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_2
    iput-object v2, v0, Ljvk;->w:Lnkn;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_4
    move-object v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_5
    move-object/from16 v2, p15

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_6
    iput-object v2, v0, Ljvk;->s:Loyn;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7
    iput-object v2, v0, Ljvk;->c:Ljava/util/concurrent/Executor;

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

    :goto_8
    move-object v2, p4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_9
    goto/32 :goto_16

    nop

    :goto_a
    invoke-direct {v3, v2}, Loyg;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v2, v0, Ljvk;->y:Liof;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_c
    move-object/from16 v2, p19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v2, v0, Ljvk;->r:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    const-wide/32 v3, 0x59682f00

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f
    move-object/from16 v2, p26

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v2, v0, Ljvk;->f:Lrss;

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

    :goto_11
    move-object/from16 v2, p18

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_12
    move-object/from16 v2, p21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_13
    move-object/from16 v2, p25

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_14
    move-object/from16 v2, p22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v2, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    sget-object v2, Lhms;->a:Lhmo;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_19
    move-object v2, p3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v2, p13

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1b
    const/4 v2, 0x0

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

    :goto_1c
    move-object/from16 v1, p12

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1d
    iput-object v2, v0, Ljvk;->G:Llyv;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    iput-object v2, v0, Ljvk;->B:Lkae;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1f
    move-object/from16 v2, p23

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v2, p11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_22
    move-object v2, p7

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v2, v0, Ljvk;->D:Loyd;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object v2, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_25
    move-object v2, p10

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_26
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_27
    iput-object v2, v0, Ljvk;->u:Lidi;

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

    :goto_28
    move-object/from16 v2, p14

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_29
    iput-object v2, v0, Ljvk;->z:Lnpr;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2a
    iput-boolean v1, v0, Ljvk;->i:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_2b
    new-instance v2, Loxv;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    move-object v0, p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput-object v2, v0, Ljvk;->d:Ljwa;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2f
    const v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_32
    iput-boolean v2, v0, Ljvk;->C:Z

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

    :goto_33
    move-object v2, p9

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_34
    move-object v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_36
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_37
    iput-object v2, v0, Ljvk;->x:Llko;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_38
    new-instance v3, Loyg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_39
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

    :goto_3a
    iput-object v2, v0, Ljvk;->l:Landroid/os/Handler;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput-object v2, v0, Ljvk;->I:Loyb;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    move-object/from16 v2, p16

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

    :goto_3e
    const v1, 0x18

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

    :goto_3f
    return-void

    nop

    :goto_40
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    iput-object v2, v0, Ljvk;->q:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v2, Lhmz;->D:Lhmn;

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

    nop

    :goto_43
    iput-object v2, v0, Ljvk;->m:Lpnu;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_44
    iput-object v2, v0, Ljvk;->n:Liie;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput-object v2, v0, Ljvk;->p:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    rem-int v0, v0, v1

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

    :goto_47
    iput-object v2, v0, Ljvk;->g:Lrss;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_48
    iput-object v2, v0, Ljvk;->A:Lfdo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_49
    iput-object v2, v0, Ljvk;->k:Ljvq;

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

    :goto_4a
    move-object/from16 v2, p27

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-object v2, p6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2}, Lj$/util/DesugarCollections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

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

    :goto_4d
    iput-object v2, v0, Ljvk;->t:Ljwk;

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

    :goto_4e
    iput-object v1, v0, Ljvk;->v:Lhoh;

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

    :goto_4f
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_50
    sget-object v0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move-object/from16 v2, p20

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v2, v0, Ljvk;->F:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_54
    iput-object v2, v0, Ljvk;->j:Ljus;

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

    :goto_55
    iput-object v3, v0, Ljvk;->E:Loyd;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_56
    move-object v2, p8

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move-object/from16 v2, p24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {v2, v3}, Loxv;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_59
    new-instance v2, Loxv;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iput-object v2, v0, Ljvk;->h:Lkji;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_5b
    iput-object v2, v0, Ljvk;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    :goto_5d
    iput-object v2, v0, Ljvk;->e:Ljut;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5e
    sget-object v2, Lhmz;->l:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public static b(Lsui;Lssx;Lssx;)Lsui;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1, p2, v0}, Ljuu;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    new-instance p1, Ljuu;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-static {p0}, Lsub;->q(Lsui;)Lsub;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lstd;->a:Lstd;

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
    invoke-static {p0, p1, v0}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 v0, 0x0

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

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, v0, p1, p2}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const-class v0, Ljava/lang/RuntimeException;

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

    :goto_9
    sget-object p2, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public static f(Lkji;Llxm;Landroid/os/Handler;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x9

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_6
    new-instance v0, Ljky;

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

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    const v1, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, p0, p1, v1, v2}, Ljky;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    const-wide/16 v1, 0x1388

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

    :goto_f
    invoke-virtual {p2, v0, p1, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public static final i(Ljvj;J)Lsnu;
    .locals 8

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget p1, p0, Ljvj;->v:I

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_2
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_0
    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    iget-wide v4, v0, Ljxe;->c:J

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_b
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, v1, Ltkb;->b:Ltkg;

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

    :goto_d
    iput-boolean v3, p2, Lsnu;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_e
    iget p1, v0, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_f
    iget-wide v2, p0, Ljvj;->f:J

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-wide v4, v0, Ljxe;->d:J

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_11
    goto/32 :goto_83

    nop

    :goto_12
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_13
    or-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    check-cast p2, Lsnu;

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
    iget v2, p2, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v2, v0, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1a
    iget v2, p2, Lsnu;->b:I

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

    :goto_1b
    sget-object v4, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1c
    throw p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    :goto_1e
    :try_start_0
    iget-object p1, p0, Ljvj;->h:Lsuu;

    nop

    invoke-static {p1}, Lsgj;->W(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    nop

    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_21
    if-eqz p2, :cond_1

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

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

    :goto_23
    iput p1, v2, Lsnu;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_24
    iput v2, p2, Lsnu;->b:I

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

    nop

    :goto_25
    or-int/lit8 v4, v4, 0x4

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget p2, v0, Ljxe;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    or-int/lit16 p1, p1, 0x200

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

    :goto_28
    iget-object p1, p0, Ljvj;->j:Lsui;

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

    :goto_29
    check-cast p1, Lsnu;

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

    :goto_2a
    long-to-int p1, p1

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

    :goto_2b
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput-boolean p2, p1, Lsnu;->h:Z

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

    :goto_2d
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2e
    sget-object v1, Lsnu;->a:Lsnu;

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2, p1, p2, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

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

    :goto_30
    iget v2, p2, Lsnu;->b:I

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

    :goto_31
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_34
    or-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_36
    sub-long/2addr v4, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-boolean p1, p0, Ljvj;->p:Z

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

    :goto_39
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3b
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0}, Ljxe;->a()Ljxe;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_3e
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_3f
    iget p2, p1, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_40
    iput p1, p2, Lsnu;->c:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_41
    iput p1, p2, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_42
    long-to-int p1, p1

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p1}, Lsgj;->X(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object p1

    nop

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

    nop

    :goto_44
    iget v4, v2, Lsnu;->b:I

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

    :goto_45
    iput p1, v0, Lsnu;->i:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_47
    iget p2, p1, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_48
    long-to-int p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_49
    iput p2, p1, Lsnu;->b:I

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_4a
    iput-boolean v3, p1, Lsnu;->k:Z

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_4d
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez p1, :cond_5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    :goto_50
    invoke-static {p1}, Ljvk;->l(I)I

    move-result p1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_52
    if-eqz p2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :cond_6
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_53
    check-cast v0, Lsnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_54
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Ljvj;->i:Lkjg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_56
    sub-long/2addr p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {p1}, Lrrf;->x(Z)V

    goto/32 :goto_5e

    nop

    nop

    :goto_58
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_59
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast p2, Lsnu;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5b
    check-cast p1, Lsnu;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-wide v6, p0, Ljvj;->e:J

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_5e
    iget-object p1, p0, Ljvj;->j:Lsui;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0, v1}, Lkjg;->e(Ltkb;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_60
    if-eqz p2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    add-int/lit8 p1, p1, -0x1

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

    :goto_62
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_63
    check-cast v2, Lsnu;

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

    :goto_64
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p1

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

    nop

    :goto_65
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast p0, Lsnu;

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iput v2, p2, Lsnu;->b:I

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_68
    iget p1, p0, Ljvj;->w:I

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    or-int/lit8 p2, p2, 0x20

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

    :goto_6a
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_6b
    iget p1, p2, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_6c
    check-cast v0, Lsnu;

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

    nop

    nop

    :goto_6d
    iput v0, p2, Lsnu;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_6e
    iput v4, v2, Lsnu;->b:I

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

    :goto_6f
    move-object p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_70
    if-eqz p2, :cond_8

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    check-cast p2, Lsnu;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_72
    iput p1, p2, Lsnu;->d:I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p1, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_74
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_77
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz p1, :cond_9

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz p1, :cond_a

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_7c
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_11

    nop

    :goto_7d
    move-object v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Ltkg;->C()Z

    move-result p1

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_7f
    const-string p2, "Shutter timestamp unavailable for stats collection"

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    if-eqz p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p1}, Lsui;->isDone()Z

    move-result p1

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    throw p1

    nop

    nop

    nop

    nop

    :goto_83
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Ljvj;->d:Ljxe;

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

    :goto_87
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_88
    or-int/lit16 p2, p2, 0x80

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_89
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_8a
    sub-long/2addr p1, v4

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

    :goto_8b
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_8c
    goto/32 :goto_9a

    nop

    nop

    :goto_8d
    iget-object v2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_8e
    iput p2, v0, Lsnu;->f:I

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

    :goto_8f
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_90
    iget-object p2, v1, Ltkb;->b:Ltkg;

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

    :goto_91
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_93
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_94
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_95
    iget v2, v0, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_96
    move-object v0, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_97
    add-int/lit8 v0, p1, -0x1

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_98
    iput p1, v0, Lsnu;->b:I

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_99
    or-int/lit8 p1, p1, 0x40

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

    :goto_9a
    iget-object p2, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9b
    iget-object p1, p0, Ljvj;->s:Lrss;

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

    :goto_9c
    return-object p0

    nop

    nop

    :goto_9d
    goto/32 :goto_85

    nop

    nop

    nop

    :goto_9e
    iget-object p1, p0, Ljvj;->s:Lrss;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9f
    or-int/lit8 v2, v2, 0x10

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    check-cast p2, Lsnu;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez p1, :cond_d

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_62

    nop

    nop

    :goto_a2
    invoke-virtual {p1, v4, v5, p2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v1}, Ltkg;->m()Ltkb;

    move-result-object v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p2}, Ltkg;->C()Z

    move-result p2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    iput p2, p1, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_a6
    iput v2, p2, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    check-cast p1, Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_a8
    or-int/lit8 v2, v2, 0x8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public static final j(Ljvj;)Lsnu;
    .locals 4

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_32

    nop

    :goto_4
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    :goto_5
    check-cast p0, Lsnu;

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

    :goto_6
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v1, v3, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_8
    check-cast v1, Lsnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    iput-boolean v2, v1, Lsnu;->g:Z

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_f
    iget p0, v1, Lsnu;->b:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_10
    add-int/lit8 v2, p0, -0x1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    iput p0, v1, Lsnu;->b:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    iput v1, v3, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_17
    move-object v3, v2

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_18
    throw p0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, p0, Ljvj;->v:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_1c
    goto/32 :goto_2b

    nop

    nop

    :goto_1d
    iget-object v2, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1e
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    iget p0, p0, Ljvj;->w:I

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

    :goto_22
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    invoke-static {v1}, Ljvk;->l(I)I

    move-result v1

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

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_26
    check-cast v1, Lsnu;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    iput v2, v1, Lsnu;->m:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    iput v1, v3, Lsnu;->i:I

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

    :goto_29
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    :goto_2a
    const v1, 0x11

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    or-int/lit8 v2, v2, 0x10

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2e
    sget-object v0, Lsnu;->a:Lsnu;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_30
    iput v2, v1, Lsnu;->b:I

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

    :goto_31
    or-int/lit16 p0, p0, 0x200

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_19

    nop

    nop

    :goto_33
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_35
    check-cast v3, Lsnu;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_37
    or-int/lit8 v1, v1, 0x40

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

    :goto_38
    iget v2, v1, Lsnu;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop
.end method

.method public static final k(Ljvj;Ljvi;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljvj;->n:Lsuu;

    nop

    nop

    goto/32 :goto_3

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

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    invoke-virtual {p0}, Llxc;->a()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object p0, p0, Ljvj;->n:Lsuu;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Ljvj;->c:Llxc;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_a
    invoke-static {v0}, Lrrf;->x(Z)V

    :try_start_0
    iget-object v0, p1, Ljvi;->c:[B

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p1, Ljvi;->b:Lrss;

    nop

    invoke-virtual {v1}, Lrss;->f()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p1, Ljvi;->d:Llxc;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Llxc;->b:Lpsf;

    nop

    nop

    nop

    invoke-static {v0, v1, v2}, Lpuq;->aY([BLcom/google/android/libraries/camera/exif/ExifInterface;Lpsf;)J

    iget-object v0, p1, Ljvi;->e:Lmjn;

    nop

    nop

    nop

    nop

    iget-object v1, p1, Ljvi;->d:Llxc;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Llxc;->b:Lpsf;

    nop

    invoke-interface {v1}, Lpsf;->a()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Lmjn;->e(J)V

    iget-object v0, p1, Ljvi;->d:Llxc;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Llxc;->b()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    iget-object p1, p1, Ljvi;->a:Lmla;

    nop

    nop

    goto/32 :goto_f

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

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Ljvj;->c:Llxc;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Llxc;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljvj;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

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

    :goto_14
    iget-object v0, p0, Ljvj;->c:Llxc;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

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

    :goto_16
    throw p1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Llxc;->a()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    sget-object v1, Ljvk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xa6f

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    const-string v2, "Could not move original image to place"

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    iget-object v1, p0, Ljvj;->n:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Lsuu;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p1, Ljvi;->d:Llxc;

    nop

    invoke-virtual {p1}, Llxc;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop
.end method

.method private static final l(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Llxa;IZLrss;)Ljvw;
    .locals 21

    goto/32 :goto_f

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    :cond_0
    :goto_2
    :try_start_1
    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v1

    nop

    sget-object v2, Llxo;->r:Llxo;

    nop

    if-eq v1, v2, :cond_3

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v1

    nop

    nop

    nop

    nop

    sget-object v2, Llxo;->o:Llxo;

    nop

    if-eq v1, v2, :cond_3

    nop

    nop

    nop

    iget-object v1, v14, Ljvk;->q:Loyn;

    nop

    check-cast v1, Loxv;

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast v1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    cmp-long v3, v1, v10

    nop

    nop

    if-gez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v14, Ljvk;->q:Loyn;

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v7}, Loyn;->a(Ljava/lang/Object;)V

    :cond_1
    cmp-long v3, v1, v5

    nop

    nop

    nop

    if-lez v3, :cond_3

    nop

    iget-object v3, v14, Ljvk;->r:Loyn;

    nop

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Loxv;

    nop

    nop

    nop

    iget-object v3, v3, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    sget-object v3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    invoke-virtual {v5, v6, v7, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v5

    nop

    nop

    nop

    add-long/2addr v1, v5

    nop

    nop

    cmp-long v1, v1, v10

    nop

    nop

    nop

    if-lez v1, :cond_3

    nop

    nop

    nop

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    sget-object v1, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    nop

    nop

    nop

    invoke-static {v10, v11, v1}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v1

    nop

    nop

    invoke-static {v0, v1}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide v0

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v14, Ljvk;->s:Loyn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Landroid/util/Pair;

    nop

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    nop

    cmp-long v0, v0, v5

    nop

    nop

    if-ltz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v0, v14, Ljvk;->s:Loyn;

    nop

    new-instance v1, Landroid/util/Pair;

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    :cond_2
    new-instance v0, Ljvp;

    nop

    nop

    nop

    invoke-direct {v0, v15}, Ljvp;-><init>(Llxm;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    :cond_3
    :try_start_2
    iget-object v1, v14, Ljvk;->p:Ljava/util/List;

    nop

    nop

    nop

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lhmz;->a:Lhmo;

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Llxo;->o:Llxo;

    nop

    nop

    nop

    if-ne v1, v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v14, Ljvk;->I:Loyb;

    nop

    nop

    nop

    invoke-virtual {v1}, Loyb;->h()Z

    move-result v1

    nop

    if-eqz v1, :cond_4

    nop

    nop

    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_4
    new-instance v1, Lmkz;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    invoke-direct {v1, v2}, Lmkz;-><init>([B)V

    invoke-interface {v0, v1}, Llxa;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljvp;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v15}, Ljvp;-><init>(Llxm;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :cond_5
    :goto_c
    :try_start_3
    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v1

    nop

    nop

    nop

    sget-object v2, Llxo;->o:Llxo;

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->A()V

    :cond_6
    iget-object v1, v14, Ljvk;->h:Lkji;

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lkji;->c()Lpci;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Lsuu;

    nop

    nop

    invoke-direct {v8}, Lsuu;-><init>()V

    iget-object v1, v14, Ljvk;->H:Liof;

    nop

    nop

    nop

    invoke-virtual {v1, v15}, Liof;->c(Llxm;)Linc;

    move-result-object v1

    nop

    nop

    nop

    new-instance v2, Ljuy;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, v14, v8}, Ljuy;-><init>(Ljvk;Lsui;)V

    invoke-virtual {v1, v2}, Linc;->a(Lilg;)V

    invoke-virtual/range {p4 .. p4}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    invoke-virtual/range {p4 .. p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Ljzv;

    nop

    nop

    nop

    nop

    iget-object v2, v1, Ljzv;->g:Lhwy;

    nop

    nop

    iget-object v3, v1, Ljzv;->c:Llxm;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lhwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Liof;

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Liof;->c(Llxm;)Linc;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v1}, Linc;->a(Lilg;)V

    invoke-virtual {v2, v1}, Linc;->c(Lilh;)V

    invoke-virtual {v2, v1}, Linc;->f(Lilq;)V

    invoke-virtual/range {p4 .. p4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v1

    nop

    check-cast v1, Ljzv;

    nop

    iget-object v1, v1, Ljzv;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto :goto_d

    nop

    nop

    :cond_7
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v16, v1

    nop

    nop

    nop

    iget-object v7, v14, Ljvk;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    new-instance v5, Ljuw;

    nop

    nop

    nop

    nop

    nop

    move-object v1, v5

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    move-object v3, v15

    nop

    nop

    nop

    nop

    nop

    move-object v4, v8

    nop

    nop

    nop

    nop

    nop

    move-object v0, v5

    nop

    move-wide v5, v10

    nop

    nop

    move-object/from16 v17, v15

    nop

    move-object v15, v7

    nop

    nop

    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v18, v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, p3

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v19, v10

    nop

    nop

    move/from16 v10, p2

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v11, v16

    nop

    nop

    nop

    invoke-direct/range {v1 .. v13}, Ljuw;-><init>(Ljvk;Llxm;Lsuu;JLlxa;ZZILsui;ZLpci;)V

    invoke-interface {v15, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    new-instance v0, Ljve;

    nop

    nop

    nop

    nop

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    move-object/from16 v2, p0

    nop

    nop

    nop

    nop

    move-object/from16 v3, v17

    nop

    nop

    move-wide/from16 v4, v19

    nop

    nop

    move-object/from16 v6, v18

    nop

    nop

    nop

    nop

    move-object/from16 v7, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v7}, Ljve;-><init>(Ljvk;Llxm;JLsuu;Llxa;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    const v0, 0x1e

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

    :goto_10
    move-object/from16 v0, p1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_8
    goto/32 :goto_7

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    throw v0

    nop

    :goto_15
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v1, v14, Ljvk;->E:Loyd;

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->j()Llxm;

    move-result-object v15

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->k()Llxo;

    move-result-object v2

    nop

    sget-object v3, Llxo;->o:Llxo;

    nop

    nop

    check-cast v1, Loyg;

    nop

    nop

    iget-object v1, v1, Loyg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    const/4 v5, 0x0

    nop

    if-ne v2, v3, :cond_9

    nop

    move v9, v4

    nop

    nop

    goto :goto_17

    nop

    :cond_9
    move v9, v5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v1, :cond_a

    nop

    nop

    nop

    if-nez v9, :cond_a

    nop

    move v12, v4

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_a
    move v12, v5

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, v14, Ljvk;->e:Ljut;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljut;->b()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_b

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    :cond_b
    if-nez v9, :cond_c

    nop

    nop

    nop

    nop

    iget-object v1, v14, Ljvk;->F:Loyd;

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    iget-boolean v1, v14, Ljvk;->C:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_c

    nop

    nop

    nop

    nop

    iget-object v1, v14, Ljvk;->G:Llyv;

    nop

    sget-object v2, Llyr;->aJ:Llzf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Llyv;->b(Llyp;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    invoke-static {v1}, Lkav;->E(I)I

    move-result v1

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_c

    nop

    iget-object v1, v14, Ljvk;->D:Loyd;

    nop

    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Float;

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    const/high16 v2, 0x40200000    # 2.5f

    nop

    cmpl-float v1, v1, v2

    nop

    if-gez v1, :cond_2

    nop

    nop

    nop

    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    nop

    nop

    invoke-static {}, Lj$/time/Instant;->now()Lj$/time/Instant;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Lj$/time/Instant;->toEpochMilli()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    sub-long/2addr v1, v6

    nop

    nop

    nop

    nop

    invoke-static {}, Lkav;->b()V

    sget-object v3, Ljwc;->b:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    sget-object v3, Ljwc;->c:Lj$/util/concurrent/ConcurrentHashMap;

    nop

    nop

    invoke-virtual {v3}, Lj$/util/concurrent/ConcurrentHashMap;->clear()V

    sget-boolean v3, Ljwc;->a:Z

    nop

    if-eqz v9, :cond_d

    nop

    nop

    nop

    nop

    iget-object v3, v14, Ljvk;->B:Lkae;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lkae;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v3, v14, Ljvk;->g:Lrss;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->h()Z

    move-result v3

    nop

    nop

    nop

    if-eqz v3, :cond_d

    nop

    nop

    nop

    nop

    iget-object v3, v14, Ljvk;->g:Lrss;

    nop

    nop

    nop

    invoke-virtual {v3}, Lrss;->c()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljwi;

    nop

    nop

    nop

    iget-object v6, v3, Ljwi;->c:Lrss;

    nop

    nop

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_d

    nop

    nop

    nop

    nop

    iget-object v6, v3, Ljwi;->a:Lrss;

    nop

    invoke-virtual {v6}, Lrss;->h()Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_d

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v3, Ljwi;->d:Ljava/util/concurrent/Executor;

    nop

    nop

    new-instance v7, Ljsp;

    nop

    nop

    nop

    const/16 v8, 0xf

    nop

    invoke-direct {v7, v3, v8}, Ljsp;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v6, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_d
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-interface/range {p1 .. p1}, Llxa;->e()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v6, v1

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v7, v1}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v10

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    sget-object v2, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    invoke-static {v10, v11, v2}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v14, Ljvk;->s:Loyn;

    nop

    nop

    invoke-interface {v6}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Landroid/util/Pair;

    nop

    nop

    nop

    iget-object v6, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    nop

    check-cast v6, Ljava/lang/Long;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    nop

    nop

    nop

    nop

    cmp-long v1, v1, v6

    nop

    if-ltz v1, :cond_e

    nop

    nop

    iget-object v1, v14, Ljvk;->s:Loyn;

    nop

    nop

    nop

    new-instance v2, Landroid/util/Pair;

    nop

    nop

    nop

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-direct {v2, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Loyn;->a(Ljava/lang/Object;)V

    :cond_e
    iget-wide v1, v14, Ljvk;->o:J

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    cmp-long v1, v1, v5

    nop

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Ljvk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const/16 v2, 0xa5b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Taking picture before any frames came in; aborting."

    nop

    nop

    invoke-interface {v1, v2}, Lscz;->s(Ljava/lang/String;)V

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, v14, Ljvk;->v:Lhoh;

    nop

    nop

    nop

    sget-object v2, Lhmz;->y:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_2

    nop

    nop

    nop

    :cond_f
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    const-string v2, "Taking long shot before any frames came in."

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Llxa;->b(Ljava/lang/Throwable;)V

    new-instance v0, Ljvp;

    nop

    nop

    nop

    invoke-direct {v0, v15}, Ljvp;-><init>(Llxm;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    move-object/from16 v14, p0

    nop

    goto/32 :goto_10

    nop

    nop
.end method

.method public final declared-synchronized c(Ljvj;)V
    .locals 5

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p1, Ljvj;->b:Lkag;

    nop

    nop

    nop

    sget-object v1, Ljzx;->c:Ljzx;

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lkag;->a(Ljzx;)V

    iget-object v0, p1, Ljvj;->o:Lqem;

    nop

    nop

    invoke-interface {v0}, Lqem;->c()V

    iget-object v0, p1, Ljvj;->c:Llxc;

    nop

    invoke-virtual {v0}, Llxc;->a()V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    iget-wide v1, p1, Ljvj;->e:J

    nop

    nop

    nop

    sget-object v3, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    nop

    nop

    invoke-static {v1, v2, v3}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object v1

    nop

    invoke-static {v0, v1}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    nop

    iget-boolean v3, p1, Ljvj;->p:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_0

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, p0, Ljvk;->s:Loyn;

    nop

    nop

    nop

    invoke-interface {v3}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Landroid/util/Pair;

    nop

    nop

    iget-object v3, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    check-cast v3, Ljava/lang/Long;

    nop

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    cmp-long v0, v0, v3

    nop

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_0

    nop

    nop

    iget-object v0, p0, Ljvk;->s:Loyn;

    nop

    new-instance v1, Landroid/util/Pair;

    nop

    nop

    nop

    nop

    const/4 v3, 0x1

    nop

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    :cond_0
    iget-object p1, p1, Ljvj;->a:Llxm;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const v0, 0xf

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

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljvj;Ljava/lang/Throwable;Ljvi;)V
    .locals 4

    goto/32 :goto_37

    nop

    nop

    :goto_0
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    iget-boolean v0, p1, Ljvj;->p:Z

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

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

    :goto_3
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4
    cmp-long p1, p1, v2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_5
    check-cast v0, Lscz;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    invoke-direct {v2, v3, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p1, Ljvj;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    iget-object p2, p3, Ljvi;->e:Lmjn;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljvk;->j(Ljvj;)Lsnu;

    move-result-object p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Ljvk;->t:Ljwk;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

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

    :goto_e
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_11
    invoke-interface {v0, v1, v2}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    goto/16 :goto_2c

    nop

    nop

    :goto_14
    goto/32 :goto_2b

    nop

    nop

    :goto_15
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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
    sget-object p1, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

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

    :goto_17
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    iget-object v0, p0, Ljvk;->s:Loyn;

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

    :goto_19
    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1a
    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljwk;->a()V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1e
    invoke-interface {v0, p2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Landroid/util/Pair;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_24
    if-gez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p1, Ljvj;->n:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_26
    iget-boolean p2, p1, Ljvj;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_21

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p2, p1}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide p1

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

    :goto_2b
    invoke-static {p1, p3}, Ljvk;->k(Ljvj;Ljvi;)V

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v1, 0xa74

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2, v3, p1}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "%s: Microvideo session failed"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_31
    iput-object p3, p2, Lmjn;->k:Lsnu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ljava/lang/IllegalStateException;

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

    :goto_35
    const-string v3, "LongShot video failed!"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_36
    iget-object p0, p0, Ljvk;->s:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_37
    const v0, 0x14

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p1, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3a
    check-cast v0, Lscz;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v1, 0xa

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3d
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    check-cast v0, Landroid/util/Pair;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v0, v2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p1, Ljvj;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop
.end method

.method public final e(Ljvj;Ljava/lang/Throwable;Ljvi;)V
    .locals 5

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p2, "LongShot Video Cancelled. Reason = "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    nop

    nop

    :goto_2
    sget-object p1, Lj$/time/temporal/ChronoUnit;->MICROS:Lj$/time/temporal/ChronoUnit;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_3
    check-cast p3, Lsnu;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_4
    const/4 v3, 0x0

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

    nop

    :goto_5
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_6
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    :goto_7
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p3, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_9
    throw v4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_b
    sget-object p3, Lsnu;->a:Lsnu;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_f
    goto/32 :goto_a6

    nop

    nop

    :goto_10
    if-nez v0, :cond_0

    nop

    goto/32 :goto_3b

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    iget v4, v4, Ljzx;->i:I

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

    nop

    :goto_12
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p1, Ljvj;->n:Lsuu;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_16
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ltkg;->C()Z

    move-result v2

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_18
    or-int/lit8 v2, v2, 0x20

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v3, v4, p2}, Lhty;-><init>(ILjava/lang/Throwable;)V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1b
    iput v3, v2, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1c
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v2, p2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_1e
    const-string p2, "LongShot Video Cancelled."

    nop

    nop

    :goto_1f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    iget v0, v2, Lsnu;->b:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v2, Lsnu;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput v0, v2, Lsnu;->b:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_23
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_24
    invoke-static {p2, p1}, Lj$/util/concurrent/DesugarTimeUnit;->convert(Ljava/util/concurrent/TimeUnit;Lj$/time/Duration;)J

    move-result-wide p1

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

    :goto_25
    const v0, 0x15

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_44

    nop

    nop

    :goto_28
    check-cast v4, Ljzx;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_29
    iget-boolean p2, p1, Ljvj;->p:Z

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

    :goto_2a
    iget-object v2, p1, Ljvj;->k:Llxa;

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_2b
    iput v3, v2, Lsnu;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, p1, Ljvj;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v2, Lhty;

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {p1, p3, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, p1, Ljvj;->v:I

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    check-cast v0, Ljzx;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_33
    cmp-long p1, p1, v2

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_35
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast v0, Lsnu;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_38
    add-int/lit8 v0, v0, -0x1

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

    nop

    :goto_39
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iput v3, v2, Lsnu;->n:I

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3d
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_3e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_3f
    iget-object v0, p1, Ljvj;->u:Lrss;

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_40
    iget v0, v3, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Ljvk;->s:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_42
    iput-boolean v3, v2, Lsnu;->g:Z

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

    :goto_43
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_48

    nop

    :goto_45
    check-cast v0, Landroid/util/Pair;

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    add-int/lit8 v3, v0, -0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_27

    nop

    :goto_48
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    :goto_4a
    new-instance p1, Landroid/util/Pair;

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

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

    nop

    :goto_4c
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_4d
    goto/32 :goto_63

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_4
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    goto/16 :goto_7e

    nop

    nop

    :goto_52
    goto/32 :goto_7d

    nop

    nop

    :goto_53
    invoke-virtual {v0}, Ljzx;->name()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_54
    iput-object p3, p2, Lmjn;->k:Lsnu;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_55
    iput v0, v3, Lsnu;->i:I

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_56
    check-cast v0, Ljzx;

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_57
    const v1, 0x8

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

    :goto_58
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v0, p1, Ljvj;->u:Lrss;

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p1, Ljvj;->u:Lrss;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5b
    iput v0, v2, Lsnu;->b:I

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    or-int/lit16 v0, v0, 0x200

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v0, p1, Ljvj;->u:Lrss;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_5f
    if-nez v0, :cond_5

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

    :cond_5
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    or-int/lit16 v0, v0, 0x400

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v3, Lsnu;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_63
    iget-object v2, p3, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_64
    add-int/lit8 v3, v0, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v4, p1, Ljvj;->u:Lrss;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v0, p1, Ljvj;->k:Llxa;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_68
    if-eqz p2, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_6
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_69
    iget-object v0, p1, Ljvj;->a:Llxm;

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

    :goto_6a
    iget-boolean v0, p1, Ljvj;->p:Z

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_6c
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iput v0, v3, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_6e
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v2, v3}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget-object v0, p1, Ljvj;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p3}, Ltkg;->m()Ltkb;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_73
    iget v3, v2, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0, v2}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_75
    iput-boolean v1, v0, Lsnu;->h:Z

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_76
    move-object v3, v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_77
    invoke-static {v2, v3, p1}, Lj$/time/Duration;->of(JLj$/time/temporal/TemporalUnit;)Lj$/time/Duration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v2, p2}, Lhty;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_94

    nop

    nop

    :goto_79
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sget-object p0, Ljvk;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_7b
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_7d
    invoke-static {p1, p3}, Ljvk;->k(Ljvj;Ljvi;)V

    :goto_7e
    goto/32 :goto_9f

    nop

    nop

    :goto_7f
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_80
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_81
    or-int/lit8 v0, v0, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_82
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_83
    if-eqz v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    :cond_a
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const-string p1, "Cancelling microvideo but result has been submitted already"

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_85
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

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

    nop

    nop

    :goto_86
    iget v0, v0, Ljzx;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_87
    invoke-virtual {p2}, Llxc;->a()V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v0}, Ljvk;->l(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_89
    new-instance v3, Lhty;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_8a
    goto/16 :goto_9d

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    check-cast v2, Lsnu;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_8d
    invoke-virtual {v4}, Lrss;->c()Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_8e
    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_b
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_8f
    if-nez v0, :cond_c

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_59

    nop

    nop

    :goto_90
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p3}, Ltkb;->o()V

    :goto_92
    goto/32 :goto_2c

    nop

    nop

    :goto_93
    invoke-virtual {p3}, Ltkb;->i()Ltkg;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_94
    invoke-interface {v0, v2}, Llxa;->b(Ljava/lang/Throwable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    if-gez p1, :cond_d

    nop

    goto/32 :goto_7

    nop

    :cond_d
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_97
    iget v2, v0, Lsnu;->b:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_98
    const/16 p1, 0xa7b

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

    :goto_99
    check-cast v2, Lsnu;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v2, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9b
    iget v0, v2, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_9c
    throw v4

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_93

    nop

    nop

    :goto_9e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_9f
    iget-object p2, p1, Ljvj;->c:Llxc;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_a0
    iget-object p2, p3, Ljvi;->e:Lmjn;

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

    :goto_a1
    iput v2, v0, Lsnu;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_a2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

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

    nop

    :goto_a3
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_a5
    or-int/lit8 v3, v3, 0x10

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a6
    iget-object v0, p3, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_a7
    iget v0, p1, Ljvj;->w:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object p0, p0, Ljvk;->s:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop
.end method

.method public final g(Z)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljvk;->v:Lhoh;

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

    :goto_1
    if-nez p1, :cond_0

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
    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lhoh;->p(Lhmn;)Z

    move-result p0

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p1, Lhmz;->m:Lhmn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    sget-object p0, Lhmz;->a:Lhmo;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_3

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final h(Ljvj;Ljvi;J)V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    :goto_0
    goto :goto_a

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1, p3, p2}, Ljvk;->d(Ljvj;Ljava/lang/Throwable;Ljvi;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v2, "No recording-end timestamp recorded for %s"

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    iget-object v0, p1, Ljvj;->a:Llxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_7
    iput-wide v2, v1, Lmjn;->b:J

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

    :goto_8
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, v2, v1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    :goto_a
    :try_start_0
    iget-object v0, p1, Ljvj;->c:Llxc;

    nop

    iget-object v0, v0, Llxc;->b:Lpsf;

    nop

    nop

    nop

    iget-object v1, p1, Ljvj;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    const/4 v2, 0x1

    nop

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    nop

    if-nez v1, :cond_1

    nop

    iget-object v1, p0, Ljvk;->v:Lhoh;

    nop

    nop

    sget-object v3, Lhna;->S:Lhmn;

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Lhoh;->p(Lhmn;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object v1, p0, Ljvk;->k:Ljvq;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Ljvq;->a(Lpsf;)V

    :cond_0
    iget-object v1, p2, Ljvi;->e:Lmjn;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpsf;->a()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v3, v4}, Lmjn;->e(J)V

    iget-object v1, p1, Ljvj;->n:Lsuu;

    nop

    nop

    nop

    invoke-virtual {v1}, Lsuu;->isDone()Z

    move-result v1

    nop

    nop

    nop

    xor-int/2addr v1, v2

    nop

    nop

    invoke-static {v1}, Lrrf;->x(Z)V

    iget-object v1, p2, Ljvi;->e:Lmjn;

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    nop

    nop

    invoke-static {p1, v2, v3}, Ljvk;->i(Ljvj;J)Lsnu;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    iput-object v2, v1, Lmjn;->k:Lsnu;

    nop

    nop

    const-string v1, "LS"

    nop

    invoke-interface {v0, v1}, Lpsf;->h(Ljava/lang/String;)V

    iget-object v0, p1, Ljvj;->c:Llxc;

    nop

    nop

    nop

    invoke-virtual {v0}, Llxc;->b()V

    iget-object v0, p1, Ljvj;->n:Lsuu;

    nop

    nop

    new-instance v1, Lmla;

    nop

    nop

    nop

    sget-object v2, Lpsz;->e:Lpsz;

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lmla;-><init>(Lpsz;)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-virtual {v2, p3, p4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    iget-object p3, p2, Ljvi;->a:Lmla;

    nop

    iget-object p3, p3, Lmla;->b:Lrss;

    nop

    invoke-virtual {p3}, Lrss;->f()Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lcom/google/android/libraries/camera/exif/ExifInterface;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, p3}, Lmla;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object p3, p2, Ljvi;->a:Lmla;

    nop

    nop

    nop

    iget-object p3, p3, Lmla;->c:Lrss;

    nop

    nop

    nop

    nop

    iput-object p3, v1, Lmla;->c:Lrss;

    nop

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z

    return-void

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p3, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    const-string p4, "Trying to set final file but it has already been submitted."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p3, p4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p3

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    :goto_c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p2, Ljvi;->e:Lmjn;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_12
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    sget-object v0, Ljvk;->a:Lsdb;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Lscz;

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

    :goto_1a
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_17

    nop

    :goto_1b
    const/16 v1, 0xa77

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

    :goto_1c
    iget-object v0, p1, Ljvj;->s:Lrss;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    iget-object v1, p1, Ljvj;->a:Llxm;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method
