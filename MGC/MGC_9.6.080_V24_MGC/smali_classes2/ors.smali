.class public Lors;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, v0}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "com.google.android.gms.usagereporting.internal.IUsageReportingCallbacks"

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


# virtual methods
.method public b(Lcom/google/android/gms/common/api/Status;Lorr;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Not implemented."

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public c(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "Not implemented."

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public d(Lcom/google/android/gms/common/api/Status;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "Not implemented."

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

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_1
    goto/16 :goto_52

    nop

    nop

    :pswitch_0
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_21

    nop

    nop

    :goto_4
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_6
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_51

    nop

    nop

    :goto_9
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    const-string p3, "Not implemented"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_33

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    :pswitch_1
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p0

    nop

    :pswitch_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_15
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_16
    check-cast p0, Lorf;

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    :goto_1b
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1d
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    throw p0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_47

    nop

    nop

    :goto_1f
    sget-object p0, Lore;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_20
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_23
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_24
    throw p0

    nop

    nop

    :pswitch_4
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    sget-object p3, Lorr;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_28
    const-string v0, "Not implemented."

    nop

    nop

    nop

    nop

    packed-switch p1, :pswitch_data_0

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2a
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    sget-object p0, Lorl;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p0, Lore;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_2d
    throw p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    :pswitch_6
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    throw p0

    nop

    :pswitch_7
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_32
    sget-object p0, Lore;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_33
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_35
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_36
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p0, Landroid/app/PendingIntent;

    nop

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

    nop

    :goto_38
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_39
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3a
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3d
    throw p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Lorl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_41
    invoke-static {p2}, Lfuo;->e(Landroid/os/Parcel;)Z

    goto/32 :goto_1f

    nop

    nop

    :goto_42
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_44
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_45
    new-instance p0, Ljava/lang/IllegalStateException;

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

    :goto_46
    throw p0

    nop

    :pswitch_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_47
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

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

    :goto_48
    invoke-virtual {p0, p1}, Lors;->c(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_4b
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4d
    return p0

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    throw p0

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_4f
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_50
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p0, p1, p3}, Lors;->b(Lcom/google/android/gms/common/api/Status;Lorr;)V

    :goto_52
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_54
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_55
    throw p0

    nop

    :pswitch_c
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sget-object p0, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_57
    check-cast p0, Lore;

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

    nop

    nop

    :goto_58
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5a
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5b
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto :goto_52

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Lcom/google/android/gms/common/api/Status;

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

    :goto_5e
    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_9
        :pswitch_0
        :pswitch_d
        :pswitch_2
        :pswitch_5
        :pswitch_b
        :pswitch_c
        :pswitch_7
        :pswitch_6
        :pswitch_3
        :pswitch_4
        :pswitch_8
        :pswitch_1
        :pswitch_a
    .end packed-switch

    :goto_5f
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_48

    nop

    nop

    :goto_62
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_64
    check-cast p0, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_66
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

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

    :goto_68
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    check-cast p3, Lorr;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_6b
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6c
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6d
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

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

    nop

    :goto_6e
    invoke-static {p2, p0}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p0

    nop

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

    :goto_6f
    sget-object p0, Lorf;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_71
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_72
    sget-object p0, Lore;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, p1}, Lors;->d(Lcom/google/android/gms/common/api/Status;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p0, Lore;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_77
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4e

    nop

    nop

    :goto_78
    sget-object p0, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop
.end method
