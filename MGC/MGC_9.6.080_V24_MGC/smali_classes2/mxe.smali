.class public Lmxe;
.super Lcom/google/android/apps/camera/ui/widget/TracedFrameLayout;
.source "PG"


# static fields
.field public static final a:Lsdb;


# instance fields
.field public b:I

.field public c:I

.field public final d:Landroid/os/Handler;

.field public final e:Landroid/view/ViewGroup;

.field public f:Z

.field public g:Lmwy;

.field private final h:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sput-object v0, Lmxe;->a:Lsdb;

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    const-string v0, "mxe"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lmxe;->setTag(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5
    const v2, 0x7f1501b8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_8
    iput v0, p0, Lmxe;->b:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x1

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

    :goto_a
    iput-object p1, p0, Lmxe;->e:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    new-instance v0, Lmxd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, p1, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    const/16 p1, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v0, p0, Lmxe;->f:Z

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

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

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lmxe;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    iput v0, p0, Lmxe;->c:I

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

    :goto_19
    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/widget/TracedFrameLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    const-string v0, "countdown"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lmxe;->addView(Landroid/view/View;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-static {v0}, Lnzk;->Y(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, p0}, Lmxd;-><init>(Lmxe;)V

    goto/32 :goto_15

    nop

    nop
.end method


# virtual methods
.method public final a(ZI)V
    .locals 6

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmxe;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Lgjw;->B()Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

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

    :goto_4
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0x12c

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

    :goto_7
    iget-object p0, p0, Lmxe;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_0
    goto/32 :goto_94

    nop

    nop

    :goto_9
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :goto_b
    goto/32 :goto_bb

    nop

    nop

    :goto_c
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, v0, Lmwy;->q:Lhoh;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, v0, Lmwy;->j:Lmmx;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v5, Llyi;->a:Llyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_11
    invoke-interface {p1, p2}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_86

    nop

    :goto_13
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_14
    if-nez p2, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v5}, Liem;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, v5}, Liem;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_18
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    :goto_1a
    goto/32 :goto_4b

    nop

    nop

    :goto_1b
    invoke-interface {p1}, Lmxc;->b()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    sget-object v5, Liem;->d:Liem;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_b3

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

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

    :goto_21
    const-string p2, "Should not fire Led indicator"

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

    :goto_22
    if-nez p1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_91

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_24
    const/16 p2, 0xc6

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    :goto_25
    if-nez v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_26
    if-eqz p2, :cond_6

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_6
    goto/32 :goto_b4

    nop

    nop

    :goto_27
    invoke-virtual {p1, v5}, Llyi;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_28
    sget-object p1, Lmwy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_29
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_6b

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v3, p1, v2, v3}, Lmwy;->b(ZIZZ)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v3, p1, v3, v3}, Lmwy;->b(ZIZZ)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_ba

    nop

    :goto_2e
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_2f
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_30
    move p1, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v5, v0, Lmwy;->o:Lmxc;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_32
    iget-object p1, v0, Lmwy;->g:Lrss;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Lmwy;->d()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_34
    if-nez p1, :cond_7

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {p1}, Lmxc;->dx()V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p1, Lieg;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_37
    move v4, p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_38
    iget-object p1, v0, Lmwy;->o:Lmxc;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3a
    iget-boolean p1, p0, Lmxe;->f:Z

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast p1, Lscz;

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

    :goto_3c
    if-eqz p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_7d

    nop

    nop

    :goto_3d
    iget-object p2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v5}, Lhoh;->p(Lhmn;)Z

    move-result p1

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

    :goto_41
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_42
    move p2, v3

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_37

    nop

    nop

    :goto_44
    iget-object p1, v0, Lmwy;->o:Lmxc;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_45
    check-cast p1, Lrsx;

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

    nop

    nop

    :goto_46
    invoke-virtual {p1, v2, v3}, Lgjw;->i(ZZ)V

    :goto_47
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Lscs;->b()Lsdo;

    move-result-object p1

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

    nop

    nop

    :goto_4a
    invoke-virtual {p1}, Lhco;->j()Z

    move-result p1

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_4b
    iget-object p1, v0, Lmwy;->l:Loyn;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4c
    if-gt p2, p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6

    nop

    nop

    :goto_4d
    iget-object p1, v0, Lmwy;->l:Loyn;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_4e
    sget-object v5, Liem;->h:Liem;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4f
    iget-object p1, v0, Lmwy;->g:Lrss;

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_50
    const/16 p2, 0x1297

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1, v5}, Lmmw;->a(Lmmw;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    :goto_52
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {}, Lmhz;->q()Z

    move-result p1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lmxe;->g:Lmwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_55
    check-cast p1, Lrsx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_56
    iget-object v4, v0, Lmwy;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p1, Lieg;

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_58
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p1, Lgjw;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez p1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object p1, v0, Lmwy;->g:Lrss;

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

    nop

    :goto_5c
    iget-object v4, v0, Lmwy;->b:Landroid/view/accessibility/AccessibilityManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p1}, Lgjw;->B()Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_5e
    add-int v0, v0, v1

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast p1, Ljava/lang/Boolean;

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

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_62
    move p2, v4

    nop

    nop

    :goto_63
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v5, :cond_b

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v4, :cond_c

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

    :cond_c
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_1a

    nop

    nop

    :goto_67
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast p1, Llyi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6b
    iget-object p1, v0, Lmwy;->n:Lrss;

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_6c
    iget-object p1, v0, Lmwy;->h:Lrss;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    check-cast p1, Lgjw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6e
    const-wide/16 p1, 0x3e8

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

    :goto_6f
    iget-object p1, v0, Lmwy;->n:Lrss;

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

    :goto_70
    iget-object p2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_71
    iget-object p2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eqz p1, :cond_d

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_d
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object p1, v0, Lmwy;->e:Loyd;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_75
    invoke-virtual {p2}, Lhvp;->h()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_76
    if-nez p1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_e
    goto/32 :goto_32

    nop

    nop

    :goto_77
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_79
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_7a
    if-eqz p2, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_f
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v4}, Lhvp;->g()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-gt p2, v2, :cond_10

    nop

    goto/32 :goto_a8

    nop

    :cond_10
    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_7d
    iget-object p1, v0, Lmwy;->h:Lrss;

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_7e
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7f
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {p0}, Lmxe;->c()V

    :goto_82
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_83
    const-string v0, "%d"

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_84
    iget-object v5, v0, Lmwy;->i:Lmmw;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iput-boolean v3, p1, Lgjw;->y:Z

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_bd

    nop

    :goto_87
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_88
    iput p2, p0, Lmxe;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v0}, Lmwy;->d()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8a
    invoke-interface {v5, p2}, Lmxc;->c(I)V

    :goto_8b
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0, v2, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

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

    :goto_8e
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_8f
    const v0, 0xd

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iget-object p2, v0, Lmwy;->d:Lhvp;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_91
    iget-object p1, v0, Lmwy;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1}, Lieg;->a()Liem;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_94
    goto/16 :goto_67

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_96
    const/16 p1, 0x84

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_97
    if-le p2, v1, :cond_11

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    filled-new-array {p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_99
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

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

    :goto_9a
    if-eqz p1, :cond_12

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_af

    nop

    nop

    :goto_9b
    sget-object v5, Lhmq;->br:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9c
    if-eqz p1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_13
    goto/32 :goto_e

    nop

    nop

    :goto_9d
    if-eqz p2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_14
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v0, v2, p1, v3, v3}, Lmwy;->b(ZIZZ)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    iput-boolean v2, p1, Lgjw;->y:Z

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    if-nez p1, :cond_15

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object p1, p1, Lrsx;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v4

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_a4
    invoke-interface {p1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_a5
    if-nez p1, :cond_16

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/4 p1, 0x3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_a7
    check-cast p1, Lpik;

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p1}, Lpik;->u()Lpin;

    move-result-object p1

    nop

    iput-object p1, v0, Lmwy;->p:Lpin;

    nop

    iget-object p1, v0, Lmwy;->p:Lpin;

    nop

    invoke-virtual {v0, v2, p1, v3, v3}, Lmwy;->e(ZLpin;ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lpfi; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :goto_a8
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v0, v3, p2, v2, p1}, Lmwy;->b(ZIZZ)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    if-nez p1, :cond_17

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_17
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_ac
    if-nez p1, :cond_18

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

    :cond_18
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p1}, Lieg;->a()Liem;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    if-nez p1, :cond_19

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget-object p1, v0, Lmwy;->k:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    if-nez p1, :cond_1a

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

    :cond_1a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iget-object p1, v0, Lmwy;->c:Lhco;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-interface {p1, p2}, Loyn;->a(Ljava/lang/Object;)V

    :goto_b3
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    iget-object p1, p0, Lmxe;->e:Landroid/view/ViewGroup;

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

    :goto_b5
    iget-object p1, v0, Lmwy;->g:Lrss;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_b6
    if-gt p2, v2, :cond_1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_b7

    nop

    nop

    :goto_b7
    const/16 p1, 0x42

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

    :goto_b8
    invoke-static {p1, v0, p2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_b9
    move p1, v3

    nop

    nop

    nop

    nop

    :goto_ba
    goto/32 :goto_24

    nop

    nop

    :goto_bb
    iget-object v4, v0, Lmwy;->d:Lhvp;

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_bc
    return-void

    nop

    :goto_bd
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-interface {p1}, Lmmx;->e()Lmmw;

    move-result-object p1

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 5

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setPivotY(F)V

    goto/32 :goto_e

    nop

    nop

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
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    const/high16 v4, 0x40000000    # 2.0f

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    iget-object v0, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_21

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleY(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v1, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    div-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lgha;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

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

    :goto_15
    iget-object v2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-float/2addr v1, v4

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v2, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleX(F)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    int-to-float v0, v0

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

    :goto_1f
    invoke-direct {v1, p0, v2}, Lgha;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_20
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x3

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

    nop

    nop

    :goto_25
    if-gtz v1, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_26
    if-lez v0, :cond_2

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setPivotX(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmxe;->h:Landroid/widget/TextView;

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

    :goto_1
    const-wide/16 v0, 0x320

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x10

    nop

    goto/32 :goto_a

    nop

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

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lmxe;->h:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b
    const v0, 0x18

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

    :goto_c
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_e
    invoke-direct {v1, p0, v2}, Lgha;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_14
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gtz v0, :cond_2

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

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    :goto_17
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lgha;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v2, 0x2

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

    :goto_1e
    invoke-virtual {p0, v0, v1}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lmxe;->b()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    const/high16 v0, 0x3fb00000    # 1.375f

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p0

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

    :goto_23
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
