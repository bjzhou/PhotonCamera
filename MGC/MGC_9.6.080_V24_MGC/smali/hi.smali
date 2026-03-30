.class public Lhi;
.super Landroid/widget/AutoCompleteTextView;
.source "PG"


# static fields
.field private static final a:[I


# instance fields
.field private final b:Lhj;

.field private final c:Lih;

.field private final d:Leur;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x1010176

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    sput-object v0, Lhi;->a:[I

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

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lhi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

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
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lhi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f04004f

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Leur;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhi;->d:Leur;

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
    invoke-static {p1}, Leur;->k(Landroid/text/method/KeyListener;)Z

    move-result p2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_12

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2, p3}, Leur;->j(Landroid/util/AttributeSet;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1, p0}, Lih;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->getInputType()I

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->isFocusable()Z

    move-result p2

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

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

    nop

    :goto_9
    sget-object v0, Lhi;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->isLongClickable()Z

    move-result v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, v0}, Landroid/widget/AutoCompleteTextView;->setLongClickable(Z)V

    :goto_c
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_f
    invoke-static {p1}, Leur;->l(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v0}, Lhi;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_11
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lhi;->getContext()Landroid/content/Context;

    move-result-object p1

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

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Landroidx/wear/ambient/AmbientDelegate;->z(I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lhi;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-eq v2, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance p1, Lhj;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Lih;->a()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    new-instance p1, Lih;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    if-nez p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1}, Lls;->a(Landroid/content/Context;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-super {p0, p3}, Landroid/widget/AutoCompleteTextView;->setClickable(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, p2}, Landroid/widget/AutoCompleteTextView;->setFocusable(Z)V

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    invoke-virtual {p1, p2, p3}, Lih;->c(Landroid/util/AttributeSet;I)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, p2, p3}, Lhj;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    invoke-virtual {p1, v1}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    :goto_28
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_29
    const v0, 0x16

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

    :goto_2a
    const/4 v1, 0x0

    nop

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

    :goto_2b
    const v1, 0x1f

    nop

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

    :goto_2c
    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2d
    invoke-direct {p1, p0, v0}, Leur;-><init>(Landroid/widget/EditText;[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lhi;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_2f
    iput-object p1, p0, Lhi;->b:Lhj;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_30
    add-int v0, v0, v1

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

    :goto_31
    iput-object p1, p0, Lhi;->c:Lih;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {p1, p0}, Lhj;-><init>(Landroid/view/View;)V

    goto/32 :goto_2f

    nop

    nop

    :goto_33
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->isClickable()Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_34
    invoke-super {p0, v2}, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/32 :goto_36

    nop

    nop

    :goto_35
    invoke-static {p1, p2, v0, p3, v1}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object p1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    invoke-super {p0, v1}, Landroid/widget/AutoCompleteTextView;->setRawInputType(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

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

    :goto_1
    if-nez p0, :cond_1

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
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhi;->c:Lih;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Lhj;->a()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhi;->b:Lhj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->drawableStateChanged()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lih;->a()V

    :goto_9
    goto/32 :goto_7

    nop

    nop
.end method

.method public final getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ldvz;->d(Landroid/view/ActionMode$Callback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/AutoCompleteTextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0, p1, p0}, Le;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

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

    nop

    :goto_3
    invoke-virtual {p0, v0}, Leur;->m(Landroid/view/inputmethod/InputConnection;)Landroid/view/inputmethod/InputConnection;

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

    nop

    :goto_4
    iget-object p0, p0, Lhi;->d:Leur;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhj;->e()V

    :goto_1
    goto/32 :goto_2

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
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhi;->b:Lhj;

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

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhi;->b:Lhj;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setBackgroundResource(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhj;->c(I)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lih;->a()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhi;->c:Lih;

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

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

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

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhi;->c:Lih;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/AutoCompleteTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

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

    :goto_3
    invoke-virtual {p0}, Lih;->a()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method

.method public final setDropDownBackgroundResource(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lhi;->setDropDownBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

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

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhi;->getContext()Landroid/content/Context;

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

    :goto_3
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setKeyListener(Landroid/text/method/KeyListener;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/AutoCompleteTextView;->setKeyListener(Landroid/text/method/KeyListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Leur;->l(Landroid/text/method/KeyListener;)Landroid/text/method/KeyListener;

    move-result-object p1

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

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/AutoCompleteTextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhi;->c:Lih;

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

    :goto_2
    invoke-virtual {p0, p1, p2}, Lih;->d(Landroid/content/Context;I)V

    :goto_3
    goto/32 :goto_4

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop
.end method
