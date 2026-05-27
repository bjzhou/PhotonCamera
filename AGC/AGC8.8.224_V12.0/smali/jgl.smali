.class public final Ljgl;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:[Lcom/google/android/gms/common/api/Scope;

.field public static final b:[Ljca;


# instance fields
.field public final c:I

.field public final d:I

.field public final e:I

.field public f:Ljava/lang/String;

.field public g:Landroid/os/IBinder;

.field public h:[Lcom/google/android/gms/common/api/Scope;

.field public i:Landroid/os/Bundle;

.field public j:Landroid/accounts/Account;

.field public k:[Ljca;

.field public l:[Ljca;

.field public m:Z

.field public n:I

.field public o:Z

.field public p:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0x13

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljgl;->CREATOR:Landroid/os/Parcelable$Creator;

    const/4 v0, 0x0

    new-array v1, v0, [Lcom/google/android/gms/common/api/Scope;

    sput-object v1, Ljgl;->a:[Lcom/google/android/gms/common/api/Scope;

    new-array v0, v0, [Ljca;

    sput-object v0, Ljgl;->b:[Ljca;

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;Landroid/os/IBinder;[Lcom/google/android/gms/common/api/Scope;Landroid/os/Bundle;Landroid/accounts/Account;[Ljca;[Ljca;ZIZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    if-nez p6, :cond_0

    sget-object p6, Ljgl;->a:[Lcom/google/android/gms/common/api/Scope;

    :cond_0
    if-nez p7, :cond_1

    new-instance p7, Landroid/os/Bundle;

    invoke-direct {p7}, Landroid/os/Bundle;-><init>()V

    :cond_1
    if-nez p9, :cond_2

    sget-object p9, Ljgl;->b:[Ljca;

    :cond_2
    if-nez p10, :cond_3

    sget-object p10, Ljgl;->b:[Ljca;

    :cond_3
    iput p1, p0, Ljgl;->c:I

    iput p2, p0, Ljgl;->d:I

    iput p3, p0, Ljgl;->e:I

    const-string p2, "com.google.android.gms"

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-object p2, p0, Ljgl;->f:Ljava/lang/String;

    goto :goto_0

    :cond_4
    iput-object p4, p0, Ljgl;->f:Ljava/lang/String;

    :goto_0
    const/4 p2, 0x2

    if-ge p1, p2, :cond_7

    const/4 p1, 0x0

    if-eqz p5, :cond_6

    const-string p3, "com.google.android.gms.common.internal.IAccountAccessor"

    invoke-interface {p5, p3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p3

    instance-of p4, p3, Ljgu;

    if-eqz p4, :cond_5

    check-cast p3, Ljgu;

    goto :goto_1

    :cond_5
    new-instance p3, Ljgu;

    invoke-direct {p3, p5}, Ljgu;-><init>(Landroid/os/IBinder;)V

    :goto_1
    if-eqz p3, :cond_6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide p4

    :try_start_0
    invoke-virtual {p3}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p8

    invoke-virtual {p3, p2, p8}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p2

    sget-object p3, Landroid/accounts/Account;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p2, p3}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p3

    check-cast p3, Landroid/accounts/Account;

    invoke-virtual {p2}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    move-object p1, p3

    goto :goto_3

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p2

    :try_start_1
    const-string p2, "AccountAccessor"

    const-string p3, "Remote account accessor probably died"

    invoke-static {p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_3

    :goto_2
    invoke-static {p4, p5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1

    :cond_6
    :goto_3
    iput-object p1, p0, Ljgl;->j:Landroid/accounts/Account;

    goto :goto_4

    :cond_7
    iput-object p5, p0, Ljgl;->g:Landroid/os/IBinder;

    iput-object p8, p0, Ljgl;->j:Landroid/accounts/Account;

    :goto_4
    iput-object p6, p0, Ljgl;->h:[Lcom/google/android/gms/common/api/Scope;

    iput-object p7, p0, Ljgl;->i:Landroid/os/Bundle;

    iput-object p9, p0, Ljgl;->k:[Ljca;

    iput-object p10, p0, Ljgl;->l:[Ljca;

    iput-boolean p11, p0, Ljgl;->m:Z

    iput p12, p0, Ljgl;->n:I

    iput-boolean p13, p0, Ljgl;->o:Z

    iput-object p14, p0, Ljgl;->p:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Ljay;->a(Ljgl;Landroid/os/Parcel;I)V

    return-void
.end method
