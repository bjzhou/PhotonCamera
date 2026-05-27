.class public abstract Lham;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field private final b:Ljava/lang/String;

.field private final c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/settings/upgrader/SettingsUpgrader"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lham;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lham;->b:Ljava/lang/String;

    iput p2, p0, Lham;->c:I

    return-void
.end method

.method protected static final c(Landroid/content/SharedPreferences;Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    sget-object v2, Lham;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v3, "error reading old value, removing and returning default"

    const/16 v4, 0xd47

    invoke-static {v2, v3, v4, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :goto_0
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-object v0
.end method


# virtual methods
.method protected abstract a(Lgzi;I)V
.end method

.method protected b(Lgzi;)I
    .locals 2

    iget-object v0, p0, Lham;->b:Ljava/lang/String;

    iget v1, p0, Lham;->c:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lgzi;->b(Ljava/lang/String;Ljava/lang/Integer;)I

    move-result p1

    return p1
.end method

.method public final d(Lgzi;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0, p1}, Lham;->b(Lgzi;)I

    move-result v0

    iget v1, p0, Lham;->c:I

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, p1, v0}, Lham;->a(Lgzi;I)V

    :cond_0
    iget-object v0, p0, Lham;->b:Ljava/lang/String;

    iget v1, p0, Lham;->c:I

    invoke-virtual {p1, v0, v1}, Lgzi;->i(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    sget-object v0, Lham;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "exception during upgrade"

    const/16 v2, 0xd48

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    throw p1
.end method
