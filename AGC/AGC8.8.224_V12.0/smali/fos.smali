.class final Lfos;
.super Lipe;


# instance fields
.field final synthetic a:Lfou;


# direct methods
.method public constructor <init>(Lfou;)V
    .locals 0

    iput-object p1, p0, Lfos;->a:Lfou;

    invoke-direct {p0}, Lipe;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/PointF;)Z
    .locals 2

    iget-object p1, p0, Lfos;->a:Lfou;

    iget-boolean v0, p1, Lfou;->g:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    iget-object p1, p1, Lfou;->e:Lmrg;

    invoke-virtual {p1}, Lmrg;->b()J

    move-result-wide v0

    invoke-static {v0, v1}, Lj$/time/Duration;->ofNanos(J)Lj$/time/Duration;

    move-result-object p1

    sget-object v0, Lfou;->a:Lj$/time/Duration;

    invoke-virtual {p1, v0}, Lj$/time/Duration;->compareTo(Lj$/time/Duration;)I

    move-result p1

    const/4 v0, 0x1

    if-gez p1, :cond_1

    iget-object p1, p0, Lfos;->a:Lfou;

    iget-object p1, p1, Lfou;->c:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {p1, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_1
    iget-object p1, p0, Lfos;->a:Lfou;

    iget v1, p1, Lfou;->i:I

    invoke-virtual {p1, v1}, Lfou;->k(I)V

    return v0
.end method
