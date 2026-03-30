.class public final Lort;
.super Lfun;
.source "PG"

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p2}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lort;->b:Ljava/lang/Object;

    nop

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

    :goto_3
    new-instance p2, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const-string p2, "com.google.vr.vrcore.controller.api.IControllerServiceListener"

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    iput p2, p0, Lort;->a:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Loiz;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p2}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lort;->b:Ljava/lang/Object;

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

    :goto_3
    iput p2, p0, Lort;->a:I

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string p2, "com.google.android.gms.usagereporting.internal.IUsageReportingOptInOptionsChangedListener"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpic;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lort;->b:Ljava/lang/Object;

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

    :goto_1
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput p2, p0, Lort;->a:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p2, Lcom/google/android/apps/camera/jni/gyro/xfsr/FACWQLkhP;->piLjEWJwz:Ljava/lang/String;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p2}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public constructor <init>(Lqxk;I)V
    .locals 0

    goto/32 :goto_3

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

    nop

    :goto_1
    const-string p2, "com.google.vr.vrcore.controller.api.IControllerListener"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iput p2, p0, Lort;->a:I

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

    :goto_4
    invoke-direct {p0, p2}, Lfun;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    new-instance p2, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iput-object p2, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method protected final y(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 6

    goto/32 :goto_a9

    nop

    nop

    :goto_0
    if-ne p1, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    goto/32 :goto_8e

    nop

    nop

    :goto_4
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v3

    nop

    nop

    :pswitch_0
    goto/32 :goto_ef

    nop

    nop

    :goto_6
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    check-cast p0, Lpic;

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_8
    return v3

    nop

    nop

    :goto_9
    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p3, Lopn;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    :goto_d
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_72

    nop

    nop

    :goto_e
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_f
    iput p2, p1, Ltth;->e:I

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_10
    return v3

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-eq p1, v1, :cond_1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :cond_1
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_f8

    nop

    nop

    :goto_14
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_15
    return v2

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    sget-object p3, Lopi;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_18
    if-eqz p0, :cond_2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_2
    :goto_19
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :goto_1b
    new-instance v0, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_20
    check-cast p3, Loph;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_116

    nop

    nop

    :goto_25
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    :goto_28
    return v3

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3d

    nop

    nop

    :goto_29
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p1, Ltth;

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_102

    nop

    :goto_2f
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_102

    nop

    :cond_3
    goto/32 :goto_101

    nop

    :goto_31
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_32
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_34
    sget p0, Lfuo;->a:I

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_36
    check-cast p0, Lpic;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_38
    return v3

    nop

    nop

    :goto_39
    packed-switch p1, :pswitch_data_1

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_3a
    new-instance p1, Lory;

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_3c
    iget p2, p0, Lqxk;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object p1, Lttd;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_3f
    iget-object v4, p0, Lqxk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_41
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    sget-object p3, Lopp;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_44
    return v3

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_47
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_48
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    :goto_49
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    :goto_4a
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    nop

    goto/32 :goto_ab

    nop

    nop

    :goto_4b
    check-cast p0, Lqxk;

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    :goto_4c
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4d
    check-cast p0, Lpic;

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_51
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_52
    move v2, v3

    nop

    nop

    nop

    :goto_53
    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object p0, p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    if-ne p1, v3, :cond_4

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_59
    return v3

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_127

    nop

    nop

    nop

    :goto_5a
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p1, p2}, Lttd;->d(I)V

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_5c
    const-wide/16 v0, 0x12c

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_5d
    iget-wide v0, p1, Lttc;->g:J

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_5e
    sget-object p3, Loph;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-direct {p1, p0, v3}, Lttk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_62
    check-cast p3, Lopl;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_63
    invoke-static {p1, v4, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object p1, Lttc;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    return v3

    nop

    :pswitch_3
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_67
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    :goto_68
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-eqz p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-interface {p0, p1, p3}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->d(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast p0, Lqxk;

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_6d
    if-ne p1, v1, :cond_6

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

    :cond_6
    packed-switch p1, :pswitch_data_0

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_6e
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_70
    check-cast p0, Lpic;

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_71
    sget-object p3, Loph;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-ne p1, v1, :cond_7

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_136

    nop

    nop

    :goto_75
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    :goto_77
    move v2, v3

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_78
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_7a
    goto/16 :goto_40

    nop

    :goto_7b
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_7c
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_7d
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    sget-object p3, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget p2, p0, Lqxk;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_82
    new-instance p1, Lttk;

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_d8

    nop

    :pswitch_4
    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d4

    nop

    nop

    :goto_85
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    :goto_86
    check-cast p0, Lpic;

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

    :goto_87
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_88
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_89
    check-cast p1, Lttc;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p1, Lttd;

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8c
    return v3

    nop

    :pswitch_5
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_8e
    iget p2, p0, Lqxk;->a:I

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

    :goto_8f
    invoke-virtual {p1}, Lttd;->c()V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_90
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-static {p1, p2, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_93
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_94
    sget p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->h:I

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_95
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_96
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_9b
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_9c
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast p0, Lpic;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a0
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_a1
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_a2
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_132

    nop

    nop

    :goto_a3
    invoke-interface {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->c(Ltth;)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_a4
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_13f

    nop

    nop

    :goto_a5
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_139

    nop

    nop

    :goto_a6
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

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

    :goto_a7
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    const v0, 0x5

    nop

    nop

    goto/32 :goto_144

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    return v3

    nop

    :pswitch_6
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_ac
    cmp-long v0, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    return v3

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/16 :goto_d8

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_be

    nop

    nop

    :goto_b1
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b2
    return v3

    nop

    nop

    :goto_b3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p0, Lpic;

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

    :goto_b5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/32 :goto_69

    nop

    nop

    :goto_b6
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_b7
    cmp-long p2, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-interface {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->b(Lttc;)V

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-interface {p0, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->a(Lttd;)V

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_138

    nop

    nop

    :goto_bb
    if-gtz v0, :cond_8

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_8
    goto/32 :goto_1b

    nop

    nop

    :goto_bc
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    if-eqz p0, :cond_9

    nop

    goto/32 :goto_e2

    nop

    nop

    :cond_9
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_bf
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast p3, Lopn;

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_c2
    return v3

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_13e

    nop

    nop

    nop

    :goto_c3
    check-cast p0, Lqxk;

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_c4
    if-ne p1, v3, :cond_a

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_a
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-ne v0, v1, :cond_b

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_b
    goto/32 :goto_57

    nop

    nop

    :goto_c6
    iget-wide p2, p1, Lttc;->g:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    :goto_c9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_ca
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_cd
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    :goto_cf
    sub-long/2addr p2, v0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_d2
    iget v0, p0, Lort;->a:I

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

    :goto_d3
    if-eqz p0, :cond_c

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_d5
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    if-eqz p0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    :cond_d
    :goto_d8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d9
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast p3, Lopi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_73

    nop

    nop

    :goto_dc
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    return v2

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/16 v5, 0x19

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_e0
    check-cast p3, Loph;

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

    :goto_e1
    goto :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e3
    iget-object p0, p0, Lqxk;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-virtual {p0, p1}, Loiz;->b(Loiy;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_e6
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_65

    nop

    nop

    nop

    :goto_e7
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    return v2

    nop

    :pswitch_a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    sget-object p3, Lopl;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_eb
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_ec
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    sget-object p2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_ef
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_f0
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_f1
    const-string p3, "VrCtl.ServiceBridge"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    invoke-direct {p1}, Lory;-><init>()V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_f5
    return v3

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_f6
    check-cast p0, Lpic;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_f7
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    return v3

    nop

    nop

    :pswitch_c
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f9
    invoke-interface {v4, p3, v3}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_fb
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_fc
    check-cast p1, Lcom/google/android/gms/common/api/Status;

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

    :goto_fd
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_fe
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    if-eqz p0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    const-string v1, "Experiencing large controller packet delivery time between service and  client: timestamp diff in ms: "

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_101
    goto/32 :goto_122

    nop

    nop

    :goto_102
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_103
    goto/16 :goto_3

    nop

    nop

    :goto_104
    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_105
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_106
    return v3

    nop

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_107
    return v3

    nop

    nop

    :pswitch_e
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_108
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_109
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_10a
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    return v3

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_10c
    goto/16 :goto_d8

    nop

    nop

    :goto_10d
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_10e
    check-cast p0, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_10f
    invoke-virtual {p1, p2}, Lttd;->d(I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_111
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {p2, v0, v1, p3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide p2

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_113
    invoke-virtual {p1}, Lttd;->c()V

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_115
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_116
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_117
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_118
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_119
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_11b
    check-cast p0, Lqxk;

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11c
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    :goto_11d
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_11e
    if-ne v0, v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_10
    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_120
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_121
    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_9
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_8
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_7
        :pswitch_13
        :pswitch_b
        :pswitch_e
        :pswitch_2
        :pswitch_3
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_5
        :pswitch_a
    .end packed-switch

    :goto_122
    goto/32 :goto_2e

    nop

    nop

    :goto_123
    check-cast p0, Loiz;

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_124
    invoke-static {p1, p3, p0}, Lolx;->aE(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lpic;)V

    goto/32 :goto_ae

    nop

    nop

    :goto_125
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_126
    return v3

    nop

    :pswitch_10
    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_127
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_128
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_129
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12a
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_12b
    check-cast p0, Lpic;

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_12c
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    check-cast p1, Lcom/google/android/gms/common/api/Status;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_12e
    sget-object p1, Ltth;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_12f
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_130
    invoke-static {p1, p0}, Lolx;->aD(Lcom/google/android/gms/common/api/Status;Lpic;)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_131
    invoke-static {p2, p3}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_132
    iget-object p0, p0, Lort;->b:Ljava/lang/Object;

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

    nop

    :goto_133
    check-cast p0, Lqxk;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_134
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_135
    return v3

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_136
    goto/16 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_137
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_138
    check-cast p0, Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    return v3

    nop

    nop

    :pswitch_12
    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_13a
    check-cast p0, Lpic;

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-static {p2}, Lfuo;->b(Landroid/os/Parcel;)V

    goto/32 :goto_ba

    nop

    nop

    :goto_13c
    goto/16 :goto_d8

    nop

    :goto_13d
    goto/32 :goto_81

    nop

    nop

    :goto_13e
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13f
    return v3

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_7c

    nop

    nop

    :goto_140
    if-eqz p2, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_141
    invoke-static {p2, p1}, Lfuo;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_142
    if-eqz v4, :cond_12

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    :cond_12
    goto/32 :goto_99

    nop

    nop

    :goto_143
    check-cast p3, Lopp;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :goto_144
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop
.end method
