.class public final Lsvn;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Ljava/nio/charset/Charset;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    const-string v0, "UTF-8"

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

    :goto_3
    sput-object v0, Lsvn;->a:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/Long;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3
    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    :goto_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    :goto_e
    :try_start_0
    const-string v0, "MD5"

    nop

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    sget-object v1, Lsvn;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object p0

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    move-result-object p0

    nop

    nop

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v0

    nop

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method
