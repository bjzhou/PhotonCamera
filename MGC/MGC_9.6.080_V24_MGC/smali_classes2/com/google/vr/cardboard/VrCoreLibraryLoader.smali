.class public Lcom/google/vr/cardboard/VrCoreLibraryLoader;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public static loadNativeDlsymMethod(Landroid/content/Context;)J
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const v0, 0x3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    return-wide v0

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;)J
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    sget-object v0, Ltsh;->b:Ltsh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-static {p0, v0, v1}, Lcom/google/vr/cardboard/VrCoreLibraryLoader;->loadNativeGvrLibrary(Landroid/content/Context;Ltsh;Ltsh;)J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

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

    :goto_8
    const v1, 0x4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    return-wide v0

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Ltsh;->a:Ltsh;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public static loadNativeGvrLibrary(Landroid/content/Context;Ltsh;Ltsh;)J
    .locals 11

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    const v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :goto_3
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    if-nez v3, :cond_1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_1
    :try_start_0
    iget-boolean v4, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_f

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    const/4 v6, 0x4

    nop

    if-eqz v4, :cond_e

    nop

    nop

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    nop

    const-string v4, "com.google.vr.vrcore.SdkLibraryVersion"

    nop

    nop

    nop

    nop

    nop

    const-string v7, ""

    nop

    nop

    nop

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    nop

    if-nez v4, :cond_d

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ltsh;->a(Ljava/lang/String;)Ltsh;

    move-result-object v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_c

    nop

    nop

    iget v7, v4, Ltsh;->c:I

    nop

    nop

    iget v8, p1, Ltsh;->c:I

    nop

    nop

    if-le v7, v8, :cond_2

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_2
    if-lt v7, v8, :cond_b

    nop

    nop

    nop

    nop

    nop

    iget v7, v4, Ltsh;->d:I

    nop

    nop

    iget v8, p1, Ltsh;->d:I

    nop

    nop

    nop

    nop

    nop

    if-gt v7, v8, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-lt v7, v8, :cond_b

    nop

    iget v4, v4, Ltsh;->e:I

    nop

    nop

    nop

    nop

    nop

    iget v7, p1, Ltsh;->e:I

    nop

    nop

    nop

    if-gt v4, v7, :cond_3

    nop

    nop

    if-lt v4, v7, :cond_b

    nop

    nop

    nop

    :cond_3
    :goto_5
    invoke-static {p0}, Lrgw;->av(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Lrgw;->av(Landroid/content/Context;)Landroid/content/Context;

    sget v4, Lrgw;->a:I

    nop

    nop

    nop

    nop

    nop

    sget-object v7, Lrgw;->b:Lttr;

    nop

    const/4 v8, 0x0

    nop

    if-nez v7, :cond_6

    nop

    nop

    nop

    invoke-static {p0}, Lrgw;->av(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v7

    nop

    nop

    nop

    invoke-virtual {v7}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    nop

    nop

    invoke-static {v7}, Lrgw;->aw(Ljava/lang/ClassLoader;)Landroid/os/IBinder;

    move-result-object v7

    nop

    nop

    nop

    if-nez v7, :cond_4

    nop

    nop

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    const-string v9, "com.google.vr.vrcore.library.api.IVrCreator"

    nop

    nop

    invoke-interface {v7, v9}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v9

    nop

    instance-of v10, v9, Lttr;

    nop

    nop

    nop

    if-eqz v10, :cond_5

    nop

    nop

    nop

    nop

    check-cast v9, Lttr;

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_5
    new-instance v9, Lttr;

    nop

    nop

    invoke-direct {v9, v7}, Lttr;-><init>(Landroid/os/IBinder;)V

    :goto_6
    sput-object v9, Lrgw;->b:Lttr;

    nop

    nop

    nop

    :cond_6
    sget-object v7, Lrgw;->b:Lttr;

    nop

    nop

    nop

    nop

    new-instance v9, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    nop

    invoke-direct {v9, v3}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    new-instance v3, Lcom/google/vr/vrcore/library/api/ObjectWrapper;

    nop

    nop

    nop

    nop

    invoke-direct {v3, p0}, Lcom/google/vr/vrcore/library/api/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v7}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    invoke-static {p0, v9}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-static {p0, v3}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    invoke-virtual {v7, v6, p0}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v3

    nop

    nop

    nop

    if-nez v3, :cond_7

    nop

    nop

    goto :goto_7

    nop

    nop

    nop

    nop

    :cond_7
    const-string v6, "com.google.vr.vrcore.library.api.IVrNativeLibraryLoader"

    nop

    invoke-interface {v3, v6}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v6

    nop

    nop

    instance-of v7, v6, Ltts;

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_8

    nop

    nop

    nop

    nop

    move-object v8, v6

    nop

    nop

    nop

    check-cast v8, Ltts;

    nop

    nop

    nop

    goto :goto_7

    nop

    nop

    :cond_8
    new-instance v8, Ltts;

    nop

    invoke-direct {v8, v3}, Ltts;-><init>(Landroid/os/IBinder;)V

    :goto_7
    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    if-nez v8, :cond_9

    nop

    const-string p0, "Failed to load native GVR library from VrCore: no library loader available."

    nop

    nop

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-wide v1

    nop

    :cond_9
    const/16 p0, 0x13

    nop

    nop

    nop

    if-ge v4, p0, :cond_a

    nop

    nop

    nop

    nop

    nop

    iget p0, p2, Ltsh;->c:I

    nop

    nop

    iget p1, p2, Ltsh;->d:I

    nop

    nop

    nop

    nop

    iget p2, p2, Ltsh;->e:I

    nop

    nop

    nop

    invoke-virtual {v8}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    nop

    nop

    nop

    invoke-virtual {v3, p0}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v3, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v8, v5, v3}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    nop

    nop

    nop

    nop

    :cond_a
    invoke-virtual {p1}, Ltsh;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p2}, Ltsh;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-virtual {v8}, Lfum;->a()Landroid/os/Parcel;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    const/4 p0, 0x5

    nop

    nop

    nop

    invoke-virtual {v8, p0, p2}, Lfum;->z(ILandroid/os/Parcel;)Landroid/os/Parcel;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->readLong()J

    move-result-wide p1

    nop

    nop

    invoke-virtual {p0}, Landroid/os/Parcel;->recycle()V

    return-wide p1

    nop

    nop

    nop

    nop

    nop

    :cond_b
    const-string p0, "VrCore GVR library version obsolete; VrCore supports %s but client min is %s"

    nop

    invoke-virtual {p1}, Ltsh;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v3, p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ltst;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v6}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    :cond_c
    new-instance p0, Ltst;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v6}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_d
    new-instance p0, Ltst;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v6}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_e
    new-instance p0, Ltst;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v6}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    :cond_f
    new-instance p0, Ltst;

    nop

    nop

    invoke-direct {p0, v5}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Ltst;

    nop

    const/16 p1, 0x8

    nop

    invoke-direct {p0, p1}, Ltst;-><init>(I)V

    throw p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    :catch_1
    new-instance p1, Ltst;

    nop

    nop

    invoke-static {p0}, Lcom/google/vr/vrcore/base/api/VrCoreUtils;->a(Landroid/content/Context;)I

    move-result p0

    nop

    nop

    nop

    invoke-direct {p1, p0}, Ltst;-><init>(I)V

    throw p1

    nop

    nop

    nop
    :try_end_0
    .catch Ltst; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_9
    goto/32 :goto_15

    nop

    nop

    :goto_a
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "VrCoreLibraryLoader"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-wide v1

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    const-wide/16 v1, 0x0

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const-string v4, "com.google.vr.vrcore"

    nop

    nop

    const/16 v5, 0x80

    nop

    nop

    invoke-virtual {v3, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ltst; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_15
    const-string p1, "Failed to load native GVR library from VrCore:\n  "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method
