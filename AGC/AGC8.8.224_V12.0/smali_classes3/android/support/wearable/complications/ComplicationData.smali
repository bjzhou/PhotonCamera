.class public Landroid/support/wearable/complications/ComplicationData;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;

.field public static final a:[[Ljava/lang/String;

.field private static final d:[[Ljava/lang/String;


# instance fields
.field public final b:I

.field public final c:Landroid/os/Bundle;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    const/16 v0, 0xb

    new-array v1, v0, [[Ljava/lang/String;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aput-object v3, v1, v2

    new-array v4, v2, [Ljava/lang/String;

    const/4 v5, 0x1

    aput-object v4, v1, v5

    new-array v4, v2, [Ljava/lang/String;

    const/4 v6, 0x2

    aput-object v4, v1, v6

    new-array v4, v5, [Ljava/lang/String;

    const-string v7, "SHORT_TEXT"

    aput-object v7, v4, v2

    const/4 v8, 0x3

    aput-object v4, v1, v8

    new-array v4, v5, [Ljava/lang/String;

    const-string v9, "LONG_TEXT"

    aput-object v9, v4, v2

    const/4 v9, 0x4

    aput-object v4, v1, v9

    new-array v4, v8, [Ljava/lang/String;

    const-string v10, "VALUE"

    aput-object v10, v4, v2

    const-string v10, "MIN_VALUE"

    aput-object v10, v4, v5

    const-string v10, "MAX_VALUE"

    aput-object v10, v4, v6

    const/4 v10, 0x5

    aput-object v4, v1, v10

    new-array v4, v5, [Ljava/lang/String;

    const-string v11, "ICON"

    aput-object v11, v4, v2

    const/4 v12, 0x6

    aput-object v4, v1, v12

    new-array v4, v6, [Ljava/lang/String;

    const-string v13, "SMALL_IMAGE"

    aput-object v13, v4, v2

    const-string v14, "IMAGE_STYLE"

    aput-object v14, v4, v5

    const/4 v15, 0x7

    aput-object v4, v1, v15

    new-array v4, v5, [Ljava/lang/String;

    const-string v16, "LARGE_IMAGE"

    aput-object v16, v4, v2

    const/16 v16, 0x8

    aput-object v4, v1, v16

    new-array v4, v2, [Ljava/lang/String;

    const/16 v15, 0x9

    aput-object v4, v1, v15

    new-array v4, v2, [Ljava/lang/String;

    const/16 v17, 0xa

    aput-object v4, v1, v17

    sput-object v1, Landroid/support/wearable/complications/ComplicationData;->a:[[Ljava/lang/String;

    new-array v0, v0, [[Ljava/lang/String;

    aput-object v3, v0, v2

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, v5

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, v6

    new-array v1, v12, [Ljava/lang/String;

    const-string v3, "SHORT_TITLE"

    aput-object v3, v1, v2

    aput-object v11, v1, v5

    const-string v4, "ICON_BURN_IN_PROTECTION"

    aput-object v4, v1, v6

    const-string v18, "TAP_ACTION"

    aput-object v18, v1, v8

    const-string v19, "CONTENT_DESCRIPTION"

    aput-object v19, v1, v9

    const-string v20, "IMAGE_CONTENT_DESCRIPTION"

    aput-object v20, v1, v10

    aput-object v1, v0, v8

    new-array v1, v15, [Ljava/lang/String;

    const-string v21, "LONG_TITLE"

    aput-object v21, v1, v2

    aput-object v11, v1, v5

    aput-object v4, v1, v6

    aput-object v13, v1, v8

    const-string v13, "SMALL_IMAGE_BURN_IN_PROTECTION"

    aput-object v13, v1, v9

    aput-object v14, v1, v10

    aput-object v18, v1, v12

    const/4 v13, 0x7

    aput-object v19, v1, v13

    aput-object v20, v1, v16

    aput-object v1, v0, v9

    new-array v1, v13, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v3, v1, v5

    aput-object v11, v1, v6

    aput-object v4, v1, v8

    aput-object v18, v1, v9

    aput-object v19, v1, v10

    aput-object v20, v1, v12

    aput-object v1, v0, v10

    new-array v1, v9, [Ljava/lang/String;

    aput-object v18, v1, v2

    aput-object v4, v1, v5

    aput-object v19, v1, v6

    aput-object v20, v1, v8

    aput-object v1, v0, v12

    new-array v1, v9, [Ljava/lang/String;

    aput-object v18, v1, v2

    const-string v13, "SMALL_IMAGE_BURN_IN_PROTECTION"

    aput-object v13, v1, v5

    aput-object v19, v1, v6

    aput-object v20, v1, v8

    const/4 v13, 0x7

    aput-object v1, v0, v13

    new-array v1, v8, [Ljava/lang/String;

    aput-object v18, v1, v2

    aput-object v19, v1, v5

    aput-object v20, v1, v6

    aput-object v1, v0, v16

    new-array v1, v12, [Ljava/lang/String;

    aput-object v7, v1, v2

    aput-object v3, v1, v5

    aput-object v11, v1, v6

    aput-object v4, v1, v8

    aput-object v19, v1, v9

    aput-object v20, v1, v10

    aput-object v1, v0, v15

    new-array v1, v2, [Ljava/lang/String;

    aput-object v1, v0, v17

    sput-object v0, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    new-instance v0, Law;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Law;-><init>(I)V

    sput-object v0, Landroid/support/wearable/complications/ComplicationData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBundle(Ljava/lang/ClassLoader;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    return-void
.end method

.method public constructor <init>(Lnz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget v0, p1, Lnz;->a:I

    iput v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    iget-object p1, p1, Lnz;->b:Landroid/os/Bundle;

    iput-object p1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    return-void
.end method

.method public static j(Ljava/lang/String;I)V
    .locals 3

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData;->m(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Landroid/support/wearable/complications/ComplicationData;->l(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " is not supported for type "

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static k(Ljava/lang/String;I)V
    .locals 1

    invoke-static {p1}, Landroid/support/wearable/complications/ComplicationData;->m(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Type "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " can not be recognized"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ComplicationData"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {p0, p1}, Landroid/support/wearable/complications/ComplicationData;->l(Ljava/lang/String;I)Z

    return-void
.end method

.method private static l(Ljava/lang/String;I)Z
    .locals 6

    sget-object v0, Landroid/support/wearable/complications/ComplicationData;->a:[[Ljava/lang/String;

    aget-object v0, v0, p1

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v1, :cond_1

    aget-object v5, v0, v3

    invoke-virtual {v5, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v4

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    sget-object v0, Landroid/support/wearable/complications/ComplicationData;->d:[[Ljava/lang/String;

    aget-object p1, v0, p1

    array-length v0, p1

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v0, :cond_3

    aget-object v3, p1, v1

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v4

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    return v2
.end method

.method private static m(I)Z
    .locals 1

    if-lez p0, :cond_0

    const/16 v0, 0xb

    if-gt p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a()I
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "IMAGE_STYLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public final b()Landroid/app/PendingIntent;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "TAP_ACTION"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/app/PendingIntent;

    return-object v0
.end method

.method public final c()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "ICON"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public final d()Landroid/graphics/drawable/Icon;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SMALL_IMAGE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/Icon;

    return-object v0
.end method

.method public final describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e(Ljava/lang/String;)Landroid/os/Parcelable;
    .locals 2

    :try_start_0
    iget-object v0, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1
    :try_end_0
    .catch Landroid/os/BadParcelableException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    const-string v0, "ComplicationData"

    const-string v1, "Could not unparcel ComplicationData. Provider apps must exclude wearable support complication classes from proguard."

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p1, 0x0

    return-object p1
.end method

.method public final f()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "LONG_TEXT"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public final g()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "LONG_TITLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public final h()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SHORT_TEXT"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public final i()Landroid/support/wearable/complications/ComplicationText;
    .locals 2

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    const-string v1, "SHORT_TITLE"

    invoke-static {v1, v0}, Landroid/support/wearable/complications/ComplicationData;->k(Ljava/lang/String;I)V

    invoke-virtual {p0, v1}, Landroid/support/wearable/complications/ComplicationData;->e(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/support/wearable/complications/ComplicationText;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget v0, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    iget-object v1, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ComplicationData{mType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mFields="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    iget p2, p0, Landroid/support/wearable/complications/ComplicationData;->b:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    iget-object p2, p0, Landroid/support/wearable/complications/ComplicationData;->c:Landroid/os/Bundle;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    return-void
.end method
