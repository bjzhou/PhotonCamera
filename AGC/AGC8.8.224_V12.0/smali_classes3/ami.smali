.class final Lami;
.super Lamm;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Z

.field final synthetic b:Lamj;


# direct methods
.method public constructor <init>(Lamj;)V
    .locals 0

    iput-object p1, p0, Lami;->b:Lamj;

    invoke-direct {p0}, Lamm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lami;->b:Lamj;

    invoke-virtual {v0}, Lamj;->a()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ladp; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Lamm;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    throw v0
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lami;->b:Lamj;

    iget-object v1, v0, Lamj;->a:Lami;

    if-ne v1, p0, :cond_1

    iget-boolean v1, v0, Lamk;->e:Z

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    const/4 v1, 0x0

    iput-object v1, v0, Lamj;->a:Lami;

    invoke-virtual {v0, p1}, Lamk;->g(Ljava/lang/Object;)V

    return-void

    :cond_1
    invoke-virtual {v0, p0}, Lamj;->d(Lami;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lami;->b:Lamj;

    invoke-virtual {v0, p0}, Lamj;->d(Lami;)V

    return-void
.end method

.method public final run()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lami;->a:Z

    iget-object v0, p0, Lami;->b:Lamj;

    invoke-virtual {v0}, Lamj;->b()V

    return-void
.end method
