.class public final Lrmv;
.super Lrnm;
.source "PG"


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lrmz;

.field final synthetic c:Lpic;


# direct methods
.method public constructor <init>(Lrmz;Lpic;Ljava/lang/String;Lpic;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lrmv;->a:Ljava/lang/String;

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
    invoke-direct {p0, p2}, Lrnm;-><init>(Lpic;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrmv;->b:Lrmz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p4, p0, Lrmv;->c:Lpic;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method protected final a()V
    .locals 6

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Lrmz;->d:Lrpz;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1}, Lpic;->u(Ljava/lang/Exception;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object v1, p0, Lrmv;->a:Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    goto :goto_d

    nop

    :catch_0
    :try_start_0
    sget-object v0, Lrmz;->d:Lrpz;

    nop

    const-string v5, "The current version of the app could not be retrieved"

    nop

    nop

    nop

    nop

    nop

    new-array v3, v3, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5, v3}, Lrpz;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "app.version.code"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Lrmy;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lrmv;->b:Lrmz;

    nop

    nop

    nop

    iget-object v5, p0, Lrmv;->c:Lpic;

    nop

    invoke-direct {v0, v3, v5}, Lrmy;-><init>(Lrmz;Lpic;)V

    move-object v3, v1

    nop

    nop

    check-cast v3, Lfum;

    nop

    nop

    nop

    invoke-virtual {v3}, Lfum;->a()Landroid/os/Parcel;

    move-result-object v3

    nop

    invoke-virtual {v3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-static {v3, v4}, Lfuo;->c(Landroid/os/Parcel;Landroid/os/Parcelable;)V

    invoke-static {v3, v0}, Lfuo;->d(Landroid/os/Parcel;Landroid/os/IInterface;)V

    check-cast v1, Lfum;

    nop

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v3}, Lfum;->B(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x15

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

    :goto_f
    const-string v3, "requestUpdateInfo(%s)"

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lrmv;->c:Lpic;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v5, v0, Lrmz;->c:Landroid/content/Context;

    nop

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    iget-object v0, v0, Lrmz;->c:Landroid/content/Context;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0, v5, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    :goto_14
    :try_start_2
    iget-object v0, p0, Lrmv;->b:Lrmz;

    nop

    nop

    iget-object v1, v0, Lrmz;->a:Lrnv;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lrnv;->l:Landroid/os/IInterface;

    nop

    iget-object v2, v0, Lrmz;->b:Ljava/lang/String;

    nop

    nop

    iget-object v3, p0, Lrmv;->a:Ljava/lang/String;

    nop

    nop

    new-instance v4, Landroid/os/Bundle;

    nop

    nop

    nop

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lrmz;->b()Landroid/os/Bundle;

    move-result-object v5

    nop

    nop

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    const/4 v5, 0x0

    nop

    nop

    nop

    sget-object v5, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->KpdEJTLYY:Ljava/lang/String;

    nop

    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_11

    nop

    nop

    :goto_15
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2, v0, v3, v1}, Lrpz;->j(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
