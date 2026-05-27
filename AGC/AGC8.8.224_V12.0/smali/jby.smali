.class public final Ljby;
.super Ljhn;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:Ljby;


# instance fields
.field final b:I

.field public final c:I

.field public final d:Landroid/app/PendingIntent;

.field public final e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljby;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljby;-><init>(I)V

    sput-object v0, Ljby;->a:Ljby;

    new-instance v0, Ljay;

    const/4 v1, 0x7

    invoke-direct {v0, v1}, Ljay;-><init>(I)V

    sput-object v0, Ljby;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Ljby;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljhn;-><init>()V

    iput p1, p0, Ljby;->b:I

    iput p2, p0, Ljby;->c:I

    iput-object p3, p0, Ljby;->d:Landroid/app/PendingIntent;

    iput-object p4, p0, Ljby;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljby;-><init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(ILandroid/app/PendingIntent;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0, p1, p2, p3}, Ljby;-><init>(IILandroid/app/PendingIntent;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget v0, p0, Ljby;->c:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljby;->d:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Z
    .locals 1

    iget v0, p0, Ljby;->c:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljby;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Ljby;

    iget v1, p0, Ljby;->c:I

    iget v3, p1, Ljby;->c:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Ljby;->d:Landroid/app/PendingIntent;

    iget-object v3, p1, Ljby;->d:Landroid/app/PendingIntent;

    invoke-static {v1, v3}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljby;->e:Ljava/lang/String;

    iget-object p1, p1, Ljby;->e:Ljava/lang/String;

    invoke-static {v1, p1}, Ljhp;->af(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Ljby;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    iget-object v2, p0, Ljby;->d:Landroid/app/PendingIntent;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget-object v2, p0, Ljby;->e:Ljava/lang/String;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget v1, p0, Ljby;->c:I

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UNKNOWN_ERROR_CODE("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "DRIVE_EXTERNAL_STORAGE_REQUIRED"

    goto/16 :goto_0

    :sswitch_1
    const-string v1, "UNFINISHED"

    goto :goto_0

    :sswitch_2
    const-string v1, "API_DISABLED_FOR_CONNECTION"

    goto :goto_0

    :sswitch_3
    const-string v1, "API_DISABLED"

    goto :goto_0

    :sswitch_4
    const-string v1, "RESOLUTION_ACTIVITY_NOT_FOUND"

    goto :goto_0

    :sswitch_5
    const-string v1, "API_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :sswitch_6
    const-string v1, "RESTRICTED_PROFILE"

    goto :goto_0

    :sswitch_7
    const-string v1, "SERVICE_MISSING_PERMISSION"

    goto :goto_0

    :sswitch_8
    const-string v1, "SERVICE_UPDATING"

    goto :goto_0

    :sswitch_9
    const-string v1, "SIGN_IN_FAILED"

    goto :goto_0

    :sswitch_a
    const-string v1, "API_UNAVAILABLE"

    goto :goto_0

    :sswitch_b
    const-string v1, "INTERRUPTED"

    goto :goto_0

    :sswitch_c
    const-string v1, "TIMEOUT"

    goto :goto_0

    :sswitch_d
    const-string v1, "CANCELED"

    goto :goto_0

    :sswitch_e
    const-string v1, "LICENSE_CHECK_FAILED"

    goto :goto_0

    :sswitch_f
    const-string v1, "DEVELOPER_ERROR"

    goto :goto_0

    :sswitch_10
    const-string v1, "SERVICE_INVALID"

    goto :goto_0

    :sswitch_11
    const-string v1, "INTERNAL_ERROR"

    goto :goto_0

    :sswitch_12
    const-string v1, "NETWORK_ERROR"

    goto :goto_0

    :sswitch_13
    const-string v1, "RESOLUTION_REQUIRED"

    goto :goto_0

    :sswitch_14
    const-string v1, "INVALID_ACCOUNT"

    goto :goto_0

    :sswitch_15
    const-string v1, "SIGN_IN_REQUIRED"

    goto :goto_0

    :sswitch_16
    const-string v1, "SERVICE_DISABLED"

    goto :goto_0

    :sswitch_17
    const-string v1, "SERVICE_VERSION_UPDATE_REQUIRED"

    goto :goto_0

    :sswitch_18
    const-string v1, "SERVICE_MISSING"

    goto :goto_0

    :sswitch_19
    const-string v1, "SUCCESS"

    goto :goto_0

    :sswitch_1a
    const-string v1, "UNKNOWN"

    :goto_0
    const-string v2, "statusCode"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    iget-object v1, p0, Ljby;->d:Landroid/app/PendingIntent;

    const-string v2, "resolution"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    iget-object v1, p0, Ljby;->e:Ljava/lang/String;

    const-string v2, "message"

    invoke-static {v2, v1, v0}, Ljhp;->ah(Ljava/lang/String;Ljava/lang/Object;Ljava/util/List;)V

    invoke-static {v0, p0}, Ljhp;->ag(Ljava/util/List;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x1 -> :sswitch_1a
        0x0 -> :sswitch_19
        0x1 -> :sswitch_18
        0x2 -> :sswitch_17
        0x3 -> :sswitch_16
        0x4 -> :sswitch_15
        0x5 -> :sswitch_14
        0x6 -> :sswitch_13
        0x7 -> :sswitch_12
        0x8 -> :sswitch_11
        0x9 -> :sswitch_10
        0xa -> :sswitch_f
        0xb -> :sswitch_e
        0xd -> :sswitch_d
        0xe -> :sswitch_c
        0xf -> :sswitch_b
        0x10 -> :sswitch_a
        0x11 -> :sswitch_9
        0x12 -> :sswitch_8
        0x13 -> :sswitch_7
        0x14 -> :sswitch_6
        0x15 -> :sswitch_5
        0x16 -> :sswitch_4
        0x17 -> :sswitch_3
        0x18 -> :sswitch_2
        0x63 -> :sswitch_1
        0x5dc -> :sswitch_0
    .end sparse-switch
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 3

    invoke-static {p1}, Ljhp;->a(Landroid/os/Parcel;)I

    move-result v0

    iget v1, p0, Ljby;->b:I

    const/4 v2, 0x1

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget v1, p0, Ljby;->c:I

    const/4 v2, 0x2

    invoke-static {p1, v2, v1}, Ljhp;->g(Landroid/os/Parcel;II)V

    iget-object v1, p0, Ljby;->d:Landroid/app/PendingIntent;

    const/4 v2, 0x3

    invoke-static {p1, v2, v1, p2}, Ljhp;->o(Landroid/os/Parcel;ILandroid/os/Parcelable;I)V

    iget-object p2, p0, Ljby;->e:Ljava/lang/String;

    const/4 v1, 0x4

    invoke-static {p1, v1, p2}, Ljhp;->p(Landroid/os/Parcel;ILjava/lang/String;)V

    invoke-static {p1, v0}, Ljhp;->c(Landroid/os/Parcel;I)V

    return-void
.end method
