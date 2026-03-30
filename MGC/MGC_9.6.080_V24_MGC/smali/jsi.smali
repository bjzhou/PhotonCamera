.class public Ljsi;
.super Ljsg;
.source "PG"

# interfaces
.implements Llna;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final c:Lebf;

.field public final d:Ljsj;

.field public final e:Loyn;

.field public final f:Loyn;

.field public final h:Loyn;

.field public final i:Ljsf;

.field public final j:Loyd;

.field public final k:Loyn;

.field public l:F

.field public m:Lows;

.field public final n:Lfwv;

.field public final o:Lmjv;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private final r:Llfr;

.field private final s:Lowu;

.field private t:Z

.field private u:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "jsi"

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

    :goto_3
    sput-object v0, Ljsi;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lhwy;Ljsj;Llfr;Loyn;Lowu;Loyd;Ljsf;Lfwv;Lmjv;)V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

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

    :goto_1
    iput-object p7, p0, Ljsi;->i:Ljsf;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p6, p0, Ljsi;->j:Loyd;

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

    :goto_3
    iput-object p8, p0, Ljsi;->n:Lfwv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lebf;

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

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Ljsi;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_9
    iput-object p4, p0, Ljsi;->k:Loyn;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    iput-object p2, p0, Ljsi;->f:Loyn;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    iput-object p9, p0, Ljsi;->o:Lmjv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    iput-boolean v0, p0, Ljsi;->t:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p3, p0, Ljsi;->r:Llfr;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p5, p0, Ljsi;->s:Lowu;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, v2}, Lebf;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    iget-object p2, p1, Lhwy;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Ljsi;->l:F

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

    nop

    nop

    :goto_1a
    iget-object p1, p1, Lhwy;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1b
    const/4 v0, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    iget-object p2, p1, Lhwy;->b:Ljava/lang/Object;

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

    :goto_1e
    invoke-direct {p0}, Ljsg;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Ljsi;->h:Loyn;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p2, p0, Ljsi;->d:Ljsj;

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

    :goto_21
    iput-object v0, p0, Ljsi;->c:Lebf;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_22
    iput-object p2, p0, Ljsi;->e:Loyn;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    const/high16 v0, -0x40800000    # -1.0f

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

    :goto_24
    iput-object v0, p0, Ljsi;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    goto/32 :goto_24

    nop

    nop
.end method

