.class public Lcom/google/vr/cardboard/VrCoreLibraryLoader;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadNativeDlsymMethod(Landroid/content/Context;)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;)J
    .locals 2

    sget-object v0, Loeu;->b:Loeu;

    sget-object v1, Loeu;->a:Loeu;

    invoke-static {p0, v0, v1}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->loadNativeGvrLibrary(Landroid/content/Context;Loeu;Loeu;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;Loeu;Loeu;)J
    .locals 11

    const-string v0, "VrCoreLibraryLoader"

    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "com.google.vr.vrcore"

    const/16 v5, 0x80

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lofb; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v3, :cond_e

    :try_start_1
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v5, 0x2

    if-eqz v4, :cond_d

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const/4 v6, 0x4

    if-eqz v4, :cond_c

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "com.google.vr.vrcore.SdkLibraryVersion"

    const-string v7, ""

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Loeu;->a(Ljava/lang/String;)Loeu;

    move-result-object v7

    if-eqz v7, :cond_a

    iget v8, v7, Loeu;->c:I

    iget v9, p1, Loeu;->c:I

    if-le v8, v9, :cond_0

    goto :goto_0

    :cond_0
    if-lt v8, v9, :cond_9

    iget v8, v7, Loeu;->d:I

    iget v9, p1, Loeu;->d:I

    if-gt v8, v9, :cond_1

    if-lt v8, v9, :cond_9

    iget v7, v7, Loeu;->e:I

    iget v8, p1, Loeu;->e:I

    if-gt v7, v8, :cond_1

    if-lt v7, v8, :cond_9

    :cond_1
    :goto_0
    invoke-static {p0}, Llho;->P(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    invoke-static {p0}, Llho;->P(Landroid/content/Context;)Landroid/content/Context;

    sget v4, Llho;->a:I

    sget-object v7, Llho;->b:Lofy;

    const/4 v8, 0x0

    if-nez v7, :cond_4

    invoke-static {p0}, Llho;->P(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    invoke-static {v7}, Llho;->Q(Ljava/lang/ClassLoader;)Landroid/os/IBinder;

    move-result-object v7

    if-nez v7, :cond_2

    move-object v9, v8

    goto :goto_1

    :cond_2
    const-string v9, "com.google.vr.vrcore.library.api.IVrCreator"

    invoke-interface {v7, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v9

    instance-of v10, v9, Lofy;

    if-eqz v10, :cond_3

    check-cast v9, Lofy;

    goto :goto_1

    :cond_3
    new-instance v9, Lofy;

    invoke-direct {v9, v7}, Lofy;-><init>(Landroid/os/IBinder;)V

    :goto_1
    sput-object v9, Llho;->b:Lofy;

    :cond_4
    sget-object v7, Llho;->b:Lofy;

    invoke-static {v3}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->b(Ljava/lang/Object;)Lcbf;

    move-result-object v3

    invoke-static {p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;->b(Ljava/lang/Object;)Lcbf;

    move-result-object p0

    invoke-virtual {v7}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v9

    invoke-static {v9, v3}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {v9, p0}, Lcbg;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v7, v6, v9}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    if-nez v3, :cond_5

    goto :goto_2

    :cond_5
    const-string v6, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    invoke-interface {v3, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    instance-of v7, v6, Lofz;

    if-eqz v7, :cond_6

    move-object v8, v6

    check-cast v8, Lofz;

    goto :goto_2

    :cond_6
    new-instance v8, Lofz;

    invoke-direct {v8, v3}, Lofz;-><init>(Landroid/os/IBinder;)V

    :goto_2
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-nez v8, :cond_7

    const-string p0, "Failed to load native GVR library from VrCore: no library loader available."

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    :cond_7
    const/16 p0, 0x13

    if-ge v4, p0, :cond_8

    iget p0, p2, Loeu;->c:I

    iget p1, p2, Loeu;->d:I

    iget p2, p2, Loeu;->e:I

    invoke-virtual {v8}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v5, v3}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :cond_8
    invoke-virtual {p1}, Loeu;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2}, Loeu;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v8}, Lcbe;->a()Landroid/os/Parcel;

    move-result-object p2

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x5

    invoke-virtual {v8, p0, p2}, Lcbe;->y(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    :cond_9
    const-string p0, "VrCore GVR library version obsolete; VrCore supports %s but client min is %s"

    new-array p2, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v3, p2, v5

    invoke-virtual {p1}, Loeu;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, p2, v4

    invoke-static {p0, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Lofb;

    invoke-direct {p0, v6}, Lofb;-><init>(I)V

    throw p0

    :cond_a
    new-instance p0, Lofb;

    invoke-direct {p0, v6}, Lofb;-><init>(I)V

    throw p0

    :cond_b
    new-instance p0, Lofb;

    invoke-direct {p0, v6}, Lofb;-><init>(I)V

    throw p0

    :cond_c
    new-instance p0, Lofb;

    invoke-direct {p0, v6}, Lofb;-><init>(I)V

    throw p0

    :cond_d
    new-instance p0, Lofb;

    invoke-direct {p0, v5}, Lofb;-><init>(I)V

    throw p0

    :cond_e
    new-instance p0, Lofb;

    const/16 p1, 0x8

    invoke-direct {p0, p1}, Lofb;-><init>(I)V

    throw p0

    :catch_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception p0

    goto :goto_3

    :catch_4
    move-exception p0

    goto :goto_3

    :catch_5
    move-exception p0

    goto :goto_3

    :catch_6
    move-exception p1

    new-instance p1, Lofb;

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->a(Landroid/content/Context;)I

    move-result p0

    invoke-direct {p1, p0}, Lofb;-><init>(I)V

    throw p1
    :try_end_1
    .catch Lofb; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Failed to load native GVR library from VrCore:\n  "

    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1
.end method
