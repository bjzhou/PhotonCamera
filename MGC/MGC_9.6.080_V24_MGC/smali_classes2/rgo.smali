.class public final Lrgo;
.super Lhk;
.source "PG"


# static fields
.field private static final e:I = 0x7f1508e2

.field private static final f:[I

.field private static final g:[I

.field private static final h:[[I

.field private static final i:I


# instance fields
.field b:Landroid/content/res/ColorStateList;

.field final c:Landroid/content/res/ColorStateList;

.field public d:[I

.field private final j:Ljava/util/LinkedHashSet;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Z

.field private final m:Z

.field private final n:Z

.field private final o:Ljava/lang/CharSequence;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Z

.field private final s:Landroid/graphics/PorterDuff$Mode;

.field private t:I

.field private u:Z

.field private v:Ljava/lang/CharSequence;

.field private w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final x:Lekm;

.field private final y:Leki;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrgo;->v:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, v0}, Lhk;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7f140417

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lrgo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lrgo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    const v1, 0x7f140416

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

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    :goto_16
    invoke-virtual {p0}, Lrgo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_17
    const v1, 0x17

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

    :goto_18
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_19
    iget v0, p0, Lrgo;->t:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x7f140415

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_7

    nop

    :goto_1e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    const-string v3, "btn_check_material_anim"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lrgo;->f:[I

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    const v1, 0x101009e

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    filled-new-array {v5, v2}, [I

    move-result-object v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v5, -0x101009e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "android"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_b
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    filled-new-array {v5, v4}, [I

    move-result-object v4

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

    :goto_d
    filled-new-array {v0, v3, v1, v2, v4}, [[I

    move-result-object v0

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

    :goto_e
    filled-new-array {v1, v4}, [I

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    filled-new-array {v0}, [I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    const v1, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    filled-new-array {v1, v2}, [I

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    sput v0, Lrgo;->i:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_15
    sput-object v0, Lrgo;->h:[[I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    filled-new-array {v1, v0}, [I

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

    nop

    nop

    :goto_17
    const-string v1, "drawable"

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

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    sput-object v1, Lrgo;->g:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v2, 0x10100a0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1d
    const v0, 0x7f04064d

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    const v0, 0x7f04064c

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    const v4, -0x10100a0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    new-array v5, v11, [I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0, v11}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v1

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

    :goto_2
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lrgo;->a(I)V

    :goto_4
    goto/32 :goto_13

    nop

    nop

    :goto_5
    iput-object p1, p0, Lrgo;->j:Ljava/util/LinkedHashSet;

    nop

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

    nop

    :goto_6
    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v1

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v0, v2, :cond_1

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
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v1, v2}, Lekl;-><init>(Landroid/graphics/drawable/Drawable$ConstantState;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    iput-boolean v9, v0, Lhm;->b:Z

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_2

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-static/range {v0 .. v5}, Lric;->d(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lrgo;->o:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

    nop

    nop

    :goto_f
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_10
    move-object v2, v10

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_11
    move-object v1, p2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrgo;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_13
    invoke-virtual {p2}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_4f

    nop

    nop

    :goto_14
    sget-object v2, Ldtx;->a:Ljava/lang/ThreadLocal;

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, p1, v9}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_18
    sget-object v10, Lrgp;->a:[I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_1a
    const v3, 0x7f04011a

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x1f

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Lric;->e(Landroid/content/Context;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    move v4, v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_2e

    nop

    nop

    :goto_20
    iget-object v1, v0, Lekm;->d:Landroid/graphics/drawable/Drawable$Callback;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_21
    const v7, 0x7f04011a

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_22
    const/4 p1, 0x7

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v9, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_27
    invoke-static {p1, v1}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iput-boolean v9, p0, Lrgo;->r:Z

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_29
    iput-boolean p1, p0, Lrgo;->n:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2a
    const/4 p1, 0x6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p1, p2, v7, v6}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lhk;->a:Lhm;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-super {p0}, Lhk;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_2f
    new-instance p1, Lrgl;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_32
    invoke-virtual {p2, v11, v11}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

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

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_7

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    new-instance p1, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_37
    new-instance v0, Lekm;

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p1, p2, v7, v6}, Lric;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_1a

    nop

    nop

    :goto_39
    invoke-static {p1, p2, v10, v7, v6}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->y(IZ)Z

    move-result p1

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

    :goto_3b
    move-object v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3c
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3f
    iput-object p1, p0, Lrgo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-super {p0}, Lhk;->getButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p1, v0}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-super {p0, v8}, Lhk;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_44
    iput-object v0, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_45
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_47
    move-object v0, v8

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v11, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

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

    :goto_4b
    const v2, 0x7f080360

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_4c
    const v1, 0x1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/16 p1, 0xa

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4e
    iput-object p1, v0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4f
    invoke-direct {p0}, Lrgo;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_7c

    nop

    nop

    :goto_50
    iput-boolean p1, p0, Lrgo;->l:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_51
    invoke-direct {p0, p1, p2}, Lhk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v0, p1}, Lekm;-><init>(Landroid/content/Context;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_53
    const/16 p1, 0x8

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

    nop

    nop

    :goto_54
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_55
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_a
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_57
    const/4 v0, -0x1

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_58
    iput-boolean p1, p0, Lrgo;->m:Z

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {p1, p0}, Lrgl;-><init>(Lrgo;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lez v0, :cond_b

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :cond_b
    goto/32 :goto_65

    nop

    :goto_5c
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5d
    iput-object v0, p0, Lrgo;->x:Lekm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p2, v9, v11}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_60
    invoke-static {p1, v0}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_61
    const/16 p1, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_48

    nop

    :goto_63
    goto/32 :goto_47

    nop

    nop

    :goto_64
    new-instance v1, Lekl;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_7d

    nop

    :goto_66
    goto/32 :goto_7b

    nop

    nop

    :goto_67
    if-eqz p1, :cond_c

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_c
    :goto_68
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_69
    iput-object p1, p0, Lrgo;->y:Leki;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {p2, p1}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6b
    iget-object v0, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_6c
    const/4 v0, 0x2

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

    :goto_6d
    invoke-virtual {v0}, Lhm;->a()V

    :goto_6e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0}, Lrgo;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_70
    iget-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

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

    :goto_71
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_72
    sget v2, Lrgo;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p2, p1, v0}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

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

    nop

    nop

    :goto_74
    new-instance p1, Ljava/util/LinkedHashSet;

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

    :goto_75
    invoke-static {p1, v0}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_77
    const v0, 0x7f080361

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_78
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_79
    const v0, 0x7f08035f

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_7a
    iput-object p1, p0, Lrgo;->s:Landroid/graphics/PorterDuff$Mode;

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

    :goto_7b
    sget v6, Lrgo;->e:I

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    :goto_7d
    goto/32 :goto_23

    nop

    nop

    :goto_7e
    invoke-virtual {p2, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

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

    :goto_7f
    invoke-virtual {p2, p1, v11}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 6

    goto/32 :goto_21

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

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

    :goto_1
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_a2

    nop

    nop

    :goto_2
    iget-object v0, v0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v3, Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_4
    iget-object v1, v0, Lekm;->a:Lekk;

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lrgo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_38

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

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Leki;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Lekj;

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

    :goto_c
    iput-object v1, v0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_27

    nop

    :goto_10
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_11
    div-float/2addr v3, v5

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_14
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v1, v0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    :goto_16
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v2, 0x7f0b00fe

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eq v2, v3, :cond_1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lrgo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v2, v0, Lekm;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lrgo;->s:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_1e
    goto/16 :goto_66

    nop

    nop

    :goto_1f
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lrgo;->y:Leki;

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

    :goto_21
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    :cond_2
    goto/32 :goto_98

    nop

    :goto_23
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_24
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_25
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_26
    float-to-int v2, v2

    nop

    :goto_27
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->registerAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    :goto_2b
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_66

    nop

    :goto_2d
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v1, p0, Lrgo;->y:Leki;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_36
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_6b

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_40

    nop

    nop

    :goto_3b
    invoke-virtual {v3, v0, v1}, Landroid/graphics/drawable/LayerDrawable;->setLayerGravity(II)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_3d
    int-to-float v5, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lrgo;->x:Lekm;

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

    :goto_41
    invoke-direct {v1, v0}, Lekj;-><init>(Lekm;)V

    goto/32 :goto_c

    nop

    nop

    :goto_42
    if-gez v3, :cond_a

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_43
    div-float/2addr v4, v2

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_45
    move v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, v0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_47
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_48
    iget-object v2, v2, Lekk;->c:Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :cond_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const v1, 0x7f0b022e

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_4b
    if-le v2, v3, :cond_c

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_78

    nop

    nop

    :goto_4c
    invoke-static {v0, v1, v2}, Lrgw;->c(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_4d
    iget-object v2, p0, Lrgo;->x:Lekm;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_4e
    invoke-virtual {v3, v0, v2, v4}, Landroid/graphics/drawable/LayerDrawable;->setLayerSize(III)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_50
    iget-object v2, v0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_51
    div-float/2addr v2, v4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v1, 0x11

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

    :goto_53
    iput-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

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

    :goto_55
    instance-of v1, v0, Landroid/graphics/drawable/AnimatedStateListDrawable;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_57
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_d
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_59
    int-to-float v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5a
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_5c
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_5d
    float-to-int v4, v4

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_5e
    const v3, 0x7f0b04e8

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

    :goto_5f
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_60
    if-eqz v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    :cond_e
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_61
    filled-new-array {v0, v1}, [Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_62
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_63
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_f
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move-object v0, v3

    nop

    :goto_66
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_68
    invoke-super {p0, v0}, Lhk;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    :goto_6a
    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/graphics/drawable/AnimatedStateListDrawable;->addTransition(IILandroid/graphics/drawable/Drawable;Z)V

    :goto_6b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_16

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v2, :cond_10

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_7d

    nop

    nop

    :goto_6f
    iget-object v2, v0, Lekm;->e:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_70
    if-eqz v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_71
    int-to-float v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-eq v4, v3, :cond_12

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    :cond_12
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_74
    if-nez v0, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_13
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-direct {v3, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v2, v0, Lekm;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, p0, Lrgo;->x:Lekm;

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_7a
    goto/16 :goto_36

    nop

    nop

    :goto_7b
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_3c

    nop

    nop

    :goto_7d
    check-cast v2, Landroid/graphics/drawable/AnimatedVectorDrawable;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_7f
    iput-object v2, v0, Lekm;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_81
    int-to-float v4, v4

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_82
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_83
    int-to-float v4, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_84
    if-nez v2, :cond_15

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v0, p0, Lrgo;->x:Lekm;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    nop

    :goto_87
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_88
    iput-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_89
    move-object v0, v1

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

    :goto_8a
    iget-object v2, v0, Lekm;->a:Lekk;

    nop

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

    nop

    :goto_8b
    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_16
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v2, v0, Lekm;->c:Ljava/util/ArrayList;

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

    nop

    :goto_8d
    if-gt v4, v3, :cond_17

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_17
    :goto_8e
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_8f
    iget-object v2, v0, Lekm;->c:Ljava/util/ArrayList;

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v1}, Leki;->a()Landroid/graphics/drawable/Animatable2$AnimationCallback;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_91
    iget-object v1, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_93
    if-nez v2, :cond_18

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v0, p0, Lrgo;->q:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_95
    if-nez v0, :cond_19

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_20

    nop

    nop

    :goto_96
    iget-boolean v0, p0, Lrgo;->r:Z

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

    :goto_97
    const/4 v3, -0x1

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

    :goto_98
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_9a

    nop

    nop

    :goto_9a
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_9b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

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

    nop

    nop

    :goto_9c
    iget-object v1, v0, Lekm;->b:Landroid/animation/Animator$AnimatorListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_9d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a0
    const/4 v0, 0x1

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

    :goto_a1
    iget-object v1, v1, Lekk;->c:Landroid/animation/AnimatorSet;

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

    :goto_a2
    iget-object v1, v0, Lekm;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Lrgo;->refreshDrawableState()V

    goto/32 :goto_3e

    nop

    nop

    :goto_a4
    cmpl-float v3, v2, v3

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/AnimatedVectorDrawable;->unregisterAnimationCallback(Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    :goto_a6
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    invoke-static {v0, v1, v2}, Lrgw;->c(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;Landroid/graphics/PorterDuff$Mode;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-class v1, Landroid/view/autofill/AutofillManager;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    check-cast p1, Landroid/view/autofill/AutofillManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lrgo;->w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_6
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrgo;->isChecked()Z

    move-result v1

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

    :goto_a
    if-eq p1, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_31

    nop

    nop

    :goto_d
    goto :goto_16

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, p0, Lrgo;->u:Z

    nop

    :goto_10
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1e

    nop

    nop

    :goto_13
    if-ne p1, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    :goto_14
    invoke-direct {p0}, Lrgo;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move p1, v0

    nop

    nop

    :goto_16
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1a
    if-ne v0, p1, :cond_4

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_4
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

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

    :goto_1d
    move p1, v1

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

    :goto_1e
    iget p1, p0, Lrgo;->t:I

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_20
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v1, Lrgm;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_22
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    :goto_23
    iget-object p1, p0, Lrgo;->j:Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_24
    invoke-virtual {p1, p0}, Landroid/view/autofill/AutofillManager;->notifyValueChanged(Landroid/view/View;)V

    :goto_25
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    const v0, 0x15

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    invoke-super {p0, p1}, Lhk;->setChecked(Z)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, p0, v1}, Landroid/widget/CompoundButton$OnCheckedChangeListener;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :goto_2f
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_8

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_8
    goto/32 :goto_6

    nop

    :goto_31
    iput-boolean v1, p0, Lrgo;->u:Z

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_32
    iget v0, p0, Lrgo;->t:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lrgo;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_34
    iget-boolean p1, p0, Lrgo;->u:Z

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

    :goto_35
    iput p1, p0, Lrgo;->t:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lrgo;->refreshDrawableState()V

    goto/32 :goto_14

    nop

    nop

    :goto_37
    rem-int v0, v0, v1

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

    :goto_38
    invoke-interface {v1}, Lrgm;->a()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getButtonDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iget-object p0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final getButtonTintList()Landroid/content/res/ColorStateList;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public final isChecked()Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lrgo;->t:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-eq p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 8

    goto/32 :goto_14

    nop

    nop

    :goto_0
    invoke-static {v3, v4, v6}, Lrgw;->h(IIF)I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_20

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v2, Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    const v6, 0x3ec28f5c    # 0.38f

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lrgo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lrgo;->l:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    array-length v1, v0

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

    :goto_a
    const v2, 0x7f040177

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    filled-new-array {v2, v1, v5, v7, v3}, [I

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1}, Lrgw;->f(Landroid/view/View;I)I

    move-result v1

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

    :goto_d
    const v3, 0x7f0401c5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x1

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

    :goto_f
    iget-object v0, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    const v5, 0x3f0a3d71    # 0.54f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_12
    invoke-static {v3, v2, v5}, Lrgw;->h(IIF)I

    move-result v2

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

    :goto_13
    invoke-static {v3, v4, v5}, Lrgw;->h(IIF)I

    move-result v5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1e

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x14

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_17
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    :goto_18
    invoke-static {p0, v4}, Lrgw;->f(Landroid/view/View;I)I

    move-result v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v0, Lrgo;->h:[[I

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

    :goto_1a
    iget-object v0, p0, Lrgo;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v4, 0x7f040198

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1c
    iget-boolean v0, p0, Lrgo;->l:Z

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

    :goto_1d
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :goto_1e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v3, v4, v6}, Lrgw;->h(IIF)I

    move-result v3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lrgo;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    :goto_24
    invoke-static {v3, v1, v5}, Lrgw;->h(IIF)I

    move-result v1

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

    :goto_25
    add-int v0, v0, v1

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

    :goto_26
    invoke-super {p0}, Lhk;->onAttachedToWindow()V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_27
    invoke-direct {v2, v0, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {p0, v2}, Lrgw;->f(Landroid/view/View;I)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_29
    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2b
    invoke-static {p0, v3}, Lrgw;->f(Landroid/view/View;I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    iput-object v2, p0, Lrgo;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x7f040174

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aput v2, v1, v0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lrgo;->g:[I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_29

    nop

    nop

    :goto_7
    array-length v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    move-object v1, p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    aget v1, p1, v0

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

    :goto_a
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v0

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

    :goto_b
    const v2, 0x10100a0

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

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    :goto_d
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x10

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_10
    if-lt v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lrgo;->t:I

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_12
    move-object v1, v0

    nop

    :goto_13
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr p1, v0

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

    :goto_16
    goto :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p1, v0}, Lrgo;->mergeDrawableStates([I[I)[I

    :goto_19
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1a
    aput v2, v0, v1

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

    :goto_1b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v0, v1, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-eq v1, v0, :cond_5

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

    :cond_5
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p1, v0}, Lrgo;->mergeDrawableStates([I[I)[I

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    :goto_24
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Lrgo;->n:Z

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

    :goto_26
    goto :goto_1e

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    sget-object v0, Lrgo;->f:[I

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

    :goto_29
    invoke-virtual {p1}, [I->clone()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2a
    invoke-super {p0, p1}, Lhk;->onCreateDrawableState(I)[I

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_13

    nop

    :goto_2c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v1, [I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    iput-object v1, p0, Lrgo;->d:[I

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
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_2
    add-int/2addr v3, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_4
    invoke-virtual {p0, v0, v2, v3, p1}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v1, v3

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

    :goto_7
    int-to-float v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Lhk;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lrgo;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    const/4 v4, 0x0

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

    :goto_10
    if-nez v0, :cond_3

    nop

    goto/32 :goto_18

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_11
    const/4 v2, -0x1

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lrgo;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lrgo;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_15
    iget-boolean v0, p0, Lrgo;->m:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v0, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

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

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    invoke-static {p0}, Lqqy;->r(Landroid/view/View;)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1b
    goto :goto_12

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-int/2addr v1, v2

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

    :goto_1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-super {p0, p1}, Lhk;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lrgo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_15

    nop

    nop

    :goto_27
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_28
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    if-ne v2, v1, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x1

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

    :goto_2f
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_30
    iget v3, p1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_31
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x6

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :goto_4
    goto/32 :goto_17

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Lhk;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lrgo;->o:Ljava/lang/CharSequence;

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
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_12
    iget-boolean v0, p0, Lrgo;->n:Z

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

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

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, ", "

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_19
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    const v1, 0x2

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

    :goto_1b
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-super {p0, v0}, Lhk;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    instance-of v0, p1, Lrgn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Lhk;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    iget p1, p1, Lrgn;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p1, Lrgn;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lrgo;->a(I)V

    goto/32 :goto_a

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Lrgn;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

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

    :goto_a
    return-void

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-direct {v1, v0}, Lrgn;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Lrgo;->t:I

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

    :goto_4
    new-instance v1, Lrgn;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_9
    iput p0, v1, Lrgn;->a:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    const v1, 0x9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0}, Lhk;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

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
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lhk;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrgo;->getContext()Landroid/content/Context;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-boolean p1, p0, Lrgo;->r:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrgo;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrgo;->p:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setButtonTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrgo;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

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
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    if-eq v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lrgo;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    iput-boolean p1, v0, Lhm;->c:Z

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrgo;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, v0, Lhm;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhk;->a:Lhm;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lhm;->a()V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final setChecked(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrgo;->a(I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrgo;->w:Landroid/widget/CompoundButton$OnCheckedChangeListener;

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

    :goto_1
    return-void

    nop
.end method

.method public final setStateDescription(Ljava/lang/CharSequence;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrgo;->v:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lhk;->setStateDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_6

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
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lrgo;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_4

    nop

    nop
.end method

.method public final toggle()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    xor-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Lrgo;->a(I)V

    goto/32 :goto_2

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
    invoke-virtual {p0}, Lrgo;->isChecked()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
