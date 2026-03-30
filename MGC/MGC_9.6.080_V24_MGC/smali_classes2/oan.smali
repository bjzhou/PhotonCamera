.class public final Loan;
.super Lld;
.source "PG"


# instance fields
.field public final b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

.field public final c:Ljava/lang/Runnable;

.field public final d:Ljava/lang/Runnable;

.field public e:Z

.field public final f:I

.field public g:I

.field public final h:Ljava/lang/CharSequence;

.field private i:Ldvd;


# direct methods
.method private final 33b3102b6558811a7b7629a1e8e59bd2m()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aG()V

    goto/32 :goto_1

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
    iget-object p0, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;)V
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_2
    iget-object v0, v1, Landroid/util/TypedValue;->string:Ljava/lang/CharSequence;

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0}, Loal;-><init>(Loan;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Loan;->c:Ljava/lang/Runnable;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2b

    nop

    nop

    :goto_d
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Loan;->h:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    const v1, 0x7f1407dd

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Lnzk;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v0, Lnue;

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

    :goto_14
    new-instance v1, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->aA(Lkg;)V

    goto/32 :goto_25

    nop

    nop

    :goto_16
    const/4 v2, 0x1

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

    nop

    nop

    :goto_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Loal;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    iput v0, p0, Loan;->f:I

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

    :goto_1b
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aG()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v1, 0xd

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, p0, v1}, Lnue;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    const/16 v1, 0xe

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

    :goto_20
    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_21
    goto/32 :goto_18

    nop

    :goto_22
    iput-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_23
    const v3, 0x7f040003

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_24
    new-instance v0, Lnzk;

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

    :goto_25
    return-void

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

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

    :goto_28
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->ac:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object v0, p0, Loan;->d:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1}, Lld;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    :goto_2e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Lnue;

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

    :goto_32
    iput v0, p0, Loan;->g:I

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
.end method


# virtual methods
.method public final c(Landroid/view/View;Ldxb;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aG()V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v0, 0x10

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2
    iget-object p0, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Lkl;->ao()I

    move-result p1

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

    nop

    :goto_5
    sget-object p0, Ldxa;->n:Ldxa;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_8
    iget v0, p1, Landroid/support/v7/widget/LinearLayoutManager;->k:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-super {p0, p1, p2}, Lld;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_25

    nop

    nop

    :goto_b
    invoke-virtual {p2, p0}, Ldxb;->G(Ldxa;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    instance-of v0, p1, Landroid/support/v7/widget/LinearLayoutManager;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, p0}, Ldxb;->G(Ldxa;)V

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_23

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    move v2, p1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move v2, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2, p1}, Ldxb;->n(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
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

    :goto_17
    goto :goto_13

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_19
    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->m:Lkl;

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

    :goto_1a
    if-ne v1, v0, :cond_1

    nop

    nop

    goto/32 :goto_18

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

    :goto_1b
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1c
    invoke-static {v2, p1, v1}, Lfdn;->ag(III)Lfdn;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1d
    sget-object p0, Ldxa;->m:Ldxa;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    :goto_20
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    :goto_22
    move p1, v1

    nop

    nop

    :goto_23
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast p1, Landroid/support/v7/widget/LinearLayoutManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_25
    iget-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-ne v1, v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    iget-object p2, p0, Loan;->d:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

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
    add-int v0, v0, v1

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

    :goto_3
    invoke-virtual {p1, p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

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

    nop

    nop

    :goto_5
    iget p1, p0, Loan;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Loan;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

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

    :goto_9
    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-eq p2, p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p2, p0, Loan;->d:Ljava/lang/Runnable;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, -0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    if-ne p1, p3, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    if-ne p1, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p3}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    iget-object p1, p0, Loan;->b:Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->aG()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const p2, 0x8000

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_16
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_19
    const/high16 p2, 0x10000

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

    :goto_1a
    const v1, 0xd

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_4

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_1c
    const/16 p3, 0x80

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

    :goto_1d
    invoke-virtual {p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/CenteredRecyclerView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x15

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

    :goto_1f
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_21
    return v1

    nop

    nop

    :goto_22
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    :goto_24
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-boolean v1, p0, Loan;->e:Z

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/view/View;)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    :goto_28
    if-ne p1, p2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_29
    return v0

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v1

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    :goto_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2, p3}, Lld;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-ne p2, v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_9
    const/4 v1, 0x0

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

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

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

    :goto_d
    const/16 v0, 0x2000

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

    :goto_e
    return v1

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0x1000

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0}, Loan;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ne p2, v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Loan;->33b3102b6558811a7b7629a1e8e59bd2m()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j()Ldvd;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    iget-object v0, p0, Loan;->i:Ldvd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Loan;->i:Ldvd;

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
    new-instance v0, Loam;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Loan;->i:Ldvd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Loam;-><init>(Loan;)V

    goto/32 :goto_3

    nop

    nop
.end method
