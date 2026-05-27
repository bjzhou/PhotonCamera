.class public final Ljnt;
.super Lcbf;

# interfaces
.implements Landroid/os/IInterface;


# instance fields
.field private final synthetic a:I

.field private final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Ljnt;->a:I

    const-string p2, "com.google.android.gms.auth.api.signin.internal.IRevocationService"

    invoke-direct {p0, p2}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V
    .locals 0

    iput p2, p0, Ljnt;->a:I

    const-string p2, "com.google.vr.vrcore.controller.api.IControllerServiceListener"

    invoke-direct {p0, p2}, Lcbf;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljfb;I)V
    .locals 0

    iput p2, p0, Ljnt;->a:I

    const-string p2, "com.google.android.gms.usagereporting.internal.IUsageReportingOptInOptionsChangedListener"

    invoke-direct {p0, p2}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkgd;I[B[B)V
    .locals 0

    iput p2, p0, Ljnt;->a:I

    const-string p2, "com.google.android.gms.phenotype.internal.IPhenotypeCallbacks"

    invoke-direct {p0, p2}, Lcbf;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Llpu;I[B)V
    .locals 0

    iput p2, p0, Ljnt;->a:I

    const-string p2, "com.google.vr.vrcore.controller.api.IControllerListener"

    invoke-direct {p0, p2}, Lcbf;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    return-void
.end method

.method private final b()V
    .locals 4

    iget-object v0, p0, Ljnt;->b:Ljava/lang/Object;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    check-cast v0, Landroid/content/Context;

    invoke-static {v0, v1}, Ljji;->d(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calling UID "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is not Google Play services."

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected final x(ILandroid/os/Parcel;Landroid/os/Parcel;)Z
    .locals 5

    iget v0, p0, Ljnt;->a:I

    const/4 v1, 0x3

    const/16 v2, 0x19

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    packed-switch p1, :pswitch_data_1

    goto/16 :goto_7

    :pswitch_0
    sparse-switch p1, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    sget-object p1, Lofj;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lofj;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llpu;

    if-nez p2, :cond_0

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_0
    sget p3, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->h:I

    iget-wide v0, p1, Lofj;->g:J

    const-wide/16 v2, 0x0

    cmp-long p3, v0, v2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    iget-wide v2, p1, Lofj;->g:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x12c

    cmp-long p3, v0, v2

    if-lez p3, :cond_2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Experiencing large controller packet delivery time between service and  client: timestamp diff in ms: "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "VrCtl.ServiceBridge"

    invoke-static {v0, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget p3, p2, Llpu;->a:I

    invoke-virtual {p1, p3}, Lofk;->d(I)V

    iget-object p2, p2, Llpu;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->b(Lofj;)V

    invoke-virtual {p1}, Lofk;->c()V

    const/4 v3, 0x1

    goto/16 :goto_2

    :sswitch_1
    sget-object p1, Lofn;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lofn;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llpu;

    if-nez p2, :cond_3

    const/4 v3, 0x1

    goto/16 :goto_2

    :cond_3
    iget p3, p2, Llpu;->a:I

    iput p3, p1, Lofn;->e:I

    iget-object p2, p2, Llpu;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->c(Lofn;)V

    return v4

    :sswitch_2
    sget-object p1, Lofk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lofk;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llpu;

    if-nez p2, :cond_4

    const/4 v3, 0x1

    goto :goto_2

    :cond_4
    iget p3, p2, Llpu;->a:I

    invoke-virtual {p1, p3}, Lofk;->d(I)V

    iget-object p2, p2, Llpu;->b:Ljava/lang/Object;

    invoke-interface {p2, p1}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->a(Lofk;)V

    invoke-virtual {p1}, Lofk;->c()V

    return v4

    :sswitch_3
    iget-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llpu;

    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_1

    :cond_5
    iget-object p1, p1, Llpu;->c:Ljava/lang/Object;

    :goto_1
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    sget p2, Lcbg;->a:I

    if-nez p1, :cond_6

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/4 v3, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-interface {p1, p3, v4}, Landroid/os/Parcelable;->writeToParcel(Landroid/os/Parcel;I)V

    const/4 v3, 0x1

    goto :goto_2

    :sswitch_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p3

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Llpu;

    if-nez p2, :cond_7

    const/4 v3, 0x1

    goto :goto_2

    :cond_7
    iget-object p2, p2, Llpu;->b:Ljava/lang/Object;

    invoke-interface {p2, p1, p3}, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge$Callbacks;->d(II)V

    return v4

    :sswitch_5
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :goto_2
    return v3

    :pswitch_1
    const/4 p2, 0x2

    if-ne p1, p2, :cond_8

    iget-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    new-instance p2, Ljps;

    invoke-direct {p2}, Ljps;-><init>()V

    check-cast p1, Ljfb;

    invoke-virtual {p1, p2}, Ljfb;->b(Ljfa;)V

    return v4

    :cond_8
    return v3

    :pswitch_2
    packed-switch p1, :pswitch_data_2

    goto/16 :goto_5

    :pswitch_3
    invoke-direct {p0}, Ljnt;->b()V

    iget-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ljav;->c(Landroid/content/Context;)Ljav;

    move-result-object p1

    invoke-virtual {p1}, Ljav;->d()V

    return v4

    :pswitch_4
    invoke-direct {p0}, Ljnt;->b()V

    iget-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1}, Ljba;->c(Landroid/content/Context;)Ljba;

    move-result-object p1

    invoke-virtual {p1}, Ljba;->a()Lcom/google/android/gms/auth/api/signin/GoogleSignInAccount;

    move-result-object p2

    sget-object p3, Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;->f:Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    if-eqz p2, :cond_9

    invoke-virtual {p1}, Ljba;->b()Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;

    move-result-object p3

    goto :goto_3

    :cond_9
    :goto_3
    iget-object p1, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    invoke-static {p1, p3}, Ljcb;->e(Landroid/content/Context;Lcom/google/android/gms/auth/api/signin/GoogleSignInOptions;)Ljah;

    move-result-object p1

    if-eqz p2, :cond_c

    iget-object p2, p1, Ljde;->i:Ljdh;

    iget-object p3, p1, Ljde;->c:Landroid/content/Context;

    invoke-virtual {p1}, Ljah;->b()I

    move-result p1

    sget-object v0, Ljat;->a:Llpu;

    const-string v2, "Revoking access"

    invoke-virtual {v0, v2}, Llpu;->e(Ljava/lang/String;)V

    invoke-static {p3}, Ljba;->c(Landroid/content/Context;)Ljba;

    move-result-object v0

    const-string v2, "refreshToken"

    invoke-virtual {v0, v2}, Ljba;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3}, Ljat;->a(Landroid/content/Context;)V

    if-ne p1, v1, :cond_b

    if-nez v0, :cond_a

    new-instance p1, Lcom/google/android/gms/common/api/Status;

    const/4 p2, 0x4

    invoke-direct {p1, p2}, Lcom/google/android/gms/common/api/Status;-><init>(I)V

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->b()Z

    move-result p2

    xor-int/2addr p2, v4

    const-string p3, "Status code must not be SUCCESS"

    invoke-static {p2, p3}, Ljhp;->T(ZLjava/lang/Object;)V

    new-instance p2, Ljdm;

    invoke-direct {p2, p1}, Ljdm;-><init>(Ljdq;)V

    invoke-virtual {p2, p1}, Lcom/google/android/gms/common/api/internal/BasePendingResult;->i(Ljdq;)V

    goto :goto_4

    :cond_a
    new-instance p1, Ljaj;

    invoke-direct {p1, v0}, Ljaj;-><init>(Ljava/lang/String;)V

    new-instance p2, Ljava/lang/Thread;

    invoke-direct {p2, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p2}, Ljava/lang/Thread;->start()V

    iget-object p2, p1, Ljaj;->a:Ljfj;

    goto :goto_4

    :cond_b
    new-instance p1, Ljar;

    invoke-direct {p1, p2}, Ljar;-><init>(Ljdh;)V

    invoke-virtual {p2, p1}, Ljdh;->c(Ljec;)V

    move-object p2, p1

    :goto_4
    invoke-static {p2}, Ljhp;->ae(Ljdl;)Ljot;

    const/4 v3, 0x1

    goto :goto_5

    :cond_c
    invoke-virtual {p1}, Ljah;->a()Ljot;

    const/4 v3, 0x1

    :goto_5
    return v3

    :pswitch_5
    packed-switch p1, :pswitch_data_3

    return v3

    :pswitch_6
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p3, Lkgd;

    invoke-static {p1, p2, p3}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_7
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_8
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_9
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljnm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljnm;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_a
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_b
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    iget-object p3, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p3, Lkgd;

    invoke-static {p1, p2, p3}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_c
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljng;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_d
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljnk;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljnk;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_e
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_f
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljnh;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljnh;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_10
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljni;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljni;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_11
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_12
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    sget-object p3, Ljng;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Ljng;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p3, p2}, Ljhp;->ak(Lcom/google/android/gms/common/api/Status;Ljava/lang/Object;Lkgd;)V

    return v4

    :pswitch_13
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_14
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_15
    sget-object p1, Lcom/google/android/gms/common/api/Status;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/common/api/Status;

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Lkgd;

    invoke-static {p1, p2}, Ljhp;->aj(Lcom/google/android/gms/common/api/Status;Lkgd;)V

    return v4

    :pswitch_16
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-static {p2}, Lcbg;->b(Landroid/os/Parcel;)V

    iget-object p2, p0, Ljnt;->b:Ljava/lang/Object;

    check-cast p2, Ljava/lang/ref/WeakReference;

    invoke-virtual {p2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;

    if-nez p2, :cond_d

    :goto_6
    const/4 v3, 0x1

    goto :goto_7

    :cond_d
    if-eq p1, v4, :cond_e

    goto :goto_6

    :cond_e
    iget-object p1, p2, Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;->b:Landroid/os/Handler;

    new-instance p3, Lofq;

    invoke-direct {p3, p2, v1}, Lofq;-><init>(Lcom/google/vr/vrcore/controller/api/ControllerServiceBridge;I)V

    invoke-virtual {p1, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return v4

    :pswitch_17
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    return v4

    :goto_7
    return v3

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_17
        :pswitch_16
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_5
        0x2 -> :sswitch_4
        0x9 -> :sswitch_3
        0xa -> :sswitch_2
        0xb -> :sswitch_1
        0xc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x1
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method
