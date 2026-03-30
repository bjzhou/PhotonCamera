.class public Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;
.super Landroid/preference/DialogPreference;
.source "PG"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "-1"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->33f5b80483094659737b73d90f80a8a4m()V

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

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->33f5b80483094659737b73d90f80a8a4m()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static a(Landroid/view/KeyEvent;)Ljava/lang/String;
    .locals 2

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0xa

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    packed-switch p0, :pswitch_data_0

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    const-string p0, "Right Arrow"

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

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

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :goto_8
    goto/32 :goto_d

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_b
    const/16 v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getUnicodeChar()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    :goto_e
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2c

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

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    const-string p0, "Enter"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    if-ne p0, v0, :cond_2

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

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string p0, "Space"

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x3e

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2a

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    :goto_18
    const v1, 0x7

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    const-string p0, "Up Arrow"

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

    :goto_1a
    const-string p0, ""

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-char p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_2a

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_4
    goto/32 :goto_2

    nop

    :goto_20
    const/16 v0, 0x3c

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

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

    :goto_22
    const/16 v0, 0x42

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-ne p0, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_26
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p0, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->TCUKnpgekVXbm:Ljava/lang/String;

    nop

    nop

    :goto_2a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto :goto_2a

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2d
    const/16 v0, 0x3b

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_2f
    goto :goto_2a

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_35

    nop

    nop

    :goto_30
    if-ne v0, v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_31
    goto :goto_2a

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_33
    const-string p0, "Down Arrow"

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eq v0, v1, :cond_7

    nop

    goto/32 :goto_25

    nop

    :cond_7
    goto/32 :goto_24

    nop

    nop

    :goto_35
    const-string p0, "Left Arrow"

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final b(Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->persistString(Ljava/lang/String;)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->notifyChanged()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

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

    :goto_6
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->shouldDisableDependents()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    new-instance v0, Landroid/view/KeyEvent;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "-1"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    goto :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_19
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1a
    const-string v0, "None"

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

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0, v1, v2}, Landroid/view/KeyEvent;-><init>(II)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->notifyDependencyChange(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic getSummary()Ljava/lang/CharSequence;
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

    nop

    :goto_1
    invoke-static {p0}, Lrrf;->H(Ljava/lang/String;)Z

    move-result v0

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
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

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

    :goto_4
    const-string p0, "None"

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method protected final onClick()V
    .locals 7

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    :goto_1
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v1, -0x1000000

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_4
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_8
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setDescendantFocusability(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_c
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v6, 0x60000

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

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

    :goto_11
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextSize(F)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

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

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v1, Lnfa;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

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

    :goto_19
    invoke-super {p0}, Landroid/preference/DialogPreference;->onClick()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    check-cast v1, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

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

    :goto_1c
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->setNegativeButtonText(Ljava/lang/CharSequence;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v4, p0, v2, v5, v3}, Lnez;-><init>(Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    const v1, 0x2

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_26
    const v1, 0x1020002

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0, v2, v3, v5}, Lnfa;-><init>(Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_28
    const v2, 0x102000b

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v4, Lnez;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2a
    const-string v0, "Reset"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2b
    const-string v0, ")\nPress key to rebind"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v5, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_2d
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v2, Landroid/widget/TextView;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v0, Landroid/app/AlertDialog;

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

    :goto_32
    const-string v1, "Current Key Bind: None\nPress key to bind"

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_33
    const/high16 v1, 0x41900000    # 18.0f

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

    :goto_34
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_36
    const-string v3, "Current Key Bind: "

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

    :goto_37
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const-string v0, " (Key Code: "

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3a
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "Bind Key to "

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

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v6, "-1"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_40
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_41
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_1

    nop
.end method

.method protected final onDialogClosed(Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onDialogClosed(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_4

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
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    :goto_6
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method protected final onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string p0, "-1"

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    move-object p1, p2

    nop

    goto/32 :goto_6

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
    sget-object p1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->CeKbatuQ:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p1, Ljava/lang/String;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop
.end method
