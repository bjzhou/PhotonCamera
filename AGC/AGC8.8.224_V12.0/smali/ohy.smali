.class public final Lohy;
.super Ljava/lang/Object;

# interfaces
.implements Lohx;


# static fields
.field public static final a:Llqb;

.field public static final b:Llqb;

.field public static final c:Llqb;

.field public static final d:Llqb;

.field public static final e:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Lmza;->a:Lmza;

    const-string v0, "com.google.android.libraries.performance.primes"

    const-string v1, "CLIENT_LOGGING_PROD"

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v8

    const-string v1, "45374182"

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohy;->a:Llqb;

    const-string v1, "25"

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohy;->b:Llqb;

    :try_start_0
    const-string v1, "40"

    const-string v2, "Ci1jb20uZ29vZ2xlLmFuZHJvaWQucHJpbWVzLWphbmstJVBBQ0tBR0VfTkFNRSUSIwgCEh9KPCVFVkVOVF9OQU1FJT4jbWlzc2VkQXBwRnJhbWVzEh8IAxIbSjwlRVZFTlRfTkFNRSU+I3RvdGFsRnJhbWVzEiYIBRIiSjwlRVZFTlRfTkFNRSU+I21heEZyYW1lVGltZU1pbGxpcw"

    const/4 v9, 0x3

    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Llkl;->d:Llkl;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    const/4 v10, 0x0

    invoke-static {v3, v2, v10, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Llkl;

    sget-object v3, Llqd;->l:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohy;->c:Llqb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v1, "13"

    const-string v2, "EAAYAg"

    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lozu;->d:Lozu;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    invoke-static {v3, v2, v10, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Lozu;

    sget-object v3, Llqd;->m:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohy;->d:Llqb;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v1, "45351799"

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohy;->e:Llqb;

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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Llkl;
    .locals 1

    sget-object v0, Lohy;->c:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llkl;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Lozu;
    .locals 1

    sget-object v0, Lohy;->d:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lozu;

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lohy;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lohy;->b:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final e(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lohy;->e:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
