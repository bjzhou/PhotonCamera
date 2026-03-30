.class public final Lrtb;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/security/SecureRandom;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lrsz;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Lrta;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Lrsy;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lrta;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    sput-object v0, Lrtb;->a:Ljava/security/SecureRandom;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lrsz;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sput-object v0, Lrtb;->b:Ljava/lang/ThreadLocal;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {}, Lrtb;->a()Ljava/security/SecureRandom;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    new-instance v0, Lrsy;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static a()Ljava/security/SecureRandom;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/security/SecureRandom;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method
