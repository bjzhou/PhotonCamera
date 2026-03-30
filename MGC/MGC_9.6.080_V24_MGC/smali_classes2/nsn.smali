.class public final Lnsn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field static final a:F

.field public static b:Z


# instance fields
.field public final c:Landroid/view/GestureDetector;

.field public final d:Landroid/view/ScaleGestureDetector;

.field public final e:Lnsh;

.field public final f:Lnsj;

.field public final g:Lrvg;

.field public final h:Loyd;

.field public final i:Landroid/view/View;

.field public j:Z

.field public k:Z

.field public l:F

.field public m:F

.field public n:I

.field public final o:Ljdb;

.field public p:I

.field public final q:Lnmo;

.field public final r:Lnmp;

.field public final s:Lnmn;

.field public final t:Lhoh;

.field public final u:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private final v:Landroid/view/GestureDetector$OnGestureListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput v0, Lnsn;->a:F

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
    const/high16 v0, 0x42a00000    # 80.0f

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_4
    sput-boolean v0, Lnsn;->b:Z

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

    :goto_5
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    int-to-float v0, v0

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
.end method

.method public constructor <init>(Loiq;Lnmo;Lnmp;Lnsh;Lnsj;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Lnmn;Landroidx/wear/ambient/AmbientMode$AmbientController;Loyd;Landroid/view/View;Landroid/content/Context;Lhoh;)V
    .locals 8

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {v4, v5, v3, v6}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v6, Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v3, 0x7f14057f

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

    :goto_3
    invoke-direct {v4, p0}, Lnsm;-><init>(Lnsn;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

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

    :goto_5
    iput-object v1, v0, Lnsn;->g:Lrvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_6
    iput-object v4, v0, Lnsn;->o:Ljdb;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    move-object v1, p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

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

    :goto_9
    iput-object v1, v0, Lnsn;->i:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

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

    :goto_b
    iput-object v1, v0, Lnsn;->u:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v1, v0, Lnsn;->q:Lnmo;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_11
    move-object v0, p0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_12
    new-instance v4, Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_13
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

    nop

    :goto_14
    invoke-virtual/range {p11 .. p11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v1, Loiq;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_16
    iput-object v1, v0, Lnsn;->s:Lnmn;

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

    :goto_17
    invoke-direct {v3, p0, p6, p4}, Lnsk;-><init>(Lnsn;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Lnsh;)V

    goto/32 :goto_2d

    nop

    nop

    :goto_18
    const v5, 0x7f14057e

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_19
    sget-object v3, Lnse;->b:Lnse;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v5, v1, Loiq;->a:Ljava/lang/Object;

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

    :goto_1b
    iput-object v3, v0, Lnsn;->v:Landroid/view/GestureDetector$OnGestureListener;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    move-object p3, v3

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1d
    goto/32 :goto_4b

    nop

    :goto_1e
    move-object p6, v6

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1f
    new-instance v4, Lnsm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    iput-object v1, v0, Lnsn;->f:Lnsj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_21
    move-object v1, p3

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iput-object v1, v0, Lnsn;->t:Lhoh;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v1, v0, Lnsn;->r:Lnmp;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4a

    nop

    :goto_27
    move-object/from16 v1, p9

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    move-object v1, p5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v3, p0}, Lnsl;-><init>(Lnsn;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    move-object p2, v2

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

    :goto_2c
    move-object p5, v5

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    new-instance v4, Landroid/view/ScaleGestureDetector;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    iput-object v1, v0, Lnsn;->h:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_2f
    iget-object v6, v1, Loiq;->b:Ljava/lang/Object;

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

    :goto_30
    iput-object v4, v0, Lnsn;->d:Landroid/view/ScaleGestureDetector;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_31
    move-object/from16 v1, p12

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_32
    move-object p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_33
    invoke-virtual {v4, v1}, Landroid/view/ScaleGestureDetector;->setQuickScaleEnabled(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move-object v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_35
    invoke-static/range {p1 .. p6}, Lrxo;->b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lrxo;

    move-result-object v1

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

    :goto_36
    move-object/from16 v1, p8

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x0

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

    :goto_38
    check-cast v1, Landroid/os/Handler;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_39
    check-cast v5, Landroid/content/Context;

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

    :goto_3a
    iput-object v4, v0, Lnsn;->c:Landroid/view/GestureDetector;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_3b
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_3c
    move-object v1, p7

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v5, Lnse;->c:Lnse;

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

    :goto_3e
    move-object/from16 v1, p10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, p4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_40
    new-instance v3, Lnsl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_41
    const v1, 0x4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_42
    check-cast v5, Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_43
    new-instance v3, Lnsk;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_44
    invoke-direct {v4, v5, v3, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;Landroid/os/Handler;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iput v1, v0, Lnsn;->p:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    sget-object v1, Lnse;->a:Lnse;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v5, v1, Loiq;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_11

    nop

    nop

    :goto_4c
    iput-object v2, v0, Lnsn;->e:Lnsh;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v7, 0x7f14057d

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

    :goto_4e
    move-object p4, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    sput-boolean v0, Lnsn;->b:Z

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

.method public static c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    sput-boolean v0, Lnsn;->b:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static d(F)Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    cmpl-float p0, p0, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->abs(F)F

    move-result p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    if-gtz p0, :cond_0

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

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    sget v0, Lnsn;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lnsg;
    .locals 2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lnsg;->x:Lnsg;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 v0, 0x2

    nop

    goto/32 :goto_14

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

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_f
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lnsn;->q:Lnmo;

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

    :goto_11
    iget-object p0, p0, Lnsn;->r:Lnmp;

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

    :goto_12
    goto/32 :goto_a

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    if-ne v1, v0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_15
    const v0, 0xc

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_18
    if-ne v1, v0, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    :goto_19
    add-int/lit8 v1, v0, -0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lnsn;->p:I

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop
.end method
