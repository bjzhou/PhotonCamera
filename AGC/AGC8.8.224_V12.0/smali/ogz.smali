.class public final Logz;
.super Ljava/lang/Object;

# interfaces
.implements Logy;


# static fields
.field public static final a:Lloz;

.field public static final b:Lloz;

.field public static final c:Lloz;

.field public static final d:Lloz;

.field public static final e:Lloz;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Llox;

    const-string v1, "com.google.android.apps.camera"

    invoke-static {v1}, Llol;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v1}, Llox;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Llox;->c()Llox;

    move-result-object v0

    invoke-virtual {v0}, Llox;->a()Llox;

    move-result-object v0

    invoke-virtual {v0}, Llox;->b()Llox;

    move-result-object v0

    const-string v1, "Primes__enable_battery_logging"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v1

    sput-object v1, Logz;->a:Lloz;

    const-string v1, "Primes__enable_crash_logging"

    invoke-virtual {v0, v1, v2}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v1

    sput-object v1, Logz;->b:Lloz;

    const-string v1, "Primes__enable_memory_logging"

    invoke-virtual {v0, v1, v2}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v1

    sput-object v1, Logz;->c:Lloz;

    const-string v1, "Primes__enable_package_metrics_logging"

    invoke-virtual {v0, v1, v2}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v1

    sput-object v1, Logz;->d:Lloz;

    const-string v1, "Primes__enable_timer_logging"

    invoke-virtual {v0, v1, v2}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v0

    sput-object v0, Logz;->e:Lloz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    sget-object v0, Logz;->a:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final b()Z
    .locals 1

    sget-object v0, Logz;->b:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final c()Z
    .locals 1

    sget-object v0, Logz;->c:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final d()Z
    .locals 1

    sget-object v0, Logz;->d:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Logz;->e:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
