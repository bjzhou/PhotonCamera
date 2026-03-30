.class public final Lrgf;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lcom/google/android/material/button/MaterialButton;

.field public b:Lrku;

.field public c:Lrle;

.field public d:Ldyt;

.field public e:I

.field public f:I

.field public g:I

.field public h:I

.field public i:I

.field public j:I

.field public k:Landroid/graphics/PorterDuff$Mode;

.field public l:Landroid/content/res/ColorStateList;

.field public m:Landroid/content/res/ColorStateList;

.field public n:Landroid/content/res/ColorStateList;

.field public o:Landroid/graphics/drawable/Drawable;

.field public p:Z

.field public q:Z

.field public r:Z

.field public s:Z

.field public t:Landroid/graphics/drawable/LayerDrawable;

.field public u:I


# direct methods
.method private final 23ce148e54b083367f51e25c7971761em(Z)Lrkp;
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_7

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

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p0, Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

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

    :goto_6
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p0, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_a
    xor-int/lit8 p1, p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/graphics/drawable/InsetDrawable;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/material/button/MaterialButton;Lrku;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lrgf;->b:Lrku;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lrgf;->q:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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
    iput-object p1, p0, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Lrgf;->p:Z

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

    :goto_7
    iput-boolean v0, p0, Lrgf;->s:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lrkp;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, v0}, Lrgf;->23ce148e54b083367f51e25c7971761em(Z)Lrkp;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lrgf;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

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

    :goto_5
    iput-boolean v0, p0, Lrgf;->p:Z

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

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_e

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Lrku;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lrgf;->b:Lrku;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrgf;->c:Lrle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrgf;->d()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object v0

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_35

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
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    instance-of v0, v2, Lrkp;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Lrkp;->p(Lrle;)V

    goto/32 :goto_3c

    nop

    nop

    :goto_9
    invoke-virtual {v2, p0}, Lrkp;->l(Ldyt;)V

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Lrkp;->l(Ldyt;)V

    :goto_c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_e
    goto :goto_1a

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_33

    nop

    nop

    :goto_10
    iget-object v2, p0, Lrgf;->d:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    check-cast v2, Lrld;

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

    :goto_12
    invoke-interface {v2, v0}, Lrld;->d(Lrku;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v0}, Lrgf;->23ce148e54b083367f51e25c7971761em(Z)Lrkp;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_2a

    nop

    nop

    :goto_18
    if-gt v1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Lrkp;->d(Lrku;)V

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2}, Lrkp;->p(Lrle;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

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

    :goto_1d
    if-nez v0, :cond_4

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    :goto_20
    iget-object v1, p0, Lrgf;->d:Ldyt;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_21
    const/4 v2, 0x2

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

    :goto_22
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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

    :goto_23
    if-gt v1, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_6
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_24
    check-cast v2, Lrld;

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_40

    nop

    nop

    :goto_26
    iget-object p0, p0, Lrgf;->d:Ldyt;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Lrgf;->b:Lrku;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x16

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v2, Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1}, Lrkp;->d(Lrku;)V

    :goto_2c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_7
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v1, :cond_8

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_31
    iget-object v1, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_32
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    iget-object v2, p0, Lrgf;->b:Lrku;

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

    :goto_34
    const v1, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

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

    :goto_36
    iget-object v1, p0, Lrgf;->c:Lrle;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lrgf;->c:Lrle;

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_38
    if-nez v1, :cond_9

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_44

    nop

    nop

    :goto_39
    iget-object v0, p0, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_3a
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3b
    if-nez p0, :cond_a

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

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_2c

    nop

    nop

    :goto_3d
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, v0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_40
    if-nez v2, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_c

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

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_42
    if-lez v0, :cond_d

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2

    nop

    :goto_43
    iget-object v2, p0, Lrgf;->c:Lrle;

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

    :goto_44
    invoke-virtual {v0, v1}, Lrkp;->l(Ldyt;)V

    :goto_45
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v1, p0, Lrgf;->b:Lrku;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2, v0}, Lrkp;->p(Lrle;)V

    :goto_48
    goto/32 :goto_26

    nop

    nop
.end method
