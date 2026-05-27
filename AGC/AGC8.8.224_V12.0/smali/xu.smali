.class public final Lxu;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/Object;

.field public b:Lxy;

.field public c:Lxz;

.field private d:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lxz;->h()Lxz;

    move-result-object v0

    iput-object v0, p0, Lxu;->c:Lxz;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lxu;->d:Z

    iget-object v1, p0, Lxu;->b:Lxy;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, v1, Lxy;->b:Lxt;

    invoke-virtual {v1, p1}, Lxt;->f(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    const/4 p1, 0x0

    iput-object p1, p0, Lxu;->a:Ljava/lang/Object;

    iput-object p1, p0, Lxu;->b:Lxy;

    iput-object p1, p0, Lxu;->c:Lxz;

    :cond_1
    return v0
.end method

.method protected final finalize()V
    .locals 5

    iget-object v0, p0, Lxu;->b:Lxy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lxy;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Lxv;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The completer object was garbage collected - this future would otherwise never complete. The tag was: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lxu;->a:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lxv;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lxy;->a(Ljava/lang/Throwable;)V

    :cond_0
    iget-boolean v0, p0, Lxu;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lxu;->c:Lxz;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lxt;->f(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method
