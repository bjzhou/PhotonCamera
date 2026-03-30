.class public final Lnfa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Landroid/widget/TextView;

.field final synthetic b:Landroid/widget/Button;

.field final synthetic c:Landroid/widget/Button;

.field final synthetic d:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;Landroid/widget/TextView;Landroid/widget/Button;Landroid/widget/Button;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnfa;->d:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    goto/32 :goto_2

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p3, p0, Lnfa;->b:Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p4, p0, Lnfa;->c:Landroid/widget/Button;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Lnfa;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Lnfa;->d:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    const/16 p3, 0x18

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    const/16 p3, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v3, ")"

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p3, p3, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    iput-object p2, p3, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a:Ljava/lang/String;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    :goto_d
    const-string v3, " (Key Code: "

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

    :goto_e
    iget-object p1, p0, Lnfa;->c:Landroid/widget/Button;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    const p1, 0x8000

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_12
    if-eqz p3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_14
    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lnfa;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_16
    iput-object p1, p2, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->b:Ljava/lang/String;

    nop

    nop

    :goto_17
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p2, p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p2, p0, Lnfa;->d:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    if-ne p2, p3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne p2, p3, :cond_4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p3, p0, Lnfa;->d:Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_22
    iget-object p0, p0, Lnfa;->a:Landroid/widget/TextView;

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

    :goto_23
    if-ne p2, p3, :cond_5

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2

    nop

    nop

    :goto_25
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v1}, Landroid/widget/Button;->setEnabled(Z)V

    :goto_28
    goto/32 :goto_e

    nop

    nop

    :goto_29
    if-ne p3, p2, :cond_6

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    const/4 p3, 0x4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

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

    :goto_2c
    goto :goto_28

    nop

    :goto_2d
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2e
    iget-object p1, p0, Lnfa;->b:Landroid/widget/Button;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2f
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v0, 0x1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    iget-object p3, p0, Lnfa;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_33
    const-string p2, "Error: Key is not supported by Pixel Camera"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v3, "New Key Bind: "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lnfa;->b:Landroid/widget/Button;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_37
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_7

    nop

    nop

    :goto_38
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->sendAccessibilityEvent(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    const/16 p3, 0x16

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {p3}, Lcom/google/android/apps/camera/ui/preference/KeyListenerPreference;->a(Landroid/view/KeyEvent;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop
.end method
