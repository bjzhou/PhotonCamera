.class final Lonn;
.super Lons;
.source "PG"


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Ljava/lang/ref/WeakReference;

.field final synthetic c:Lono;


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/ref/WeakReference;Lono;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lonn;->c:Lono;

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
    iput-object p2, p0, Lonn;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iput-object p1, p0, Lonn;->a:Landroid/content/Intent;

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

    :goto_4
    invoke-direct {p0}, Lons;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Lcom/google/android/gms/googlehelp/GoogleHelp;)V
    .locals 9

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v7, v2}, Landroid/os/Parcel;->setDataPosition(I)V

    goto/32 :goto_16

    nop

    nop

    :goto_3
    add-int/lit8 v5, v5, 0x1

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

    :goto_4
    invoke-virtual {v1, p0}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->j(Lohn;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_7
    invoke-static {v4, p1, v2}, Lolf;->b(Lonl;Landroid/os/Parcel;I)V

    goto/32 :goto_3d

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_36

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Locn;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget v1, Logd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const-string v3, "EXTRA_IN_PRODUCT_HELP"

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, p1, Lcom/google/android/gms/googlehelp/GoogleHelp;->z:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_12
    new-instance p1, Loof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object v4, Lonl;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_14
    if-nez v7, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4, v6, v7, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v4, v7}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

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

    :goto_17
    invoke-virtual {p1, v2}, Loof;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_1f

    nop

    nop

    :goto_18
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_46

    nop

    :goto_1c
    iget-object v1, p0, Lonn;->c:Lono;

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v4}, Lolx;->ag(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v4, Lolm;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1f
    sget-object p0, Lcom/google/android/gms/common/api/Status;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v3, 0xb

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto/32 :goto_18

    nop

    nop

    :goto_23
    invoke-direct {p1, v2}, Loof;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v1, "EXTRA_START_TICK"

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v7, v6, v2, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    goto/32 :goto_2

    nop

    nop

    :goto_28
    invoke-virtual {v0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_29
    if-lt v5, v6, :cond_4

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2b
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2d
    if-eqz v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :goto_2f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_31
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_32
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    :goto_33
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    :goto_35
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_55

    nop

    nop

    :goto_37
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

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

    :goto_39
    check-cast v4, Lonl;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v2, v0, p0, v3, v5}, Locn;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->h(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3c
    move-object v4, v5

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_33

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_43
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_44
    instance-of v7, v6, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_45
    iget-object p0, p0, Lonn;->a:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_46
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Lonn;->c:Lono;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_49
    iput-object p1, v4, Lonl;->a:Lcom/google/android/gms/googlehelp/GoogleHelp;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4a
    check-cast v0, Landroid/app/Activity;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_4d
    const-string v6, "action_bar"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    :goto_50
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_52
    iget-object v0, p0, Lonn;->a:Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_53
    array-length v8, v6

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iput-object v3, v1, Lcom/google/android/gms/googlehelp/internal/common/TogglingData;->c:Ljava/lang/String;

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_1c

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_58
    move v5, v2

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v4, :cond_9

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v7, "id"

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v4

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v1, p1, Lcom/google/android/gms/googlehelp/GoogleHelp;->w:Lcom/google/android/gms/googlehelp/internal/common/TogglingData;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_5f
    iget-object v0, p0, Lonn;->b:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v2, 0x0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    check-cast v6, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_63
    sget-object p1, Lonp;->a:Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_36

    nop

    :goto_65
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_66
    check-cast v4, Landroid/view/ViewGroup;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const-string v3, "EXTRA_GOOGLE_HELP"

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop
.end method
