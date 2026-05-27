.class final Lija;
.super Ljvd;


# instance fields
.field final synthetic a:Lgeh;


# direct methods
.method public constructor <init>(Lgeh;)V
    .locals 0

    iput-object p1, p0, Lija;->a:Lgeh;

    invoke-direct {p0}, Ljvd;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ligo;)Z
    .locals 2

    iget-object v0, p0, Lija;->a:Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lija;->a:Lgeh;

    invoke-virtual {p1}, Ligo;->d()Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v0, p1}, Lgeh;->H(Landroid/graphics/PointF;)Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lija;->a:Lgeh;

    invoke-interface {p1}, Lgeh;->M()V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method
