.class public final Ljcp;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Z

.field public final c:Z

.field private final d:Ljgw;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljay;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljcp;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/IBinder;ZZ)V
    .locals 4

    const-string v0, "Could not unwrap certificate"

    const-string v1, "GoogleCertificatesQuery"

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljcp;->a:Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_0

    goto :goto_2

    :cond_0
    :try_start_0
    const-string v2, "com.google.android.gms.common.internal.ICertData"

    invoke-interface {p2, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Ljgx;

    if-eqz v3, :cond_1

    check-cast v2, Ljgx;

    goto :goto_0

    :cond_1
    new-instance v2, Ljgv;

    invoke-direct {v2, p2}, Ljgv;-><init>(Landroid/os/IBinder;)V

    :goto_0
    invoke-interface {v2}, Ljgx;->f()Ljig;

    move-result-object p2
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p2, :cond_2

    move-object p2, p1

    goto :goto_1

    :cond_2
    invoke-static {p2}, Ljif;->c(Ljig;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    :goto_1
    if-eqz p2, :cond_3

    new-instance p1, Ljcj;

    invoke-direct {p1, p2}, Ljcj;-><init>([B)V

    goto :goto_2

    :cond_3
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-static {v1, v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    iput-object p1, p0, Ljcp;->d:Ljgw;

    iput-boolean p3, p0, Ljcp;->b:Z

    iput-boolean p4, p0, Ljcp;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljgw;ZZ)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput-object p1, p0, Ljcp;->a:Ljava/lang/String;

    iput-object p2, p0, Ljcp;->d:Ljgw;

    iput-boolean p3, p0, Ljcp;->b:Z

    iput-boolean p4, p0, Ljcp;->c:Z

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result p2

    iget-object v0, p0, Ljcp;->a:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p1, v1, v0}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    iget-object v0, p0, Ljcp;->d:Ljgw;

    if-nez v0, :cond_0

    const-string v0, "GoogleCertificatesQuery"

    const-string v1, "certificate binder is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_0
    const/4 v1, 0x2

    invoke-static {p1, v1, v0}, Ljhp;->l(Landroid/os/Parcel;ILandroid/os/IBinder;)V

    iget-boolean v0, p0, Ljcp;->b:Z

    const/4 v1, 0x3

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    iget-boolean v0, p0, Ljcp;->c:Z

    const/4 v1, 0x4

    invoke-static {p1, v1, v0}, Ljhp;->d(Landroid/os/Parcel;IZ)V

    invoke-static {p1, p2}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
