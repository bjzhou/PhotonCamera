.class public final Lho;
.super Landroid/widget/EditText;
.source "PG"


# instance fields
.field private final a:Lhj;

.field private final b:Lih;

.field private final c:Leur;

.field private d:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Landroidx/wear/ambient/AmbientMode$AmbientController;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    iget-object v0, p0, Lho;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

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
    iput-object v0, p0, Lho;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lho;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lho;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1
    new-instance p1, Lih;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/EditText;->isClickable()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Leur;->l(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lih;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_28

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, v0}, Lih;->c(Landroid/util/AttributeSet;I)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    invoke-super {p0}, Landroid/widget/EditText;->isFocusable()Z

    move-result p2

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

    :goto_c
    invoke-super {p0, v1}, Landroid/widget/EditText;->setLongClickable(Z)V

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, v3}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    new-instance p1, Leur;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_10
    iput-object p1, p0, Lho;->a:Lhj;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, p0}, Lhj;-><init>(Landroid/view/View;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lho;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_13
    invoke-static {p1}, Lls;->a(Landroid/content/Context;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x1b

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    invoke-super {p0}, Landroid/widget/EditText;->getInputType()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object p1, p0, Lho;->c:Leur;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-super {p0, v0}, Landroid/widget/EditText;->setClickable(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance p1, Lhj;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-super {p0, v2}, Landroid/widget/EditText;->setRawInputType(I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1}, Leur;->k(Landroid/text/method/KeyListener;)Z

    move-result p2

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

    nop

    :goto_1d
    invoke-super {p0, p2}, Landroid/widget/EditText;->setFocusable(Z)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_23
    if-eq v3, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p1, p0, v1}, Leur;-><init>(Landroid/widget/EditText;[B)V

    goto/32 :goto_18

    nop

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

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x7f040275

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

    :goto_27
    invoke-super {p0}, Landroid/widget/EditText;->isLongClickable()Z

    move-result v1

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

    :goto_28
    iput-object p1, p0, Lho;->b:Lih;

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

    :goto_29
    invoke-virtual {p1, p2, v0}, Lhj;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Lih;->a()V

    goto/32 :goto_f

    nop

    nop

    :goto_2b
    const v0, 0x18

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p1, p2, v0}, Leur;->j(Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->drawableStateChanged()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lho;->a:Lhj;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lho;->b:Lih;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lih;->a()V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lhj;->a()V

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    return-void

    nop
.end method

.method public final getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ldvz;->d(Landroid/view/ActionMode$Callback;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/widget/EditText;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

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

.method public final bridge synthetic getText()Ljava/lang/CharSequence;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lho;->getText()Landroid/text/Editable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final getTextClassifier()Landroid/view/textclassifier/TextClassifier;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/EditText;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lho;->166277962e993c138a6b1f0c9b571cc0m()Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-result-object p0

    nop

    goto/32 :goto_3

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

    :goto_3
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    check-cast p0, Landroid/widget/EditText;

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

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/EditText;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {v0, p1, p0}, Le;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lho;->c:Leur;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Leur;->m(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;

    move-result-object p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_1
    iget-object p0, p0, Lho;->a:Lhj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lhj;->e()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/EditText;->setBackgroundResource(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lho;->a:Lhj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhj;->c(I)V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lih;->a()V

    :goto_1
    goto/32 :goto_2

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
    iget-object p0, p0, Lho;->b:Lih;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
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

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lho;->b:Lih;

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
    invoke-virtual {p0}, Lih;->a()V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setKeyListener(Landroid/text/method/KeyListener;)V
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
    invoke-static {p1}, Leur;->l(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

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

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lih;->d(Landroid/content/Context;I)V

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->setTextAppearance(Landroid/content/Context;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lho;->b:Lih;

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

    nop
.end method

.method public final setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lho;->166277962e993c138a6b1f0c9b571cc0m()Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-result-object p0

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

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    check-cast p0, Landroid/widget/EditText;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/EditText;->setTextClassifier(Landroid/view/textclassifier/TextClassifier;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method
