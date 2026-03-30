.class public Lcom/Fc;
.super Landroid/preference/ListPreference;
.source "PG"


# instance fields
.field final synthetic this$1:Landroid/preference/PreferenceGroup;

.field final synthetic this$2:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lcom/Fc;->this$2:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lcom/Fc;->this$1:Landroid/preference/PreferenceGroup;

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
    invoke-direct {p0, p1}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

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
.end method


# virtual methods
.method public getHelp()Ljava/lang/String;
    .locals 4

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/Fc;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v1, "preview_help"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/Fc;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v1, "merge_key"

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_7
    const-string v1, "\n   8 bit:  16 / 255\n  10 bit:  64 / 1023\n  12 bit:  256 / 4095\n  14 bit:  1024 / 16383\n  16 bit:  4096 / 65535"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    const-string v1, " \n - Wiener merge is no sabre alignment\n - SABRE merge is Sabre Alignment\n - Spatial Bayer is shasta bracketing\n - Spatial RGB is shasta bracketing (processing longer)"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_9
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    const-string v1, "wl_key"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-virtual/range {v0 .. v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "preview_key"

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/Fc;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/Fc;->getKey()Ljava/lang/String;

    move-result-object v0

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

    :goto_18
    goto/32 :goto_20

    nop

    nop

    :goto_19
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1a
    const-string v1, "bl_help"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

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

    :goto_1c
    invoke-virtual {p0}, Lcom/Fc;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v2, "string"

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual/range {v0 .. v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-object v0

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0}, Lcom/Fc;->getKey()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_25
    return-object v1

    nop

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_28
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2b
    const-string v2, "string"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2c
    const v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    return-object v1

    nop

    nop

    :goto_2e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

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

    :goto_30
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, "bl_key"

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 3

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/Fc;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

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
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    const v0, 0x9

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

    nop

    :goto_8
    if-ge v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_b

    nop

    :goto_a
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

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

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    const-string v0, " ..."

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v2, 0x18

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

    :goto_14
    const v1, 0x11

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, "HELP"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setTextColor(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v2, Lcom/Fc$0;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/Fc;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/app/AlertDialog;

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
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto :goto_4

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    :goto_10
    const/16 v2, 0x8

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v2, p0, v0, v3}, Lcom/Fc$0;-><init>(Lcom/Fc;Landroid/app/AlertDialog;Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v1, -0x3

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

    :goto_15
    const v1, 0x20

    nop

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

    :goto_16
    const v0, 0x5

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

    :goto_17
    const/high16 v2, -0x10000

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/Fc;->getHelp()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method
