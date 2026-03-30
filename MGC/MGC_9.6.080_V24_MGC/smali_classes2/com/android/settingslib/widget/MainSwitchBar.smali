.class public Lcom/android/settingslib/widget/MainSwitchBar;
.super Landroid/widget/LinearLayout;
.source "PG"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field protected a:Landroid/widget/TextView;

.field protected b:Landroid/widget/Switch;

.field private final c:Ljava/util/List;

.field private d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

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

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settingslib/widget/MainSwitchBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p3, p4, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p4, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const p4, 0x7f0b047b

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->setFocusable(Z)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_6
    invoke-virtual {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object p3, Leem;->f:[I

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    new-instance p3, Ljava/util/ArrayList;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p4, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p3}, Landroid/widget/Switch;->isChecked()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    if-nez p3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_10
    iget-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->c:Ljava/util/List;

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

    :goto_12
    invoke-virtual {p3, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/widget/Switch;->isChecked()Z

    move-result p1

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

    :goto_15
    invoke-virtual {p0, p3}, Lcom/android/settingslib/widget/MainSwitchBar;->a(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->findViewById(I)Landroid/view/View;

    move-result-object p4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object p4, p0, Lcom/android/settingslib/widget/MainSwitchBar;->d:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p4, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p4, p0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7f0e0142

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast p4, Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    iget-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1d
    new-instance p4, Lfhw;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 p2, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, p4}, Lcom/android/settingslib/widget/MainSwitchBar;->setClickable(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p4, v0, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz p3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_23
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_24
    goto/32 :goto_26

    nop

    nop

    :goto_25
    iget-object p3, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

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

    :goto_26
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :goto_27
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const p4, 0x7f0b01e5

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_29
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->f875135777c17da3cef2ea6eeff5be29m(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p3, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p4

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2c
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    invoke-interface {p3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_30
    const p4, 0x1020040

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_31
    const/4 p4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_32
    invoke-direct {p4, p0}, Lfhw;-><init>(Lcom/android/settingslib/widget/MainSwitchBar;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p3}, Landroid/widget/Switch;->getVisibility()I

    move-result p3

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Z)V
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->d:Landroid/view/View;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/view/View;->setActivated(Z)V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settingslib/widget/MainSwitchBar;->f875135777c17da3cef2ea6eeff5be29m(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

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

    :goto_2
    return-void

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

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

    :goto_4
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1, p2}, Lfhy;->a(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int/lit8 v0, v0, 0x1

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

    :goto_c
    check-cast v1, Lfhy;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->c:Ljava/util/List;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_11
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    if-lt v0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0, p2}, Lcom/android/settingslib/widget/MainSwitchBar;->f875135777c17da3cef2ea6eeff5be29m(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lfhx;

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

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-boolean v1, p1, Lfhx;->a:Z

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v1, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    iget-boolean v0, p1, Lfhx;->b:Z

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

    :goto_9
    goto :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v0, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->f875135777c17da3cef2ea6eeff5be29m(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-boolean v0, p1, Lfhx;->a:Z

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

    :goto_11
    iget-boolean p1, p1, Lfhx;->b:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

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

    :goto_13
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_14
    move-object p1, p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Lfhx;->getSuperState()Landroid/os/Parcelable;

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
    iget-boolean v0, p1, Lfhx;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

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

    :goto_1b
    rem-int v0, v0, v1

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

    :goto_1c
    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->requestLayout()V

    goto/32 :goto_25

    nop

    nop

    :goto_1e
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_23

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

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setVisibility(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->a(Z)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_b

    nop

    :goto_23
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    iput-boolean p0, v1, Lfhx;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_6
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/android/settingslib/widget/MainSwitchBar;->getVisibility()I

    move-result p0

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

    :goto_8
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    :goto_c
    const v1, 0x8

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    goto :goto_b

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iput-boolean v0, v1, Lfhx;->a:Z

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v1, v0}, Lfhx;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    new-instance v1, Lfhx;

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

    :goto_17
    const v0, 0xb

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop
.end method

.method public final performClick()Z
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/widget/Switch;->performClick()Z

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

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

    nop

    :goto_3
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result p0

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

.method public final setEnabled(Z)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/widget/MainSwitchBar;->d:Landroid/view/View;

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

    :goto_1
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->d:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/widget/Switch;->isChecked()Z

    move-result p0

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

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

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

    :goto_7
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->b:Landroid/widget/Switch;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/android/settingslib/widget/MainSwitchBar;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Landroid/view/View;->setActivated(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
