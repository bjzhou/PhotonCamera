.class public Lmwy;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field public final c:Lhco;

.field public final d:Lhvp;

.field public final e:Loyd;

.field public final f:Loyn;

.field public final g:Lrss;

.field public final h:Lrss;

.field public final i:Lmmw;

.field public final j:Lmmx;

.field public final k:Loyd;

.field public final l:Loyn;

.field public m:Lmxe;

.field public n:Lrss;

.field public o:Lmxc;

.field public p:Lpin;

.field public final q:Lhoh;

.field private final r:Landroid/os/Handler;

.field private final s:Loyd;

.field private final t:Landroid/content/Context;

.field private final u:Ljhy;

.field private final v:Lhut;

.field private final w:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    const/16 v3, 0x24e

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

    :goto_2
    aput-object v0, v1, v3

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_4
    check-cast v0, Lsdb;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

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
    const v1, 0xa

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

    :goto_8
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-array v1, v1, [Ljava/lang/Object;

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

    :goto_c
    const/4 v4, 0x0

    nop

    nop

    nop

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

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
    sput-object v0, Lmwy;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    const-string v0, "mwy"

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
.end method

.method public constructor <init>(Ljhy;Lfwv;Lhco;Lhut;Lhoh;Landroid/view/View;Lmhz;Llyv;Lowu;Loyn;Loyd;Lhvp;Landroid/content/Context;Lrss;Lrss;Lmmw;Lmmx;Loyd;Loyn;)V
    .locals 4

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    move-object v2, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Lmwy;->u:Ljhy;

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

    :goto_2
    move-object v1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_6
    invoke-virtual {p2}, Lfwv;->i()Lows;

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

    nop

    nop

    :goto_7
    iput-object v1, v0, Lmwy;->h:Lrss;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v0, p9

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p13

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v1, v0, Lmwy;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move-object v1, p3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v1, v0, Lmwy;->w:Lmhz;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lmwy;->d:Lhvp;

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

    :goto_e
    const/16 v2, 0xb

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_0
    goto/32 :goto_2e

    nop

    :goto_10
    move-object v1, p11

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v1, v0, Lmwy;->k:Loyd;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_12
    iput-object v1, v0, Lmwy;->c:Lhco;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_13
    const-string v2, "CountdownHandler"

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

    nop

    :goto_14
    move-object v1, p5

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

    :goto_15
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

    :goto_16
    move-object/from16 v1, p12

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

    :goto_17
    iput-object v1, v0, Lmwy;->s:Loyd;

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v1, p15

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v1, v0, Lmwy;->t:Landroid/content/Context;

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

    :goto_1c
    iput-object v1, v0, Lmwy;->j:Lmmx;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    iput-object v1, v0, Lmwy;->e:Loyd;

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

    :goto_20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_27

    nop

    nop

    :goto_21
    move-object v1, p7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1, p0, p6, v2}, Lmiv;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

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

    :goto_24
    iput-object v1, v0, Lmwy;->n:Lrss;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_25
    sget-object v1, Llyr;->v:Llzh;

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

    :goto_26
    iput-object v1, v0, Lmwy;->q:Lhoh;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_27
    sget-object v1, Lrsa;->a:Lrsa;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    iput-object v1, v0, Lmwy;->g:Lrss;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_2a
    iput-object v1, v0, Lmwy;->r:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1, v2}, Lolx;->bj(Lows;Ljava/lang/String;)Landroid/os/Handler;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p8, v1}, Llyv;->a(Llyp;)Loyn;

    move-result-object v1

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

    :goto_2d
    iput-object v1, v0, Lmwy;->f:Loyn;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2e
    goto/32 :goto_1e

    nop

    nop

    :goto_2f
    goto/32 :goto_3f

    nop

    nop

    :goto_30
    const-string v2, "accessibility"

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

    :goto_31
    iput-object v1, v0, Lmwy;->v:Lhut;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_32
    invoke-virtual {p6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_33
    move-object v3, p6

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_34
    invoke-virtual {p9, v1}, Lowu;->c(Ljava/lang/Runnable;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_35
    move-object/from16 v1, p19

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

    :goto_36
    move-object v1, p4

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

    :goto_37
    move-object v1, p10

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_38
    iput-object v1, v0, Lmwy;->i:Lmmw;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_39
    move-object/from16 v1, p16

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v1, Lmiv;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move-object/from16 v1, p17

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

    :goto_3c
    move-object/from16 v1, p18

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object/from16 v1, p14

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_3e
    iput-object v1, v0, Lmwy;->l:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3f
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmwy;->l:Loyn;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2
    iget-object v3, v0, Lmxe;->d:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3
    check-cast v0, Lgjw;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

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

    :goto_5
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget v3, v0, Lmxe;->b:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lgjw;->B()Z

    move-result v3

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
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_34

    nop

    nop

    :goto_a
    invoke-virtual {v0, v2, v2}, Lgjw;->h(ZZ)V

    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/4 v2, 0x1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lgjw;->A()Z

    move-result v3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_10
    iget-object v0, p0, Lmwy;->g:Lrss;

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

    :goto_11
    iget v3, v0, Lgjw;->D:I

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

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v3, v2, :cond_3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_14
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_15
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_19
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1, v2}, Lgjw;->n(ZZ)V

    :goto_1b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lmwy;->p:Lpin;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1e
    const/4 v4, 0x7

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

    :goto_1f
    iput-boolean v1, v0, Lgjw;->y:Z

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

    :goto_20
    iput v1, v0, Lmxe;->b:I

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

    :goto_21
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_23
    if-gtz v3, :cond_5

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmwy;->d:Lhvp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_26
    invoke-virtual {v0, v2, v2}, Lgjw;->n(ZZ)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lmwy;->g:Lrss;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, v1, v0, v2, v2}, Lmwy;->e(ZLpin;ZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1b

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1a

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lhvp;->h()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    :goto_2f
    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    goto/32 :goto_3b

    nop

    nop

    :goto_30
    return-void

    nop

    :goto_31
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lmwy;->m:Lmxe;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x4

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Lgjw;->g()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Lgjw;->A()Z

    move-result v3

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

    :goto_36
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lmwy;->r:Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lmwy;->d()Z

    move-result p0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v3, v0, Lmxe;->e:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3d
    if-ne v3, v4, :cond_8

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final b(ZIZZ)V
    .locals 7

    goto/32 :goto_14

    nop

    nop

    :goto_0
    int-to-long p1, p2

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
    invoke-virtual {p0, v6, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct/range {v0 .. v5}, Lmod;-><init>(Ljava/lang/Object;ZZZI)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    move v2, p1

    nop

    nop

    goto/32 :goto_11

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

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    new-instance v6, Lmod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    move-object v0, v6

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_b
    move v4, p4

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

    :goto_c
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v1, 0x16

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

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lmwy;->r:Landroid/os/Handler;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    move v3, p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_14
    const v0, 0x1b

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
.end method

.method public final c(I)V
    .locals 4

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lmxe;->b()V

    goto/32 :goto_3b

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Lggo;->a()Lrss;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lmwy;->d()Z

    move-result p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3
    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0, v1, p1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, v0, Ljhy;->k:Lggo;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    invoke-virtual {v0}, Lggo;->a()Lrss;

    move-result-object v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmwy;->m:Lmxe;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0}, Lkml;->h()Lpik;

    move-result-object v0

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

    :goto_c
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x1

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_e
    invoke-static {v0}, Lrss;->i(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    cmpl-float v1, v1, v3

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

    :goto_10
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lggo;->A()Z

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lmwy;->n:Lrss;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_16
    iput-object v0, p0, Lmwy;->n:Lrss;

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v0, Lmxe;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p1, p0, Lmwy;->l:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    const-string v2, "animator_duration_scale"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1d
    iput p1, v0, Lmxe;->c:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lrss;->c()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_20
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    :goto_21
    const-string v1, "Invalid input for countdown timer: %d seconds"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_37

    nop

    :goto_23
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v0, Lkml;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2e

    nop

    nop

    :goto_27
    goto/16 :goto_17

    nop

    nop

    :goto_28
    goto/32 :goto_3

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2b
    move v1, v2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    iget-object v1, v0, Lmxe;->e:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2e
    const/4 v1, 0x0

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {p1, p0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lmwy;->u:Ljhy;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lmwy;->t:Landroid/content/Context;

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

    :goto_33
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_35
    const/16 v1, 0x12a4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v2, p1}, Lmxe;->a(ZI)V

    :goto_37
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_38
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3a
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_3b
    iput-boolean v1, v0, Lmxe;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3c
    const v1, 0x1a

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

    :goto_3d
    invoke-virtual {v1}, Lrss;->h()Z

    move-result v1

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

    :goto_3e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3f
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmwy;->m:Lmxe;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-gtz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lmxe;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    return p0

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final e(ZLpin;ZZ)V
    .locals 8

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

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

    :goto_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_37

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lmmx;->e()Lmmw;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lrss;->h()Z

    move-result v0

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_a
    check-cast p0, Lscz;

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

    :goto_b
    iget-object v0, p0, Lmwy;->p:Lpin;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, p2, p0}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {}, Lmhz;->q()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_11
    const-string p2, "Countdown set torch failed: %s"

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v0, Ljava/lang/Boolean;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_4

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1b
    const-string p1, "Unsupported to set torch on for countdown request"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v0, p0, Lmwy;->j:Lmmx;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lmwy;->q:Lhoh;

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_21
    sget-object p0, Lmwy;->a:Lsdb;

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

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_21

    nop

    nop

    :goto_24
    iget-object v0, p0, Lmwy;->f:Loyn;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/16 p2, 0x129a

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

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

    :goto_27
    return-void

    nop

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

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lmwy;->n:Lrss;

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

    :goto_29
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Lhco;->j()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2b
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 p1, 0x1299

    nop

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

    nop

    :goto_2e
    iget-object v1, p0, Lmwy;->i:Lmmw;

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

    :goto_2f
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    :goto_30
    if-eqz v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v0, p0, Lmwy;->e:Loyd;

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

    nop

    :goto_32
    invoke-virtual {v0, v1}, Lmmw;->a(Lmmw;)Z

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

    :goto_33
    sget-object v1, Lhmq;->br:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    sget-object p1, Lmwy;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1, p0}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_37
    iget-object v0, p0, Lmwy;->c:Lhco;

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_38
    check-cast p1, Lscz;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    :try_start_0
    invoke-virtual {p2}, Lpin;->k()Lqgk;

    move-result-object v0

    nop

    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lnyn;->d:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    new-instance v4, Lpha;

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, v3}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Lnyn;->b:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    iget-object v4, p0, Lmwy;->w:Lmhz;

    nop

    nop

    nop

    iget-object v5, v4, Lmhz;->a:Ljava/lang/Object;

    nop

    check-cast v5, Lprb;

    nop

    nop

    nop

    invoke-virtual {v5}, Lprb;->k()Z

    move-result v5

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    if-nez v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Lprb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v4, v4, Lprb;->f:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_9

    nop

    nop

    nop

    goto :goto_3b

    nop

    :cond_9
    move v4, v6

    nop

    nop

    nop

    goto :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    :goto_3b
    move v4, v7

    nop

    nop

    nop

    :goto_3c
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    new-instance v5, Lpha;

    nop

    invoke-direct {v5, v2, v4}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-object v2, Landroid/hardware/camera2/CaptureRequest;->FLASH_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    if-eq v7, p1, :cond_b

    nop

    nop

    nop

    goto :goto_3d

    nop

    nop

    nop

    nop

    :cond_b
    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    new-instance v4, Lpha;

    nop

    invoke-direct {v4, v2, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    nop

    sget-object v2, Lnyn;->s:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    new-instance v4, Lpha;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v2, p1}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmwy;->v:Lhut;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lhut;->c:Loyn;

    nop

    check-cast p1, Loxv;

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    if-nez p1, :cond_c

    nop

    nop

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    new-instance v2, Lpha;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p1, v3}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_c
    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AWB_LOCK:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    new-instance v2, Lpha;

    nop

    nop

    invoke-direct {v2, p1, v3}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lmwy;->s:Loyd;

    nop

    nop

    check-cast p1, Loxv;

    nop

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/lang/String;

    nop

    nop

    sget-object v2, Lkvu;->b:Lkvu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v2}, Lkvu;->a(Ljava/lang/String;Lkvu;)Lkvu;

    move-result-object p1

    nop

    nop

    nop

    nop

    sget-object v2, Lkvu;->c:Lkvu;

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Lkvu;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_e

    nop

    iget-object p1, p0, Lmwy;->v:Lhut;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lhut;->d:Loyn;

    nop

    nop

    check-cast p1, Loxv;

    nop

    iget-object p1, p1, Loxv;->d:Ljava/lang/Object;

    nop

    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    if-eqz p1, :cond_e

    nop

    sget-object p1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    if-eq v7, p4, :cond_d

    nop

    goto :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_d
    const/4 v7, 0x3

    nop

    nop

    :goto_3e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    nop

    nop

    nop

    new-instance v2, Lpha;

    nop

    invoke-direct {v2, p1, p4}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_e
    invoke-virtual {v0, v1}, Lqgk;->f(Ljava/util/Set;)V

    invoke-virtual {v0}, Lqgk;->b()Lphz;

    move-result-object p1

    nop

    nop

    invoke-virtual {p2, p1}, Lpin;->f(Lphz;)V

    if-eqz p3, :cond_f

    nop

    invoke-virtual {p2}, Lpin;->close()V

    const/4 p1, 0x0

    nop

    nop

    nop

    iput-object p1, p0, Lmwy;->p:Lpin;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_f
    goto/32 :goto_27

    nop

    nop

    :goto_3f
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
