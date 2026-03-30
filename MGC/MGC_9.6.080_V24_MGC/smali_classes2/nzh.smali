.class public final Lnzh;
.super Ldvd;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

.field private final b:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;


# direct methods
.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    if-gtz v1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v0, Lnzg;->a:Ljava/lang/CharSequence;

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

    :goto_5
    invoke-virtual {p0}, Lnzh;->j()Lnzg;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_19

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    :goto_a
    iget-object v1, v0, Lnzg;->b:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

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

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-boolean p0, p0, Lnzc;->p:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, v0, Lnzg;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_10
    iget-object v2, v0, Lnzg;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

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

    :goto_12
    const/16 v2, 0x40

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_14
    iget-object p0, p0, Lnzh;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    const v0, 0x2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Lnzg;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1c

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lnzh;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lnzh;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

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
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lnzh;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2}, Ldvd;->b(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

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

.method public final c(Landroid/view/View;Ldxb;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p1, p1, Lnzc;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lnzh;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Lnzg;->a()Ljava/lang/CharSequence;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lnzc;->p:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2, p1}, Ldxb;->y(Ljava/lang/CharSequence;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Lnzg;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lnzh;->j()Lnzg;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, v0}, Ldxb;->l(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2, p1}, Ldxb;->j(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lnzh;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    invoke-virtual {p2, p0}, Ldxb;->k(Z)V

    goto/32 :goto_a

    nop

    nop
.end method

.method public final d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Ldvd;->d(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p2}, Lnzh;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_1

    nop

    nop
.end method

.method public final j()Lnzg;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lnzh;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

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
    iget-object p0, p0, Lnzh;->a:Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m()Ljava/lang/CharSequence;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    move-object v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v1, Lnzg;

    nop

    goto/32 :goto_d

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

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0, p0, v2}, Lnzg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-object v1

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop
.end method
