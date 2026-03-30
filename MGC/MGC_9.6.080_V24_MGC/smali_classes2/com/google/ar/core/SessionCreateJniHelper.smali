.class final Lcom/google/ar/core/SessionCreateJniHelper;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static checkApkSignature(Landroid/content/Context;)Z
    .locals 9

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x80

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    goto :goto_b

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_23

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_5
    return p0

    nop

    :catch_0
    :goto_6
    goto/32 :goto_2a

    nop

    nop

    :goto_7
    new-instance v1, Landroid/content/pm/Signature;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v4, v3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    const-string v8, "Signature mismatch.  Expected \'"

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    if-nez v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    :goto_e
    invoke-virtual {v5, v1}, Landroid/content/pm/Signature;->equals(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v1, v2}, Landroid/content/pm/Signature;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_13
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_15
    const-string v2, "308203c7308202afa003020102021500dc286b43b4ea12039958a00a6655eb84720e46c9300d06092a864886f70d01010b05003074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f6964301e170d3137303830343136353333375a170d3437303830343136353333375a3074310b3009060355040613025553311330110603550408130a43616c69666f726e6961311630140603550407130d4d6f756e7461696e205669657731143012060355040a130b476f6f676c6520496e632e3110300e060355040b1307416e64726f69643110300e06035504031307416e64726f696430820122300d06092a864886f70d01010105000382010f003082010a02820101008998646f47fc333db09644c303104ed183e904e351152aa66a603b77f63389d45d6fcffae3c94fadf1f28038e265d697fea347327f9081a7f0b9074d5b148db5bf357c611a77f87f844a15068818bdcd5b21d187e93fa2551676170eedce04a150c35ec0a791eef507fa9b406573c36f6f207764842e5677e35a281a422659e91e26eb4fecfb053b5c936d0976c37f8757adb57a37953da5844ea350695854d343a61ad341b63a1c425d22855af7ebfee018e1736cee98536be5b9947f288e2a26f99eb9f91b5de93fecc513019d2e90f12b38610d1f02eaa81deca4ce91c19cbce36d6c3025ce2432b3d178616beafaf437c08451bc469c6bc6f4517a714a5b0203010001a350304e300c0603551d13040530030101ff301d0603551d0e0416041419a864c0f2618c67c803a23da909bc70521f269b301f0603551d2304183016801419a864c0f2618c67c803a23da909bc70521f269b300d06092a864886f70d01010b050003820101005403fc56fdefc440376a0337815002b96a15bffc2fe42de6c58f52fae4d80652e3704455b885409eef81ffbb4c44dba104b6b8e24c9e2e0e7a04338ee73baa5b71bfb4488f8e04bef3d0eaf7d43aa42b03b278c33cc1f0dd3802571624baa161d851fab37db4bc92b9094b6885dff62b400ecd81f069d56a1be1db46d8198c50c9628cdb6e38686ef640fd386775f50376f957e24ea45ed1942968f20c82f189607fdb22f11cfdfd0760a77a60ceb3416cfb3f48f13f9f83f3834a01001750a7c78bc1fd81f0b53a7c41dcba9f5a0118259d083c32bb9ebb84d645d6f6b9c31923d8ab70e7f0a25940ecc9f4945144419f86e8c421d3b99774f4b8f3d09262e7"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, p0, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_17
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    if-lt v4, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v2, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v7, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    const-string v1, "com.google.ar.core"

    nop

    nop

    nop

    nop

    const/16 v2, 0x40

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    aget-object v5, v0, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Lcom/google/android/apps/camera/imax/cyclops/metadata/vUwG/ZKDLyMOUoobPIS;->ZQriWIQF:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v5}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

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

    :goto_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_25
    return p0

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_27
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    :goto_29
    const-string v5, "\'"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 p0, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    const-string v6, "ARCore-SessionCreateJni"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2c
    const v1, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v6, "\' got \'"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroid/content/pm/Signature;->toCharsString()Ljava/lang/String;

    move-result-object v6

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_6

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method static getArCoreApkVersionCode(Landroid/content/Context;)I
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_4

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "ARCore-SessionCreateJni"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    const-string v1, "Could not load application package metadata"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    :goto_d
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    nop

    const-string v0, "com.google.ar.core"

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    iget p0, p0, Landroid/content/pm/PackageInfo;->versionCode:I

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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
.end method

.method static getMinApkVersion(Landroid/content/Context;)I
    .locals 3

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "com.google.ar.core.min_apk_version"

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    nop

    const/16 v2, 0x80

    nop

    invoke-virtual {v1, p0, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    nop

    nop

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    nop

    nop

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    const-string v0, "Application manifest must contain meta-data com.google.ar.core.min_apk_version"

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    :goto_3
    throw v0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_8
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    const v1, 0x15

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

    :goto_a
    const v0, 0xb

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "Could not load application package metadata"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    goto/32 :goto_2

    nop
.end method
