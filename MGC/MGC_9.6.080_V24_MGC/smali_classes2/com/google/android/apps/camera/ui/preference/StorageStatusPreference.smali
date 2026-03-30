.class public Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;
.super Landroid/preference/Preference;
.source "PG"


# static fields
.field private static final e:Landroid/graphics/Typeface;


# instance fields
.field public a:J

.field public b:J

.field public c:I

.field public d:I

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ProgressBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    const-string v0, "sans-serif-medium"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const v1, 0x13

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_6

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

    :goto_d
    sput-object v0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->e:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-wide/16 v0, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    const v0, 0x4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

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

    :goto_a
    const v1, 0x7

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

    :goto_b
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

    nop

    goto/32 :goto_3

    nop

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-wide/16 p1, -0x1

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

    :goto_3
    return-void

    nop

    :goto_4
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    nop

    nop

    goto/32 :goto_1

    nop

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

    :goto_0
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const-wide/16 p1, -0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 9

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v4, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->d:I

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2
    iget-wide v3, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3
    const v6, 0x7f12000c

    nop

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

    :goto_4
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v0, v6, :cond_0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v3, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_a
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v4, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->e:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v3, v7, v4, v2, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_13
    long-to-float v1, v1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_15
    new-instance v3, Landroid/text/SpannableString;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_18
    long-to-float v3, v5

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_54

    nop

    nop

    :goto_1a
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-wide v5, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a:J

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    :cond_3
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    iget-wide v1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->b:J

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

    :goto_1f
    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

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

    :goto_20
    const v4, 0x7f1406b4

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v6, v4, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v7, v8}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    int-to-long v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const v5, 0x7f120008

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1b

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v3, 0x7f1406b6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2b
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance v2, Landroid/text/style/TypefaceSpan;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/16 v5, 0x21

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2f
    if-eqz v3, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_30
    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_31
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_2a

    nop

    nop

    :goto_34
    if-ne v4, v6, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_6
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->c:I

    nop

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

    nop

    :goto_36
    sub-float/2addr v4, v1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_37
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_38
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v4, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

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

    :goto_3b
    const v1, 0x4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3c
    div-float v1, v3, v1

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v6, -0x1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_3f
    iget v3, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v8, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->e:Landroid/graphics/Typeface;

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

    :goto_42
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->h:Landroid/widget/ProgressBar;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_43
    iget v3, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->d:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_44
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->f:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->g:Landroid/widget/TextView;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_47
    new-instance v7, Landroid/text/style/TypefaceSpan;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_48
    invoke-direct {v2, v4}, Landroid/text/style/TypefaceSpan;-><init>(Landroid/graphics/Typeface;)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0, v5, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

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

    nop

    :goto_4a
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->f:Landroid/widget/TextView;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3, v2, v0, v1, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :goto_4d
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4f
    add-int/2addr v1, v0

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_50
    cmp-long v3, v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_51
    invoke-virtual {p0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_52
    goto/32 :goto_53

    nop

    nop

    :goto_53
    return-void

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v1, v3, v4}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onBindView(Landroid/view/View;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->f:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f0b046b

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->g:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->h:Landroid/widget/ProgressBar;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    check-cast p1, Landroid/widget/ProgressBar;

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

    :goto_9
    const v0, 0x7f0b046c

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/preference/StorageStatusPreference;->a()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7f0b046d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v0, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop
.end method
