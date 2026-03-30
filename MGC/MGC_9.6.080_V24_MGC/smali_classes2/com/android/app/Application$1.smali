.class Lcom/android/app/Application$1;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/app/Application;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$fakeSignature:Landroid/content/pm/Signature;

.field final synthetic val$originalCreator:Landroid/os/Parcelable$Creator;


# direct methods
.method constructor <init>(Landroid/os/Parcelable$Creator;Landroid/content/pm/Signature;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Lcom/android/app/Application$1;->val$fakeSignature:Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/android/app/Application$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;
    .locals 8

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iget-object v6, p0, Lcom/android/app/Application$1;->val$fakeSignature:Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    array-length v3, v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    array-length v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_4

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v3

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_7
    new-array v0, v5, [Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v3, "jtHZRhOG25OM0NMhitHJwc_QQbzW2oHW04j204nQ"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "iNrJdQyE_NKBy9g7m8zuhtjTCp3M"

    nop

    nop

    invoke-static {v4}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    new-array v6, v5, [Ljava/lang/Class;

    nop

    nop

    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    const-string v4, "jtHZRhOG25OM0NMhitHJwc_QQb_e3oTe2or204nQ"

    nop

    nop

    invoke-static {v4}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    const-string v6, "nNbaWhWB2PSB2dI="

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    nop

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    new-array v6, v5, [Ljava/lang/Object;

    nop

    nop

    nop

    invoke-virtual {v3, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    check-cast v3, [Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_8
    const v0, 0x17

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ge v0, v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v0, v3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-gtz v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    :goto_d
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "jNDQGhuA0NqD2pM0gdvPgNbZQajQ0ojT2Kze0IrN3A=="

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_2
    :try_start_1
    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    move-object v2, v3

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_16
    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_18
    aput-object v6, v3, v5

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1b
    aput-object v3, v0, v5

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1e
    if-gtz v3, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_6
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    goto :goto_20

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    :goto_20
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    goto :goto_22

    nop

    :catch_2
    move-exception v3

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v3, p0, Lcom/android/app/Application$1;->val$fakeSignature:Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_7

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_31

    nop

    :goto_25
    return-object v1

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_29

    nop

    nop

    nop

    :catch_3
    move-exception v3

    nop

    nop

    nop

    nop

    :goto_29
    :try_start_2
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    nop

    invoke-static {v0}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    iput-object v0, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Landroid/content/pm/PackageInfo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p0, Lcom/android/app/Application$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2d
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2e
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/16 v4, 0x1c

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ge v3, v4, :cond_8

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_8
    :try_start_3
    const-string v3, "jtHZRhOG25OOz817rs_Ng9beDpvW0oE="

    nop

    invoke-static {v3}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    nop

    nop

    nop

    const-string v6, "iNrJZA6A3NiczPM0gto="

    nop

    invoke-static {v6}, Lcom/android/app/Application;->ca(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    new-array v7, v5, [Ljava/lang/Class;

    nop

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x0

    nop

    new-array v7, v5, [Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v6, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    :goto_33
    iget-object v3, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object p1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/app/Application$1;->createFromParcel(Landroid/os/Parcel;)Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

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

    nop
.end method

.method public newArray(I)[Landroid/content/pm/PackageInfo;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    check-cast v0, [Landroid/content/pm/PackageInfo;

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/android/app/Application$1;->val$originalCreator:Landroid/os/Parcelable$Creator;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->newArray(I)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/app/Application$1;->newArray(I)[Landroid/content/pm/PackageInfo;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop
.end method