.method public static h(F)F
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    invoke-static {p0, v0, v1}, Lrrf;->V(FFF)F

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    :goto_c
    const v1, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public final d(Landroid/view/View;)Lpci;
    .locals 19

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v16, 0x24

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v14, Lnkl;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_3
    invoke-interface {v2, v3, v4}, Loyd;->cL(Lpcm;Ljava/util/concurrent/Executor;)Lpci;

    move-result-object v2

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

    :goto_4
    const/16 v6, 0x29

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    iget-object v2, v0, Ljsi;->h:Loyn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    new-instance v1, Ljsh;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    invoke-static {v4}, Lnzk;->v(Landroid/view/View;)I

    move-result v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p1

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

    nop

    nop

    :goto_a
    invoke-virtual {v3, v1}, Lnkn;->c(Lnlk;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    iget-object v4, v0, Ljsi;->s:Lowu;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const v4, 0x7f070728

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

    :goto_d
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v2}, Loxz;->a(Loyd;)Loyd;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_f
    invoke-direct {v3, v0, v4}, Ljrt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move-object/from16 v2, v18

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

    nop

    :goto_11
    const v7, 0x7f080325

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v5

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

    :goto_14
    new-instance v3, Lnkn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_15
    invoke-direct {v6, v4, v4}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v11, 0x18

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_17
    const/4 v10, 0x0

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

    :goto_18
    iget-object v1, v0, Ljsi;->d:Ljsj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_19
    const/16 v12, 0x1c

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_1a
    new-instance v1, Ljdw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v7, 0x8

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

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

    :goto_1e
    new-instance v9, Landroid/util/Size;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, v0, Ljsi;->p:Landroid/view/View;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_20
    move/from16 v16, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_21
    const v1, 0x1f

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_36

    nop

    :goto_24
    invoke-virtual/range {p0 .. p0}, Ljsi;->e()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v4, 0x7f0700db

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    iget-object v5, v0, Ljsi;->p:Landroid/view/View;

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

    :goto_27
    move-object/from16 v18, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v0, Ljsi;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, v0, Ljsi;->m:Lows;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2c
    const v10, 0x7f080209

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v13, v10, v6, v9, v5}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_43

    nop

    nop

    :goto_2e
    invoke-direct {v3, v1, v2, v4}, Lnkn;-><init>(Landroidx/compose/ui/platform/ComposeView;Lnkm;Lnkk;)V

    goto/32 :goto_61

    nop

    nop

    :goto_2f
    invoke-direct {v9, v5, v5}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_31
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const v5, 0x7f14029a

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

    :goto_33
    invoke-direct/range {v5 .. v17}, Lnkm;-><init>(ILjava/util/Set;FFZILjava/util/List;Lnkl;Lnkl;ZILubk;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_34
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_35
    const/16 v10, 0x14

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v2, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v5}, Lnzk;->v(Landroid/view/View;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v17, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3b
    const v3, 0x7f0b016e

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

    :goto_3c
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move-object v5, v15

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

    nop

    :goto_3e
    sget v4, Lryb;->d:I

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v1, v2}, Lows;->d(Lpci;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2, v4, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v2

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v5, 0x7f140096

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_43
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_44
    return-object v1

    nop

    nop

    :goto_45
    goto/32 :goto_66

    nop

    nop

    :goto_46
    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_47
    const v5, 0x7f0b00c1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    new-instance v15, Lnkm;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_49
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/high16 v9, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v11, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_4c
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v2}, Lows;-><init>()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v1, "Cannot bind multiple times."

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4f
    invoke-direct {v1, v0, v2}, Ljdw;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_50
    move-object/from16 v0, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iput-object v1, v0, Ljsi;->p:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_52
    new-instance v3, Ljrt;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_53
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_54
    const/16 v16, 0x28

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_55
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_56
    invoke-direct {v14, v9, v5, v6, v4}, Lnkl;-><init>(ILjava/lang/String;Landroid/util/Size;I)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_57
    const v6, 0x7f14016f

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_58
    new-instance v4, Lhdv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_59
    filled-new-array {v11, v12, v13, v14, v4}, [Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v4, v2, v5}, Lhdv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const/16 v13, 0x20

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

    :goto_5c
    new-instance v4, Lnkk;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5d
    const v9, 0x7f08020b

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5e
    throw v0

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_12

    nop

    nop

    :goto_60
    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_61
    iput-object v3, v0, Ljsg;->g:Lnkn;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_62
    iput-object v2, v0, Ljsi;->m:Lows;

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_63
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

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

    nop

    nop

    :goto_64
    const/16 v17, 0x1

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

    :goto_65
    invoke-direct {v1, v0, v2}, Ljsh;-><init>(Ljsg;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_66
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_67
    invoke-direct {v4, v7, v2, v5, v6}, Lnkk;-><init>(ILjava/lang/String;Luaz;Lebf;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_68
    check-cast v1, Landroidx/compose/ui/platform/ComposeView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_69
    iget-object v6, v0, Ljsi;->c:Lebf;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6a
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_6b
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

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

    :goto_6d
    invoke-static/range {v5 .. v11}, Lryy;->K(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;[Ljava/lang/Object;)Lryy;

    move-result-object v7

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-interface {v1}, Ljsj;->a()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const/16 v9, 0x10

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_70
    invoke-direct {v5, v0, v6}, Lhbt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_71
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_73
    int-to-float v8, v4

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_74
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    new-instance v6, Landroid/util/Size;

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

    :goto_76
    const/16 v8, 0xc

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v13, Lnkl;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_79
    const/4 v6, 0x2

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

    :goto_7a
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_7b
    const/16 v2, 0x12

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_7c
    move/from16 v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7d
    new-instance v5, Lhbt;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iput-object v2, v0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_7f
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

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

    :goto_80
    new-instance v2, Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_81
    sget-object v12, Lsbh;->a:Lryb;

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

    nop

    :goto_82
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop
.end method

.method public final e()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iget-object v0, p0, Ljsi;->p:Landroid/view/View;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Ljsi;->u:Z

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

    :goto_3
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

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
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

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

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_c
    goto/32 :goto_d

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
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljsi;->h:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    const/high16 v1, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    iget-object v0, p0, Ljsi;->r:Llfr;

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

    :goto_4
    const v1, 0x20

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_6
    invoke-interface {p0, v0}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

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

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    invoke-static {v1}, Ljsi;->h(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Lnkn;->h(Lnkn;F)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b
    const v0, 0x20

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

    :goto_c
    const/16 v1, 0xa1d

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

    :goto_d
    goto/32 :goto_16

    nop

    :goto_e
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Brightness slider not found"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljsi;->d:Ljsj;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    check-cast v0, Ljry;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Llfr;->h()V

    goto/32 :goto_2c

    nop

    nop

    :goto_15
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ljsi;->r:Llfr;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_d

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ljsi;->e:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Llfr;->f()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p0}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v0

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

    :goto_1e
    invoke-interface {v0, v1}, Ljsj;->b(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_20
    sget-object v0, Ljsi;->a:Lsdb;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Ljsg;->g:Lnkn;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_23
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    nop

    :goto_24
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_27
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_2a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Ljsi;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_2c
    iget-object p0, p0, Ljsi;->k:Loyn;

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

    nop

    :goto_2d
    goto :goto_2a

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object v1, v0, Ljry;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_30
    iput-object v1, v0, Ljry;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final g()V
    .locals 5

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2
    invoke-static {v2, v3, v4, v1}, Ljmo;->y(Landroid/view/View;IILjava/lang/String;)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Lowu;->a:Lowv;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    const/4 v4, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_5
    move v2, v4

    nop

    nop

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v1, p0, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljsi;->f()V

    :goto_9
    goto/32 :goto_15

    nop

    nop

    :goto_a
    iget-object v2, p0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_b
    iget-boolean v2, p0, Ljsi;->t:Z

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Ljsi;->j:Loyd;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v1, Ljrz;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

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

    nop

    :goto_11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_12
    if-ne v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v1, p0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Llfr;->e()Lsui;

    move-result-object v0

    nop

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

    :goto_1b
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Loxv;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move v3, v4

    nop

    nop

    :goto_1f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Ljava/lang/Float;

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

    :goto_21
    new-instance v1, Lgng;

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_22
    const v3, 0x7f1400bc

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_23
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_f

    nop

    nop

    :goto_24
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Ljsi;->r:Llfr;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v1}, Lj$/util/Optional;->isPresent()Z

    move-result v3

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2a
    check-cast v1, Ljava/lang/Float;

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

    :goto_2b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    :goto_2e
    iget-object v1, p0, Ljsi;->p:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput-object v2, p0, Ljsi;->q:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_32
    const v0, 0x10

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Llfr;->h()V

    goto/32 :goto_26

    nop

    nop

    :goto_34
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    :goto_35
    iget-boolean v0, p0, Ljsi;->t:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_36
    iget-object v0, p0, Ljsi;->e:Loyn;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_37
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_38
    if-ne v0, v2, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Ljsg;->g:Lnkn;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3a
    iput-boolean v0, p0, Ljsi;->u:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3b
    if-nez v3, :cond_6

    nop

    goto/32 :goto_45

    nop

    :cond_6
    goto/32 :goto_27

    nop

    nop

    :goto_3c
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3d
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_7
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3e
    const v4, 0x7f1400c1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3f
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-static {v1}, Ljsi;->h(F)F

    move-result v1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_41
    cmpl-float v0, v0, v1

    nop

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

    :goto_42
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_8

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_8
    goto/32 :goto_36

    nop

    nop

    :goto_44
    invoke-static {v2, v1}, Lnkn;->h(Lnkn;F)V

    :goto_45
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_46
    const v3, 0x7f1400c2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Ljsi;->r:Llfr;

    nop

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

    :goto_48
    iget-object v1, v1, Ljrz;->b:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/16 v3, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4a
    iget-boolean v2, p0, Ljsi;->t:Z

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_16

    nop

    :goto_4c
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljsi;->g()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Ljsi;->t:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-boolean p1, p0, Ljsi;->u:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
