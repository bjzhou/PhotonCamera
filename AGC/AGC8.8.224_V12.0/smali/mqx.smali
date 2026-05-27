.class public final Lmqx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ljava/util/Random;

.field public static final b:Ljava/lang/ThreadLocal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmqv;

    invoke-direct {v0}, Lmqv;-><init>()V

    sput-object v0, Lmqx;->a:Ljava/util/Random;

    invoke-static {}, Lmqx;->a()Ljava/security/SecureRandom;

    new-instance v0, Lmqw;

    invoke-direct {v0}, Lmqw;-><init>()V

    new-instance v0, Lmqu;

    invoke-direct {v0}, Lmqu;-><init>()V

    sput-object v0, Lmqx;->b:Ljava/lang/ThreadLocal;

    return-void
.end method

.method public static a()Ljava/security/SecureRandom;
    .locals 1

    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextLong()J

    return-object v0
.end method
