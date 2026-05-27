.class public final Liwf;
.super Ljava/lang/Object;


# instance fields
.field public final a:F

.field public final b:F

.field public final c:Z

.field public d:I

.field public final e:Landroid/view/View$OnGenericMotionListener;

.field public final f:Les;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Liwf;->d:I

    new-instance v0, Liwe;

    invoke-direct {v0, p0}, Liwe;-><init>(Liwf;)V

    iput-object v0, p0, Liwf;->f:Les;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.rotaryencoder.lowres"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Liwf;->c:Z

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-static {v0}, Lafr;->a(Landroid/view/ViewConfiguration;)F

    move-result v0

    iput v0, p0, Liwf;->a:F

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    invoke-static {p1}, Lafr;->b(Landroid/view/ViewConfiguration;)F

    move-result p1

    iput p1, p0, Liwf;->b:F

    new-instance p1, Liwd;

    invoke-direct {p1, p0}, Liwd;-><init>(Liwf;)V

    iput-object p1, p0, Liwf;->e:Landroid/view/View$OnGenericMotionListener;

    return-void
.end method
