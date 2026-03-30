.class public final Ljro;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/nio/charset/Charset;

.field private static d:Ljro;


# instance fields
.field public final b:Ljava/security/MessageDigest;

.field public final c:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const-string v0, "UTF-8"

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    sput-object v0, Ljro;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/security/MessageDigest;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p1, p0, Ljro;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Ljro;->b:Ljava/security/MessageDigest;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a()Ljro;
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_0
    :try_start_0
    const-string v0, "SHA-1"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    nop

    nop

    new-instance v1, Ljro;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ljro;-><init>(Ljava/security/MessageDigest;)V

    sput-object v1, Ljro;->d:Ljro;

    nop

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_1

    nop

    nop

    :goto_3
    const v0, 0xa

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

    :goto_4
    return-object v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    new-instance v1, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v1

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    :goto_a
    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Ljro;->d:Ljro;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Ljro;->d:Ljro;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    const-string v2, "Cannot initialize file name hasher"

    nop

    goto/32 :goto_a

    nop

    nop
.end method
