.class abstract Lfqx;
.super Ljava/lang/Object;


# instance fields
.field public a:Z

.field public b:Lmqp;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfqx;->a:Z

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lfqx;->b:Lmqp;

    return-void
.end method


# virtual methods
.method final a()Lfqz;
    .locals 1

    instance-of v0, p0, Lfqz;

    invoke-static {v0}, Lmoz;->e(Z)V

    move-object v0, p0

    check-cast v0, Lfqz;

    return-object v0
.end method

.method final b()Lfra;
    .locals 1

    instance-of v0, p0, Lfra;

    invoke-static {v0}, Lmoz;->e(Z)V

    move-object v0, p0

    check-cast v0, Lfra;

    return-object v0
.end method

.method public abstract c()Lmym;
.end method

.method final d()Z
    .locals 1

    invoke-virtual {p0}, Lfqx;->e()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Z
.end method
