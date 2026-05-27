.class public final Logw;
.super Ljava/lang/Object;

# interfaces
.implements Logv;


# static fields
.field public static final a:Lloz;

.field public static final b:Lloz;

.field public static final c:Lloz;

.field public static final d:Lloz;

.field public static final e:Lloz;


# direct methods
.method static constructor <clinit>()V
    .locals 6

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

    const-string v1, "InAppUpdate__chip_delay_hours"

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Llox;->e(Ljava/lang/String;J)Lloz;

    move-result-object v1

    sput-object v1, Logw;->a:Lloz;

    const-string v1, "InAppUpdate__chip_dismissable"

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4}, Llox;->g(Ljava/lang/String;Z)Lloz;

    move-result-object v1

    sput-object v1, Logw;->b:Lloz;

    const-string v1, "InAppUpdate__chip_dismissal_limit"

    const-wide/16 v4, 0x2

    invoke-virtual {v0, v1, v4, v5}, Llox;->e(Ljava/lang/String;J)Lloz;

    move-result-object v1

    sput-object v1, Logw;->c:Lloz;

    const-string v1, "InAppUpdate__chip_min_staleness_days"

    invoke-virtual {v0, v1, v2, v3}, Llox;->e(Ljava/lang/String;J)Lloz;

    move-result-object v1

    sput-object v1, Logw;->d:Lloz;

    const-string v1, "InAppUpdate__chip_timeout_seconds"

    const-wide/16 v2, 0xa

    invoke-virtual {v0, v1, v2, v3}, Llox;->e(Ljava/lang/String;J)Lloz;

    move-result-object v0

    sput-object v0, Logw;->e:Lloz;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()J
    .locals 2

    sget-object v0, Logw;->a:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()J
    .locals 2

    sget-object v0, Logw;->c:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final c()J
    .locals 2

    sget-object v0, Logw;->d:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final d()J
    .locals 2

    sget-object v0, Logw;->e:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final e()Z
    .locals 1

    sget-object v0, Logw;->b:Lloz;

    invoke-virtual {v0}, Lloz;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
