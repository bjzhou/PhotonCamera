.class public final Lohv;
.super Ljava/lang/Object;

# interfaces
.implements Lohu;


# static fields
.field public static final a:Llqb;

.field public static final b:Llqb;

.field public static final c:Llqb;

.field public static final d:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 11

    sget-object v0, Lmza;->a:Lmza;

    const-string v0, "com.google.android.libraries.performance.primes"

    const-string v1, "CLIENT_LOGGING_PROD"

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v8

    :try_start_0
    const-string v1, "45390627"

    const-string v2, "CAAQAxgGIJBOLQrXIzw"

    const/4 v9, 0x3

    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lliz;->f:Lliz;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    const/4 v10, 0x0

    invoke-static {v3, v2, v10, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Lliz;

    sget-object v3, Llqd;->i:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohv;->a:Llqb;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    :try_start_1
    const-string v1, "EAAYAg"

    invoke-static {v1, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    sget-object v2, Lozu;->d:Lozu;

    array-length v3, v1

    sget-object v4, Lnwh;->a:Lnwh;

    invoke-static {v2, v1, v10, v3, v4}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v1

    invoke-static {v1}, Lnws;->ae(Lnws;)V

    check-cast v1, Lozu;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    :try_start_2
    const-string v1, "45376983"

    const-string v2, "CAEQZBj0AyDoBw"

    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Llji;->e:Llji;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    invoke-static {v3, v2, v10, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Llji;

    sget-object v3, Llqd;->j:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohv;->b:Llqb;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    const-string v1, "45382913"

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Lohv;->c:Llqb;

    :try_start_3
    const-string v1, "45371370"

    const-string v2, "CJYBEMgB"

    invoke-static {v2, v9}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v2

    sget-object v3, Lljh;->c:Lljh;

    array-length v4, v2

    sget-object v5, Lnwh;->a:Lnwh;

    invoke-static {v3, v2, v10, v4, v5}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v2

    invoke-static {v2}, Lnws;->ae(Lnws;)V

    check-cast v2, Lljh;

    sget-object v3, Llqd;->k:Llqd;

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v4, v0

    move-object v5, v8

    invoke-static/range {v1 .. v7}, Llqf;->d(Ljava/lang/String;Ljava/lang/Object;Llqe;Ljava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Lohv;->d:Llqb;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

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

    :catch_3
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
.method public final a(Landroid/content/Context;)Lliz;
    .locals 1

    sget-object v0, Lohv;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lliz;

    return-object p1
.end method

.method public final b(Landroid/content/Context;)Lljh;
    .locals 1

    sget-object v0, Lohv;->d:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lljh;

    return-object p1
.end method

.method public final c(Landroid/content/Context;)Llji;
    .locals 1

    sget-object v0, Lohv;->b:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Llji;

    return-object p1
.end method

.method public final d(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Lohv;->c:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
