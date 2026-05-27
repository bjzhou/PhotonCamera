.class public final Lohs;
.super Ljava/lang/Object;

# interfaces
.implements Lohr;


# static fields
.field public static final a:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const-string v0, "CAASABgAIAAoADAAOABAAA"

    sget-object v1, Lmza;->a:Lmza;

    const-string v5, "com.google.android.libraries.performance.primes"

    const-string v1, "CLIENT_LOGGING_PROD"

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v6

    :try_start_0
    const-string v2, "15"

    const-string v1, "EAAYAg"

    const/4 v9, 0x3

    invoke-static {v1, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v3, Lozu;->d:Lozu;

    array-length v4, v1

    sget-object v7, Lnwh;->a:Lnwh;

    const/4 v10, 0x0

    invoke-static {v3, v1, v10, v4, v7}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v1

    invoke-static {v1}, Lnws;->ae(Lnws;)V

    move-object v3, v1

    check-cast v3, Lozu;

    sget-object v4, Llqd;->h:Llqd;

    const/4 v7, 0x1

    const/4 v8, 0x1

    invoke-static/range {v2 .. v8}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohs;->a:Llqb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lliu;->a:Lliu;

    array-length v3, v1

    sget-object v4, Lnwh;->a:Lnwh;

    invoke-static {v2, v1, v10, v3, v4}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v1

    invoke-static {v1}, Lnws;->ae(Lnws;)V

    check-cast v1, Lliu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-static {v0, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v0

    sget-object v1, Lliu;->a:Lliu;

    array-length v2, v0

    sget-object v3, Lnwh;->a:Lnwh;

    invoke-static {v1, v0, v10, v2, v3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lliu;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_2
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

    sget-object v0, Lohs;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lozu;

    return-object p1
.end method
