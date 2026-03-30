.class public final Lhm;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/graphics/PorterDuff$Mode;

.field public b:Z

.field public c:Z

.field private final d:Landroid/widget/CompoundButton;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/widget/CompoundButton;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1
    iput-object v0, p0, Lhm;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lhm;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lhm;->b:Z

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
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

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
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean v1, p0, Lhm;->b:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v1, p0, Lhm;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_1
    :goto_c
    goto/32 :goto_d

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_e
    const v0, 0xa

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_f
    goto/32 :goto_16

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

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

    goto/32 :goto_8

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    :goto_12
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_14
    goto/32 :goto_19

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
    goto/32 :goto_21

    nop

    nop

    :goto_17
    invoke-virtual {v1}, Landroid/widget/CompoundButton;->getDrawableState()[I

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

    :goto_18
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

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
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    :goto_1c
    iget-boolean v1, p0, Lhm;->b:Z

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_6
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
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

    :goto_20
    iget-object v1, p0, Lhm;->a:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_23
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_24
    iget-boolean v1, p0, Lhm;->c:Z

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_25
    const v1, 0xf

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
.end method

.method final b(Landroid/util/AttributeSet;I)V
    .locals 10

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v5, Lew;->m:[I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    move-object v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    move v8, p2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v7, Landroid/content/res/TypedArray;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    :try_start_0
    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, v2}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1a

    nop

    nop

    nop

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_c
    iget-object v1, v0, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    move-object v6, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_e
    iget-object v3, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p1, :cond_1

    nop

    goto/32 :goto_15

    nop

    :cond_1
    :try_start_1
    iget-object p2, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v1, Lew;->m:[I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v3}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    goto :goto_16

    nop

    nop

    nop

    nop

    :catch_0
    :cond_2
    :goto_15
    :try_start_2
    invoke-virtual {v0, v2}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p1

    nop

    nop

    nop

    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2, v2}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p1

    nop

    if-eqz p1, :cond_3

    nop

    nop

    iget-object p2, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    invoke-virtual {p2}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_16
    const/4 p1, 0x2

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_4

    nop

    iget-object p2, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->s(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    invoke-virtual {p2, p1}, Landroid/widget/CompoundButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    :cond_4
    const/4 p1, 0x3

    nop

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_5

    nop

    nop

    nop

    iget-object p0, p0, Lhm;->d:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    const/4 p2, -0x1

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    nop

    invoke-virtual {p0, p1}, Landroid/widget/CompoundButton;->setButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    :goto_1b
    const v0, 0xa

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v3 .. v9}, Ldwb;->b(Landroid/view/View;Landroid/content/Context;[ILandroid/util/AttributeSet;Landroid/content/res/TypedArray;II)V

    goto/32 :goto_6

    nop

    nop

    :goto_1d
    invoke-static {v0, p1, v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method final c()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lhm;->e:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhm;->a()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Lhm;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    :goto_7
    iget-boolean v0, p0, Lhm;->e:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
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
.end method
