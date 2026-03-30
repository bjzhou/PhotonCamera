.class public Lndy;
.super Landroid/widget/LinearLayout;
.source "PG"


# static fields
.field public static final a:Lsdb;

.field private static final q:Lnnp;


# instance fields
.field public final b:Lrvg;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/EnumSet;

.field public final e:Ljava/util/EnumMap;

.field public f:Z

.field public g:Landroid/widget/TextView;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lnne;

.field public l:Lnnf;

.field public final m:Landroid/graphics/drawable/Drawable;

.field public n:Landroid/animation/Animator;

.field public o:Lrss;

.field public p:I

.field private r:Landroid/animation/Animator;

.field private s:Ljava/lang/Boolean;

.field private final t:I

.field private u:Lhoh;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/widget/TextView;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lndy;->g:Landroid/widget/TextView;

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

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x10

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1, v0}, Lndy;->51550bab6b6440a4fd45f825c221b363m(Landroid/widget/TextView;Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    iget-object p1, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v1}, Lndy;->51550bab6b6440a4fd45f825c221b363m(Landroid/widget/TextView;Z)V

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Landroid/widget/TextView;Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    check-cast p2, Lnne;

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

    nop

    :goto_2
    check-cast p2, Lrua;

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

    :goto_3
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, p0}, Lnnb;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p0

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lndy;->u:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p2, v0}, Lnnb;->e(Lnne;Lhoh;)Lnnb;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p2, p1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    iget-object p2, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    iget-object p2, p2, Lrua;->b:Lrua;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_13
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lndy;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v0, Lnnp;

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
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lndy;->q:Lnnp;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "ndy"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    invoke-direct {v0}, Lnnp;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    iput p1, p0, Lndy;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lndy;->h:I

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
    invoke-direct {p1, p0, v1}, Lndw;-><init>(Landroid/view/View;I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lgle;

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

    :goto_5
    iput-object v0, p0, Lndy;->s:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    const-class v0, Lnne;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lndy;->j:I

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lndy;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lndy;->i:I

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

    :goto_f
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v2, p0, Lndy;->o:Lrss;

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

    :goto_11
    const p1, 0x7f08035a

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_13
    sget-object v2, Lnnf;->b:Lnnf;

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

    :goto_14
    new-instance v0, Lrwp;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Lfwm;

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

    :goto_16
    new-instance v0, Ljava/util/HashMap;

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

    nop

    :goto_17
    iput-object p1, p0, Lndy;->s:Ljava/lang/Boolean;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v1, p0, Lndy;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1a
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    instance-of v2, p1, Lfwm;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    iput-object v2, p0, Lndy;->u:Lhoh;

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

    :goto_21
    const p1, 0x7f0401bc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_22
    sget-object v2, Lrsa;->a:Lrsa;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_23
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_24
    const-class v1, Lnne;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_25
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-object v2, p0, Lndy;->l:Lnnf;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2a
    const-class v1, Lnne;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2b
    const p1, 0x7f0c0087

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1, v0}, Lnnj;->a(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_41

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Lndy;->setVisibility(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_30
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, p1, v0}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p0, p1}, Lrgw;->f(Landroid/view/View;I)I

    move-result p1

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

    :goto_34
    invoke-static {p0, p1}, Lrgw;->f(Landroid/view/View;I)I

    move-result p1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_35
    new-instance v0, Ljava/util/EnumMap;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p1}, Lndy;->setAlpha(F)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

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

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_3b
    sget-object p1, Lhmp;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_26

    nop

    nop

    :goto_3d
    invoke-direct {p1, p0, v0}, Lgle;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_42

    nop

    nop

    :goto_3e
    const v0, 0xe

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

    :goto_3f
    const p1, 0x7f04018f

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput p1, p0, Lndy;->t:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_41
    iput-object v0, p0, Lndy;->e:Ljava/util/EnumMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p0, p1}, Lndy;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0, v1}, Lrwp;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_44
    invoke-static {p0, p1}, Lrgw;->f(Landroid/view/View;I)I

    move-result p1

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

    :goto_45
    iput-object v0, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_46
    const p1, 0x7f040198

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_47
    iput-object v0, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_48
    goto/32 :goto_d

    nop

    nop

    :goto_49
    new-instance p1, Lndw;

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
.end method

