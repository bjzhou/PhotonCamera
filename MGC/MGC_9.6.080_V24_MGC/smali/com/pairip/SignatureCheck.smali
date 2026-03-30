.class public Lcom/pairip/SignatureCheck;
.super Ljava/lang/Object;
.source "SignatureCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pairip/SignatureCheck$SignatureTamperedException;
    }
.end annotation


# static fields
.field private static final ALLOWLISTED_SIG:Ljava/lang/String; = "Vn3kj4pUblROi2S+QfRRL9nhsaO2uoHQg6+dpEtxdTE="

.field private static final TAG:Ljava/lang/String; = "SignatureCheck"

.field private static expectedLegacyUpgradedSignature:Ljava/lang/String; = "8P1sW0EPJcslw7UzRsiXL64w+O50Ed+RBICtay1g24M="

.field private static expectedSignature:Ljava/lang/String; = "8P1sW0EPJcslw7UzRsiXL64w+O50Ed+RBICtay1g24M="

.field private static expectedTestSignature:Ljava/lang/String; = "GXWy8XF3vIml3/MfnmSmyuKBpT3B0dWbHRR/4cgq+gA="


# direct methods
.method private constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public static verifyIntegrity(Landroid/content/Context;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    return-void

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    const-string v0, "Vn3kj4pUblROi2S+QfRRL9nhsaO2uoHQg6+dpEtxdTE="

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    const/16 v1, 0x40

    nop

    nop

    nop

    invoke-virtual {v0, v2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    nop

    nop

    nop

    nop

    iget-wide v0, v2, Landroid/content/pm/PackageInfo;->firstInstallTime:J

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    nop

    const-string v1, "bFVwVGk="

    nop

    nop

    nop

    invoke-static {v1, v0, p0}, Lcom/a;->ab(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    nop

    nop

    nop

    const-string v0, "SHA-256"

    nop

    nop

    nop

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    nop

    nop

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    aget-object p0, p0, v1

    nop

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    nop

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    nop

    nop

    const/4 v0, 0x2

    nop

    nop

    nop

    invoke-static {p0, v0}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4
    const-string v0, "Signature check ok"

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

    :goto_5
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0xd

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string v0, "Apk signature is invalid."

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_c
    throw p0

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lcom/pairip/SignatureCheck;->expectedTestSignature:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x9

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1a

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    :goto_16
    invoke-static {p0}, Lcom/pairip/SignatureCheck;->verifySignatureMatches(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0, v0}, Lcom/pairip/SignatureCheck$SignatureTamperedException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance p0, Lcom/pairip/SignatureCheck$SignatureTamperedException;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p0, 0x0

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    :goto_1b
    goto/16 :goto_d

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    nop

    :goto_1d
    const-string p0, "SignatureCheck"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop
.end method

.method public static verifySignatureMatches(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "signature"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_1
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

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

    :goto_2
    sget-object v0, Lcom/pairip/SignatureCheck;->expectedSignature:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lcom/pairip/SignatureCheck;->expectedLegacyUpgradedSignature:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
