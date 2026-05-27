.class public final Loit;
.super Ljava/lang/Object;

# interfaces
.implements Lois;


# static fields
.field public static final a:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lmza;->a:Lmza;

    const-string v4, "com.google.android.libraries.performance.primes"

    const-string v0, "CLIENT_LOGGING_PROD"

    invoke-static {v0}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v5

    :try_start_0
    const-string v1, "10"

    const-string v0, "EOgHGAQ"

    const/4 v2, 0x3

    invoke-static {v0, v2}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v2, Lozu;->d:Lozu;

    array-length v3, v0

    sget-object v6, Lnwh;->a:Lnwh;

    const/4 v7, 0x0

    invoke-static {v2, v0, v7, v3, v6}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    move-object v2, v0

    check-cast v2, Lozu;

    sget-object v3, Llqd;->s:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Loit;->a:Llqb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Lozu;
    .locals 1

    sget-object v0, Loit;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lozu;

    return-object p1
.end method
