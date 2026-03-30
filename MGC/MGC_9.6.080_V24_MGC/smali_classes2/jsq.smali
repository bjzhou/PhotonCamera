.class public Ljsq;
.super Ljsg;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Loyn;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Lebf;

.field public e:Landroid/view/View;

.field public f:Lnkn;

.field public h:Lows;

.field public i:Z

.field public j:Landroidx/compose/ui/platform/ComposeView;

.field public k:Ljava/lang/Float;

.field public final l:Ljava/lang/Runnable;

.field public final m:Lmjv;

.field public final n:Lhwy;

.field private final o:Lowu;

.field private final p:Loyd;

.field private final q:Loyd;

.field private final r:Loyd;

.field private final s:Loyd;

.field private t:Lows;

.field private final u:Lfwv;

.field private final v:Lhoh;


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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    const-string v0, "jsq"

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
    return-void

    nop

    :goto_3
    sput-object v0, Ljsq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public constructor <init>(Lhwy;Loyd;Lfwv;Lhoh;Loyn;Lowu;Lmjv;Loyd;Llyv;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljsq;->l:Ljava/lang/Runnable;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Ljsq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Ljsq;->r:Loyd;

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

    :goto_4
    iput-object p5, p0, Ljsq;->b:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    const/4 p3, 0x3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p6, p0, Ljsq;->o:Lowu;

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

    :goto_7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_8
    iput-object p3, p0, Ljsq;->u:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v2}, Lebf;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lebf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_b
    iput-object p4, p0, Ljsq;->v:Lhoh;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iput-object p1, p0, Ljsq;->n:Lhwy;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_e
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

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
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p2, p3}, Ljrq;-><init>(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p9, p2}, Llyv;->a(Llyp;)Loyn;

    move-result-object p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Ljsq;->p:Loyd;

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

    :goto_15
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    :goto_16
    iput-object v0, p0, Ljsq;->d:Lebf;

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

    :goto_17
    new-instance v0, Ljsp;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1d

    nop

    :goto_19
    new-instance p2, Ljrq;

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

    :goto_1a
    invoke-static {p1, p2}, Loyi;->h(Loyd;Lrsk;)Loyd;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1b
    iput-object p8, p0, Ljsq;->s:Loyd;

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

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1e

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0, p0, v1}, Ljsp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p2, p0, Ljsq;->q:Loyd;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0}, Ljsg;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_23
    iget-object p1, p1, Lhwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    iput-object p7, p0, Ljsq;->m:Lmjv;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_26
    sget-object p2, Llyr;->aU:Llze;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(Landroid/view/View;)Lpci;
    .locals 17

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_1
    iput-object v2, v0, Ljsq;->h:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    const/high16 v10, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Lhwy;->p(Lfwv;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v14, v2, v6, v7, v1}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6
    const v9, 0x7f08032b

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

    :goto_7
    const/16 v16, 0x28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    invoke-direct {v2, v0, v1}, Ljsh;-><init>(Ljsg;I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    invoke-direct {v1, v0, v2}, Ljso;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    const/16 v16, 0x24

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_b
    invoke-direct/range {v6 .. v15}, Lnkm;-><init>(ILjava/util/Set;FFZILjava/util/List;Lnkl;Lnkl;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v7, Landroid/util/Size;

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

    :goto_d
    const/16 v9, 0xc

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

    :goto_e
    const/16 v7, 0x29

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v2, 0x0

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

    :goto_10
    const v2, 0x7f060b82

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    const v4, 0x7f070a4c

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_12
    new-instance v7, Landroid/util/Size;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v8, 0x5

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_15
    const v7, 0x7f1400a6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    const/16 v10, 0x10

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

    :goto_17
    invoke-direct {v3, v5, v2, v6}, Lnkn;-><init>(Landroidx/compose/ui/platform/ComposeView;Lnkm;Lnkk;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    const/4 v12, 0x3

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

    :goto_1a
    move-object/from16 v1, p1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v1, Ljso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1e
    new-instance v15, Lnkm;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v6, v9, v4, v7, v8}, Lnkk;-><init>(ILjava/lang/String;Luaz;Lebf;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_20
    return-object v1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    new-instance v2, Lows;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v5, v0, Ljsq;->j:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v7, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

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

    nop

    :goto_26
    int-to-float v9, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v4, Lnkl;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Ljsq;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_29
    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v2}, Lnkn;->c(Lnlk;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2b
    throw v0

    nop

    :goto_2c
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Landroidx/wear/widget/xrA/fuyPMnCeXU;->dNFXknJJ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_2e
    const v2, 0x7f08024d

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_30
    iput-object v1, v0, Ljsq;->e:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    const v2, 0x7f060b81

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_32
    move-object v15, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_33
    sget v1, Lryb;->d:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

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

    :goto_36
    new-instance v2, Ljsh;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_38
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_39
    const/16 v11, 0x14

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

    :goto_3a
    invoke-direct {v2}, Lows;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v2, v0, Ljsq;->u:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3c
    filled-new-array {v12, v13, v14, v4, v1}, [Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_3e
    iget-object v8, v0, Ljsq;->d:Lebf;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3f
    iget-object v1, v0, Ljsq;->n:Lhwy;

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

    :goto_40
    const/16 v8, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_41
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_42
    const v6, 0x7f1402a2

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

    nop

    :goto_43
    iget-object v1, v0, Ljsq;->e:Landroid/view/View;

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

    :goto_44
    const v0, 0x5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/16 v13, 0x1c

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_47
    move-object v2, v15

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_49
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_4a
    const/16 v16, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_4b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_4c
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_4d
    new-instance v6, Lnkk;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_50
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_52
    const v1, 0x7f070728

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_53
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_55
    sget-object v13, Lsbh;->a:Lryb;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v3, Lnkn;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_58
    iput-object v3, v0, Ljsg;->g:Lnkn;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_59
    const v6, 0x7f140177

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_5a
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

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

    nop

    :goto_5b
    invoke-static/range {v6 .. v12}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v8

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    :goto_5e
    invoke-virtual {v1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

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

    :goto_61
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_62
    new-instance v7, Lhbt;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_63
    move-object v6, v15

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

    :goto_64
    invoke-direct {v7, v0, v8}, Lhbt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const v2, 0x7f08024e

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_66
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_53

    nop

    :goto_67
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

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

    :goto_6a
    const/4 v11, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6b
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

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

    :goto_6d
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_6e
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6f
    new-instance v14, Lnkl;

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

    :goto_70
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const v3, 0x7f0b057a

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_72
    iput-object v3, v0, Ljsq;->f:Lnkn;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/16 v12, 0x18

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v4, v2, v6, v7, v1}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v7, v2, v2}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast v3, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_77
    iget-object v1, v0, Ljsq;->e:Landroid/view/View;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_78
    iput-object v3, v0, Ljsq;->j:Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e()V
    .locals 1

    goto/32 :goto_4

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ljsq;->t:Lows;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-virtual {v0}, Lows;->close()V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    iput-object v0, p0, Ljsq;->t:Lows;

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    iput-object v1, v0, Ljry;->f:Lj$/util/Optional;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ljsq;->n:Lhwy;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    iget-object p0, p0, Ljsq;->b:Loyn;

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
    invoke-virtual {p0, v0}, Ljsq;->h(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v1, 0x0

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

    :goto_c
    check-cast v0, Ljry;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Lhwy;->o(F)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v0}, Lhwy;->n(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Ljsq;->n:Lhwy;

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

    :goto_14
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_16
    const v1, 0x19

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
.end method

.method public final declared-synchronized g()V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Ljsq;->t:Lows;

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

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

    :goto_3
    :try_start_1
    iget-object v0, p0, Ljsq;->h:Lows;

    nop

    nop

    invoke-virtual {v0}, Lows;->c()Lows;

    move-result-object v0

    nop

    nop

    nop

    iput-object v0, p0, Ljsq;->t:Lows;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljsq;->p:Loyd;

    nop

    nop

    nop

    nop

    nop

    new-instance v2, Ljrt;

    nop

    nop

    nop

    const/16 v3, 0x9

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Ljrt;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Ljsq;->o:Lowu;

    nop

    nop

    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v0, p0, Ljsq;->t:Lows;

    nop

    nop

    nop

    new-instance v1, Ljso;

    nop

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    invoke-direct {v1, p0, v2}, Ljso;-><init>(Ljava/lang/Object;I)V

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    iget-object v0, p0, Ljsq;->r:Loyd;

    nop

    nop

    nop

    nop

    check-cast v0, Loxv;

    nop

    nop

    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    iget-object v0, p0, Ljsq;->s:Loyd;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Ljrz;

    nop

    nop

    iget-object v0, v0, Ljrz;->f:Lj$/util/Optional;

    nop

    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0}, Ljsq;->h(Z)V

    :cond_0
    iget-object v0, p0, Ljsq;->v:Lhoh;

    nop

    nop

    sget-object v1, Lhny;->b:Lhmn;

    nop

    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    iget-object v0, p0, Ljsq;->t:Lows;

    nop

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Ljsq;->q:Loyd;

    nop

    nop

    new-instance v2, Ljrt;

    nop

    const/16 v3, 0xa

    nop

    nop

    nop

    invoke-direct {v2, p0, v3}, Ljrt;-><init>(Ljava/lang/Object;I)V

    iget-object v3, p0, Ljsq;->o:Lowu;

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v3}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lows;->d(Lpci;)V

    :cond_1
    iget-object v0, p0, Ljsq;->e:Landroid/view/View;

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xc

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

    :goto_5
    monitor-exit p0

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

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    goto/32 :goto_e

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw v0

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0x1a

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_d

    nop

    nop
.end method

.method public final h(Z)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iget-object p0, p0, Ljsq;->d:Lebf;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
