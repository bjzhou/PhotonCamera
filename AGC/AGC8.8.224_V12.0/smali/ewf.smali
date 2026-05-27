.class public final Lewf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/legacy/lightcycle/camera/CameraUtility"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lewf;->a:Lnak;

    return-void
.end method

.method public static a(Ldhi;Lbnp;)Lbnm;
    .locals 1

    sget-object v0, Ldia;->c:Ldhj;

    invoke-interface {p0, v0}, Ldhi;->l(Ldhj;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lewn;->a:Lewm;

    iget-boolean p0, p0, Lewm;->b:Z

    :cond_0
    sget-object p0, Lbnm;->b:Lbnm;

    invoke-virtual {p1, p0}, Lbnp;->f(Lbnm;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-object p0, Lbnm;->b:Lbnm;

    return-object p0

    :cond_1
    sget-object p0, Lbnm;->a:Lbnm;

    return-object p0
.end method
