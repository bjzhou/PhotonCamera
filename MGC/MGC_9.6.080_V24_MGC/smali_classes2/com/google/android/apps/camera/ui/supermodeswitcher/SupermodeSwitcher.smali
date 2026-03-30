.class public final Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;
.super Lcwl;
.source "PG"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnbg;
.implements Ljpv;
.implements Ljpu;


# instance fields
.field public a:Lnhz;

.field public final b:Landroid/view/accessibility/AccessibilityManager;

.field private c:Z

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const v0, 0x1f

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v2, 0x0

    nop

    goto/32 :goto_6

    nop

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

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_9
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    :goto_b
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_d
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v4, 0x6

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

    :goto_f
    move-object v0, p0

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

    :goto_10
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V

    goto/32 :goto_4

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v3, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    move-object v0, p0

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

    :goto_5
    move-object v2, p2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

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

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_11
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_0
    check-cast p1, Ldt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-interface {p1}, Leal;->getDefaultViewModelProviderFactory()Lece;

    move-result-object p3

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
    invoke-static {p2, v1}, Lech;->a(Ljava/lang/Class;Lts;)Lecb;

    move-result-object p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->a:Lnhz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

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

    :goto_5
    invoke-direct {v1, p2, p3, v0}, Lts;-><init>(Lfdn;Lece;Lecm;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v1, Lts;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    const-string p2, "accessibility"

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    invoke-static {p1}, Ldvz;->i(Leci;)Lecm;

    move-result-object v0

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

    :goto_c
    const/4 p2, 0x5

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-interface {p1}, Leci;->getViewModelStore$ar$class_merging$ar$class_merging$ar$class_merging$ar$class_merging()Lfdn;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    const-class p2, Lnhz;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    new-instance p1, Lhuk;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_17
    const v1, 0x3

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

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto/32 :goto_8

    nop

    nop

    :goto_19
    check-cast p2, Lnhz;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p2}, Ldt;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    invoke-direct {p1, p0, p2}, Lhuk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1e
    invoke-direct {p0, p1, p2, p3}, Lcwl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-boolean p2, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_e

    nop

    nop

    :goto_22
    const v0, 0x20

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILucd;)V
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    and-int/lit8 p5, p4, 0x2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    and-int/lit8 p4, p4, 0x4

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

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p5, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-nez p4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lblm;I)V
    .locals 9

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, -0x417e1e81

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    new-instance v0, Lhkb;

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

    :goto_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lhjo;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    iput-object v0, p1, Lbpc;->d:Lubo;

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Lbpc;

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

    :goto_a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x19

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    const/high16 v7, 0x180000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const/4 v8, 0x4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    const v0, 0x3b68f7ee

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

    :goto_12
    invoke-interface {p1}, Lblm;->d()Lbqe;

    move-result-object p1

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

    :goto_13
    invoke-interface {p1, v0}, Lblm;->b(I)Lblm;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    :goto_16
    invoke-static {v1, v0, p1}, Lbvs;->e(ILjava/lang/Object;Lblm;)Lbvn;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    :goto_18
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    move-object v6, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    invoke-direct {v0, p0, p2, v8}, Lhkb;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    invoke-static/range {v1 .. v7}, Lfui;->a(Landroid/content/Context;ZZZLubo;Lblm;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, p0, v8}, Lhjo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final synthetic dI(Lnbh;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final dP(Lnbe;Lnbh;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->setVisibility(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    sget-object v1, Lnbe;->b:Lnbe;

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

    :goto_5
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_29

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-boolean p2, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->d:Z

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_a
    iget-boolean p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v2, p2, v0}, Lnzk;->aa(Lnbh;Lnbh;Z)Laed;

    move-result-object v0

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

    :goto_c
    const p1, 0x800015

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

    :goto_d
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const v1, 0x14

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

    :goto_f
    invoke-virtual {p1, p2}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 p1, 0x11

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

    :goto_11
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v1, Lnbe;->d:Lnbe;

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

    :goto_15
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->d:Z

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

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

    nop

    :goto_1b
    iget-object v1, p1, Lnhz;->c:Lebf;

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

    :goto_1c
    if-ne p1, v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_1d
    check-cast v2, Lnbh;

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

    :goto_1e
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->a:Lnhz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_20
    if-eq p1, v1, :cond_2

    nop

    goto/32 :goto_19

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 p1, 0x0

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

    :goto_24
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Lnhz;->b:Lebf;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_3

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_27
    invoke-virtual {v2}, Lebe;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_28
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_13

    nop

    nop

    :goto_2c
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v1, v0}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p1, Lnhz;->b:Lebf;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lnhz;->a:Lebf;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p1, Lnnf;

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

    :goto_2
    invoke-virtual {p0, p1, v0}, Lnhz;->l(Lnnf;Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_1

    nop

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
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->a:Lnhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Lebe;->a()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final setVisibility(I)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->d:Z

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

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x1

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

    :goto_5
    invoke-super {p0, p1}, Lcwl;->setVisibility(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, p0, Lcom/google/android/apps/camera/ui/supermodeswitcher/SupermodeSwitcher;->c:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method
