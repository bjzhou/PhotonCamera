.class final Lrmn;
.super Landroid/widget/ArrayAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lrmo;

.field private final b:Landroid/content/res/ColorStateList;

.field private final c:Landroid/content/res/ColorStateList;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Z
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lrmo;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrmn;->a:Lrmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lrmo;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    new-array v1, p4, [I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    filled-new-array {p2, p3}, [I

    move-result-object p2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p3, p4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

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

    :goto_7
    invoke-direct {p0}, Lrmn;->f875135777c17da3cef2ea6eeff5be29m()Z

    move-result p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    filled-new-array {p2}, [I

    move-result-object p2

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

    :goto_a
    const p3, -0x10100a7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p2, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    :goto_c
    filled-new-array {v0, p3}, [I

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_d
    new-array p4, p4, [I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0}, Lrmn;->166277962e993c138a6b1f0c9b571cc0m()Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_f
    invoke-static {v1, v2}, Ldtz;->c(II)I

    move-result v1

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

    :goto_10
    new-instance v1, Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p2, p4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

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

    :goto_14
    invoke-direct {p0}, Lrmn;->f875135777c17da3cef2ea6eeff5be29m()Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    filled-new-array {v0, v1, p1}, [I

    move-result-object p1

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

    :goto_16
    iget-object v1, p1, Lrmo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_17
    filled-new-array {p2, v1}, [[I

    move-result-object p2

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

    :goto_18
    filled-new-array {v0, p4}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    invoke-direct {p3, p2, p1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_1a
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1b
    const v0, 0x10100a1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1c
    iget p1, p1, Lrmo;->b:I

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1d
    goto :goto_27

    nop

    nop

    :goto_1e
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    new-instance p3, Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v2, p1, Lrmo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_22
    const p2, 0x1010367

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_23
    filled-new-array {p3, p2, p4}, [[I

    move-result-object p2

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

    :goto_24
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, p2, p4}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

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

    :goto_26
    invoke-direct {v1, p2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    :goto_27
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3

    nop

    :goto_29
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const p2, 0x10100a7

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

    :goto_2d
    invoke-static {v0, v2}, Ldtz;->c(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_2e
    iput-object p1, p0, Lrmn;->a:Lrmo;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p1, Lrmo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_30
    iput-object p3, p0, Lrmn;->b:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object v1, p3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget v2, p1, Lrmo;->b:I

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

    :goto_33
    iget-object v0, p1, Lrmo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_34
    iput-object v1, p0, Lrmn;->c:Landroid/content/res/ColorStateList;

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

    :goto_35
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_37
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()Z
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lrmn;->a:Lrmo;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrmo;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrmn;->c:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    :goto_2
    iget-object p3, p0, Lrmn;->c:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_25

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

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
    if-nez p2, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lrmn;->166277962e993c138a6b1f0c9b571cc0m()Z

    move-result p3

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

    :goto_a
    invoke-virtual {p3}, Lrmo;->getText()Landroid/text/Editable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_29

    nop

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

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, p3}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_10
    move-object p2, p1

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    iget-object p3, p0, Lrmn;->a:Lrmo;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p2, Landroid/widget/TextView;

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

    :goto_15
    if-eqz p3, :cond_2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    :goto_16
    invoke-virtual {p3, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result p3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0x18

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

    :goto_18
    goto/16 :goto_26

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
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1b
    invoke-direct {p3, p0, v1, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p3, p0, Lrmn;->a:Lrmo;

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

    :goto_1e
    move-object v0, p3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    iget p3, p3, Lrmo;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_20
    new-instance p3, Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    if-nez p3, :cond_3

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_22
    invoke-direct {v1, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez p3, :cond_4

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    iget-object p3, p0, Lrmn;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_28
    instance-of p2, p1, Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    invoke-interface {p3}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object p3

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

    :goto_2a
    invoke-virtual {p2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop
.end method
