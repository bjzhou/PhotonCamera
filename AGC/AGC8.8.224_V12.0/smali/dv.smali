.class public Ldv;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field a:Ldu;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Law;

    const/16 v1, 0xf

    invoke-direct {v0, v1}, Law;-><init>(I)V

    sput-object v0, Ldv;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const-string v0, "android.support.v4.os.IResultReceiver"

    invoke-interface {p1, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Ldu;

    if-eqz v1, :cond_1

    move-object p1, v0

    check-cast p1, Ldu;

    goto :goto_0

    :cond_1
    new-instance v0, Lds;

    invoke-direct {v0, p1}, Lds;-><init>(Landroid/os/IBinder;)V

    move-object p1, v0

    :goto_0
    iput-object p1, p0, Ldv;->a:Ldu;

    return-void
.end method


# virtual methods
.method protected a()V
    .locals 0

    return-void
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iget-object p2, p0, Ldv;->a:Ldu;

    if-nez p2, :cond_0

    new-instance p2, Ldt;

    invoke-direct {p2, p0}, Ldt;-><init>(Ldv;)V

    iput-object p2, p0, Ldv;->a:Ldu;

    :cond_0
    iget-object p2, p0, Ldv;->a:Ldu;

    invoke-interface {p2}, Ldu;->asBinder()Landroid/os/IBinder;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
