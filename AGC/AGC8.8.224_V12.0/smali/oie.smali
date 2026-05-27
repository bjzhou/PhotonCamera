.class public final Loie;
.super Ljava/lang/Object;

# interfaces
.implements Loid;


# static fields
.field public static final a:Llqb;

.field public static final b:Llqb;

.field public static final c:Llqb;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    sget-object v0, Lmza;->a:Lmza;

    const-string v0, "com.google.android.libraries.performance.primes"

    const-string v1, "CLIENT_LOGGING_PROD"

    invoke-static {v1}, Lmwn;->H(Ljava/lang/Object;)Lmwn;

    move-result-object v7

    const-string v1, "45359255"

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v3, v0

    move-object v4, v7

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Loie;->a:Llqb;

    const-string v1, "45378726"

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v1

    sput-object v1, Loie;->b:Llqb;

    const-string v1, "36"

    const/4 v2, 0x1

    invoke-static/range {v1 .. v6}, Llqf;->c(Ljava/lang/String;ZLjava/lang/String;Ljava/util/Set;ZZ)Llqb;

    move-result-object v0

    sput-object v0, Loie;->c:Llqb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Loie;->a:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final b(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Loie;->b:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method public final c(Landroid/content/Context;)Z
    .locals 1

    sget-object v0, Loie;->c:Llqb;

    invoke-virtual {v0, p1}, Llqb;->b(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method