.method private static h(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 4

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    const v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_7
    const v1, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object v0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

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
    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lnne;)Landroid/widget/TextView;
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Lnnb;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, p0, v3, p0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2e

    nop

    :goto_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_32

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_9
    const v0, 0x7f08035b

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    const-string v1, "layout_inflater"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3}, Landroid/graphics/drawable/RippleDrawable;->setRadius(I)V

    goto/32 :goto_39

    nop

    nop

    :goto_e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    const p1, 0x7f07058e

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, -0x2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    const-string v3, "mode "

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    check-cast v1, Landroid/view/LayoutInflater;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_17
    invoke-static {v1, p1}, Lrrf;->y(ZLjava/lang/Object;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_19
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto :goto_23

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    const v2, 0x7f07058d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, v2, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    move v1, v3

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_25
    iget-object v1, p0, Lndy;->u:Lhoh;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    const v4, 0x7f0e00c4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1, p1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2b
    const-string v4, " is registered already."

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x0

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

    :goto_2d
    return-object v1

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v0}, Lnnb;->d(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_31
    iget-object v1, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSoundEffectsEnabled(Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x1

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

    nop

    :goto_34
    invoke-static {p1, v3, v4}, Lfey;->b(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_35
    invoke-static {p1, v1}, Lnnb;->e(Lnne;Lhoh;)Lnnb;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_38
    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lnne;Z)V
    .locals 4

    goto/32 :goto_21

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f(IZ)V

    :goto_2
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lrss;->h()Z

    move-result p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lrvg;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lndy;->o:Lrss;

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

    :goto_6
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrss;->c()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0, p1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_a
    invoke-virtual {p0, v0}, Lndy;->f(Landroid/widget/TextView;)V

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lndy;->b:Lrvg;

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

    :goto_12
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_11

    nop

    nop

    :goto_13
    iget-object v1, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lndy;->e(Lnne;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_15
    goto :goto_1c

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    :goto_17
    goto :goto_b

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr p1, v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    div-int/lit8 p1, p1, 0x2

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

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_33

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

    nop

    :goto_1e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lndy;->b:Lrvg;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

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

    :goto_27
    const v1, 0x15

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v1, 0x1

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

    :goto_2a
    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lndy;->o:Lrss;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-ne v1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v3, "attempted to activate non-existent mode "

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

    :goto_30
    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

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

    :goto_31
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_6
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_2

    nop

    :goto_36
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v1, v2}, Lrrf;->m(ZLjava/lang/Object;)V

    goto/32 :goto_37

    nop

    nop

    nop
.end method

.method public final c(Landroid/widget/TextView;Lnne;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

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

    :goto_1
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x0

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
    invoke-direct {v2, v3, p1}, Lner;-><init>(Landroid/content/Context;Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p2, v2}, Ljava/util/EnumMap;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_26

    nop

    nop

    :goto_5
    move v5, v3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lndy;->e:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    const v6, 0x7f0706a4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_13

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v1, v4, :cond_0

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

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

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

    :goto_12
    float-to-int v3, v0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_1f

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0x7f0706a0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x8

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v2, Lner;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

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

    :goto_1c
    invoke-virtual {p0}, Lndy;->getContext()Landroid/content/Context;

    move-result-object v3

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-interface {v0, p2, p1}, Lrvg;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_11

    nop

    nop

    :goto_1e
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_5

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_23
    add-int v0, v0, v1

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

    nop

    :goto_24
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    :goto_25
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1}, Lndy;->addView(Landroid/view/View;)V

    goto/32 :goto_f

    nop

    nop

    :goto_27
    iget-object v0, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    sget-object v1, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    float-to-int v5, v5

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v5, v6, v3}, Lner;->c(III)V

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2f
    float-to-int v6, v6

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method

.method public final d(ZZ)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p2, 0x1

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

    :goto_3
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

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

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_20

    nop

    nop

    :goto_7
    invoke-static {p0, p2, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_9
    iput-object p1, p0, Lndy;->s:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :goto_c
    goto/32 :goto_31

    nop

    nop

    :goto_d
    invoke-virtual {p0, p2}, Lndy;->setAlpha(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    :goto_10
    const v0, 0x17

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    if-nez p2, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p2, p0, Lndy;->s:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    new-array v0, v0, [F

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    if-eq p2, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    const-wide/16 v0, 0xd9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_28

    nop

    nop

    :goto_19
    const/4 p2, 0x0

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
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    goto :goto_22

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    nop

    :goto_1d
    goto/32 :goto_c

    nop

    nop

    :goto_1e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    :goto_20
    iget-object p2, p0, Lndy;->r:Landroid/animation/Animator;

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

    :goto_21
    const/high16 p2, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p2, p0, Lndy;->r:Landroid/animation/Animator;

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

    :goto_26
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    :goto_27
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_28
    iput-object p2, p0, Lndy;->r:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_29
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

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

    :goto_2b
    new-array v0, v0, [F

    nop

    fill-array-data v0, :array_1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    if-nez p2, :cond_6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :cond_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    :goto_2e
    goto/32 :goto_2

    nop

    nop

    :goto_2f
    if-ne p2, p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const-string p2, "alpha"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_2b

    nop

    nop

    :goto_34
    iput-object p1, p0, Lndy;->s:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x1c

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop
.end method

.method public final e(Lnne;)V
    .locals 6

    goto/32 :goto_34

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    iget-object v3, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    check-cast v4, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget v1, p0, Lndy;->t:I

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

    nop

    :goto_5
    invoke-direct {v2, p0, v3}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lndy;->invalidate()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p1, Landroid/widget/TextView;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_a
    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v2, Lieq;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    iget-object v1, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Lndy;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/widget/TextView;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v3, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

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

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_10
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    int-to-long v1, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, p0, Lndy;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    invoke-interface {v4, p1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v4, p0, Lndy;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    filled-new-array {v3, v4}, [I

    move-result-object v3

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xa

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

    :goto_1d
    sget-object v3, Lndy;->q:Lnnp;

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

    :goto_1e
    iget v5, p0, Lndy;->h:I

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

    :goto_1f
    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, v4, v3, v2}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    goto/32 :goto_36

    nop

    :goto_22
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_24
    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_26
    iput-object v0, p0, Lndy;->n:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v3, p0, Lndy;->i:I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lndy;->n:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v3, p1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :goto_30
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_32
    new-instance v2, Landroid/view/animation/LinearInterpolator;

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

    :goto_33
    filled-new-array {v3, v5}, [I

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_34
    const v0, 0x1

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

    :goto_35
    return-void

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_37
    invoke-static {v4}, Lndy;->h(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_39
    const-string v4, "bounds"

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3b
    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3c
    const-string v4, "textColor"

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v4, p0, Lndy;->b:Lrvg;

    nop

    goto/32 :goto_15

    nop

    nop

    nop
.end method

.method public final f(Landroid/widget/TextView;)V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lndy;->h(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lndy;->invalidate()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_15

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
    goto/32 :goto_f

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lndy;->n:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_9
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :goto_b
    goto/32 :goto_1

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

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_d
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Lndy;->1478a1c7833aac5e360e0ba4b0c0c568m(Landroid/widget/TextView;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lndy;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    const v1, 0x1d

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lndy;->h:I

    nop

    goto/32 :goto_d

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x12

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

    :goto_1
    if-nez v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_3

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    :goto_b
    iget v2, p0, Lndy;->h:I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    :goto_d
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v2, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v2, p0, Lndy;->i:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0}, Lrvg;->g()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    :goto_19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Landroid/widget/TextView;

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, p1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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
    sget-object p0, Lndy;->a:Lsdb;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

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

    :goto_4
    invoke-interface {p0, p1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    :goto_5
    const-string p1, "highlight chip is not visible"

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    const/16 p1, 0x1351

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lscz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lndy;->h(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object p1

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

    :goto_1
    goto/16 :goto_29

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p3}, Lndy;->setVisibility(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v1, Lnne;

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

    :goto_6
    if-eq p1, p5, :cond_0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-interface {v0}, Lrvg;->keySet()Ljava/util/Set;

    move-result-object v0

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
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    move v2, p4

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p1, p5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, p5, p1}, Lndy;->b(Lnne;Z)V

    goto/32 :goto_2a

    nop

    nop

    :goto_f
    invoke-interface {v2, v1}, Lrvg;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_10
    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_11
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eq p1, p2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lndy;->m:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_16
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    const/4 p4, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_18
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_19
    invoke-virtual {p0, p4, p3}, Lndy;->d(ZZ)V

    :goto_1a
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, p4}, Lner;->a(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move p1, p4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lndy;->g:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x16

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 p5, 0x2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_22
    monitor-enter p0

    nop

    :try_start_0
    iget-boolean p1, p0, Lndy;->f:Z

    nop

    nop

    if-eqz p1, :cond_4

    nop

    iget-object p1, p0, Lndy;->d:Ljava/util/EnumSet;

    nop

    nop

    nop

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    nop

    nop

    nop

    nop

    iput-boolean p3, p0, Lndy;->f:Z

    nop

    nop

    nop

    goto :goto_23

    nop

    nop

    nop

    nop

    :cond_4
    const/4 p1, 0x0

    nop

    nop

    nop

    :goto_23
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_41

    nop

    nop

    :goto_24
    iget-object p5, p0, Lndy;->k:Lnne;

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

    :goto_25
    iget p1, p0, Lndy;->p:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_26
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_29
    goto/32 :goto_38

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lndy;->isEnabled()Z

    move-result p1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_b

    nop

    nop

    :goto_2d
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v2, v3, :cond_5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    :goto_32
    move p1, p3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_e

    nop

    nop

    :goto_34
    invoke-static {p4}, Lrrf;->x(Z)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_35
    iget p1, p0, Lndy;->p:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    if-nez v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p0, Lndy;->e:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_38
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_39
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput p2, p0, Lndy;->p:I

    nop

    nop

    :goto_3b
    goto/32 :goto_1e

    nop

    nop

    :goto_3c
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4a

    nop

    nop

    :goto_3d
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    :goto_3e
    goto :goto_33

    nop

    :goto_3f
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v2, p0, Lndy;->b:Lrvg;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_41
    if-nez p1, :cond_8

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez p1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_44
    goto/32 :goto_4d

    nop

    nop

    :goto_45
    move v2, p3

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

    :goto_46
    if-nez v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Landroid/widget/TextView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_48
    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_49
    const/4 p2, 0x3

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

    :goto_4a
    if-eq p1, p4, :cond_b

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1c

    nop

    nop

    :goto_4b
    invoke-virtual {v1}, Lner;->b()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object p1, Ldwd;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4d
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    check-cast v1, Lner;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_4f
    if-lez v0, :cond_c

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

    :cond_c
    goto/32 :goto_2e

    nop

    :goto_50
    if-eqz v2, :cond_d

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_51
    check-cast v2, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 10

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

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

    :goto_2
    iput v3, v2, Lndx;->c:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_3
    if-nez v7, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v7, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v0, p1}, Lndy;->resolveSize(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_8
    iput v6, v2, Lndx;->b:I

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

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :goto_c
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_e
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10
    if-nez v7, :cond_1

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz v8, :cond_2

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_2
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v6, v2, Lndx;->d:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    sub-int v3, v6, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {p0, v3}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v8}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_18
    if-gtz v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

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

    :goto_1c
    invoke-virtual {p0}, Lndy;->getChildCount()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_1d
    new-instance v0, Landroid/util/Size;

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

    :goto_1e
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lndy;->getPaddingTop()I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v0, v1

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

    :goto_22
    iget-object v1, p0, Lndy;->c:Ljava/util/HashMap;

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

    nop

    :goto_23
    move v5, v3

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_25
    if-gtz v9, :cond_5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p1, p2}, Lndy;->setMeasuredDimension(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move v7, v4

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Lndy;->l:Lnnf;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Landroid/view/View;->getLayoutDirection()I

    move-result v7

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_2e
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_30
    invoke-virtual {p0, v7}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_60

    nop

    nop

    :goto_32
    invoke-virtual {p0, v4}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v7, v3

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    move v5, v4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v0, 0xe

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_37
    div-int/lit8 v6, v6, 0x2

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

    :goto_38
    goto/32 :goto_a

    nop

    :goto_39
    goto/32 :goto_42

    nop

    nop

    :goto_3a
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_3b
    iget v3, v2, Lndx;->d:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_3c
    iget v1, v2, Lndx;->c:I

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

    nop

    :goto_3d
    invoke-virtual {p0, v4}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_3e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3f
    invoke-direct {v2}, Lndx;-><init>()V

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5f

    nop

    nop

    :goto_42
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_44
    add-int/lit8 v7, v7, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_6f

    nop

    :goto_47
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    move v4, v3

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v0, v1, v3, v4}, Lndy;->setPadding(IIII)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sub-int/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move v6, v5

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-gtz v9, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v6, v3

    nop

    :goto_51
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_52
    check-cast v2, Lndx;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_53
    iget-object v2, p0, Lndy;->l:Lnnf;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v0, v2, Lndx;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_55
    iput v5, v2, Lndx;->a:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_56
    if-gtz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Lndy;->getChildCount()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_58
    add-int/2addr v5, v7

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_5a
    goto :goto_51

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v4, 0x1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5d
    iget v0, v2, Lndx;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v3, 0x0

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_5f
    new-instance v2, Lndx;

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

    :goto_60
    if-nez v8, :cond_9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eq v7, v4, :cond_a

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_62
    invoke-static {v0, p2}, Lndy;->resolveSize(II)I

    move-result p2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_63
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_64
    if-lt v4, v7, :cond_b

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_65
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_38

    nop

    :goto_66
    if-nez v7, :cond_d

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_67
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget v1, v2, Lndx;->d:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Lndy;->getPaddingBottom()I

    move-result v4

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

    :goto_6a
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    goto/32 :goto_78

    nop

    nop

    nop

    :goto_6d
    move v5, v4

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

    :goto_6e
    invoke-virtual {p0, v3}, Lndy;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lndy;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_71
    if-nez v5, :cond_e

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Lndy;->getChildCount()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_74
    iget v0, v2, Lndx;->c:I

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

    nop

    :goto_75
    if-eqz v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_f
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_77
    add-int/lit8 v8, v8, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p0}, Lndy;->getChildCount()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop
.end method
