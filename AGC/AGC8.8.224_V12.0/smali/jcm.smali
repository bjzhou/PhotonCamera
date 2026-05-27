.class public final Ljcm;
.super Ljava/lang/Object;


# static fields
.field static final a:Ljck;

.field static final b:Ljck;

.field private static final c:Ljava/lang/Object;

.field private static d:Landroid/content/Context;

.field private static volatile e:Ljha;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljcf;

    const-string v1, "0\u0082\u0005\u00c80\u0082\u0003\u00b0\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0010\u008ae\u0008s\u00f9/\u008eQ\u00ed"

    invoke-static {v1}, Ljgw;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljcf;-><init>([B)V

    new-instance v0, Ljcg;

    const-string v1, "0\u0082\u0006\u00040\u0082\u0003\u00ec\u00a0\u0003\u0002\u0001\u0002\u0002\u0014\u0003\u00a3\u00b2\u00ad\u00d7\u00e1r\u00cak\u00ec"

    invoke-static {v1}, Ljgw;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljcg;-><init>([B)V

    new-instance v0, Ljch;

    const-string v1, "0\u0082\u0004C0\u0082\u0003+\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00c2\u00e0\u0087FdJ0\u008d0"

    invoke-static {v1}, Ljgw;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljch;-><init>([B)V

    sput-object v0, Ljcm;->a:Ljck;

    new-instance v0, Ljci;

    const-string v1, "0\u0082\u0004\u00a80\u0082\u0003\u0090\u00a0\u0003\u0002\u0001\u0002\u0002\t\u0000\u00d5\u0085\u00b8l}\u00d3N\u00f50"

    invoke-static {v1}, Ljgw;->c(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljci;-><init>([B)V

    sput-object v0, Ljcm;->b:Ljck;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljcm;->c:Ljava/lang/Object;

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;)V
    .locals 2

    const-class v0, Ljcm;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljcm;->d:Landroid/content/Context;

    if-nez v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    sput-object p0, Ljcm;->d:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v0

    return-void

    :cond_1
    :try_start_1
    const-string p0, "GoogleCertificates"

    const-string v1, "GoogleCertificates has been initialized already"

    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b()Z
    .locals 4

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    :try_start_0
    invoke-static {}, Ljcm;->e()V

    sget-object v1, Ljcm;->e:Ljha;

    invoke-virtual {v1}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v2

    const/4 v3, 0x7

    invoke-virtual {v1, v3, v2}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object v1

    invoke-static {v1}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result v2

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V
    :try_end_0
    .catch Ljin; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return v2

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_0
    :try_start_1
    const-string v2, "GoogleCertificates"

    const-string v3, "Failed to get Google certificates from remote"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    const/4 v0, 0x0

    return v0

    :goto_1
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw v1
.end method

.method public static c(Ljava/lang/String;Ljgw;ZZ)Ljcq;
    .locals 4

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    invoke-static {}, Ljcm;->e()V
    :try_end_0
    .catch Ljin; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v3, Ljcm;->d:Landroid/content/Context;

    invoke-static {v3}, Ljhp;->ab(Ljava/lang/Object;)V

    new-instance v3, Ljcp;

    invoke-direct {v3, p0, p1, p2, p3}, Ljcp;-><init>(Ljava/lang/String;Ljgw;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    sget-object p0, Ljcm;->e:Ljha;

    sget-object p1, Ljcm;->d:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-static {p1}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object p1

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-static {p2, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {p2, p1}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    const/4 p1, 0x5

    invoke-virtual {p0, p1, p2}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-static {p0}, Lcbg;->e(Landroid/os/Parcel;)Z

    move-result p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_0

    :try_start_3
    sget-object p0, Ljcq;->a:Ljcq;

    goto :goto_0

    :cond_0
    new-instance p0, Ljcq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljcq;-><init>(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljcq;->b()Ljcq;

    move-result-object p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljin;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljcq;->b()Ljcq;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :goto_1
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method public static d(Ljava/lang/String;Z)Ljcq;
    .locals 11

    const-string v0, "Failed to get Google certificates from remote"

    const-string v1, "GoogleCertificates"

    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v2

    :try_start_0
    sget-object v3, Ljcm;->d:Landroid/content/Context;

    invoke-static {v3}, Ljhp;->ab(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Ljcm;->e()V
    :try_end_1
    .catch Ljin; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v3, Ljcn;

    const/4 v7, 0x0

    sget-object v4, Ljcm;->d:Landroid/content/Context;

    invoke-static {v4}, Ljif;->b(Ljava/lang/Object;)Ljig;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    move-object v4, v3

    move-object v5, p0

    move v6, p1

    invoke-direct/range {v4 .. v10}, Ljcn;-><init>(Ljava/lang/String;ZZLandroid/os/IBinder;ZZ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    sget-object p0, Ljcm;->e:Ljha;

    invoke-virtual {p0}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p1

    invoke-static {p1, v3}, Lcbg;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    const/4 v3, 0x6

    invoke-virtual {p0, v3, p1}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    sget-object p1, Ljco;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p0, p1}, Lcbg;->a(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Ljco;

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    iget-boolean p0, p1, Ljco;->a:Z

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Ljco;->b()V

    new-instance p0, Ljcq;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljcq;-><init>(Z)V

    goto :goto_0

    :cond_0
    iget-object p0, p1, Ljco;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljco;->a()I

    move-result p0

    const/4 v0, 0x4

    if-ne p0, v0, :cond_1

    new-instance p0, Landroid/content/pm/PackageManager$NameNotFoundException;

    invoke-direct {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>()V

    :cond_1
    invoke-virtual {p1}, Ljco;->b()V

    invoke-virtual {p1}, Ljco;->a()I

    new-instance p0, Ljcq;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ljcq;-><init>(Z)V

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-static {}, Ljcq;->b()Ljcq;

    move-result-object p0

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-virtual {p0}, Ljin;->getMessage()Ljava/lang/String;

    invoke-static {}, Ljcq;->b()Ljcq;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_0
    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    return-object p0

    :catchall_0
    move-exception p0

    invoke-static {v2}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p0
.end method

.method private static e()V
    .locals 4

    sget-object v0, Ljcm;->e:Ljha;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Ljcm;->d:Landroid/content/Context;

    invoke-static {v0}, Ljhp;->ab(Ljava/lang/Object;)V

    sget-object v0, Ljcm;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Ljcm;->e:Ljha;

    if-nez v1, :cond_3

    sget-object v1, Ljcm;->d:Landroid/content/Context;

    sget-object v2, Ljir;->b:Ljiq;

    const-string v3, "com.google.android.gms.googlecertificates"

    invoke-static {v1, v2, v3}, Ljir;->d(Landroid/content/Context;Ljiq;Ljava/lang/String;)Ljir;

    move-result-object v1

    const-string v2, "com.google.android.gms.common.GoogleCertificatesImpl"

    invoke-virtual {v1, v2}, Ljir;->c(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "com.google.android.gms.common.internal.IGoogleCertificatesApi"

    invoke-interface {v1, v2}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v2

    instance-of v3, v2, Ljha;

    if-eqz v3, :cond_2

    move-object v1, v2

    check-cast v1, Ljha;

    goto :goto_0

    :cond_2
    new-instance v2, Ljha;

    invoke-direct {v2, v1}, Ljha;-><init>(Landroid/os/IBinder;)V

    move-object v1, v2

    :goto_0
    sput-object v1, Ljcm;->e:Ljha;

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
