.class public final synthetic Lgfc;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljvs;

.field public final synthetic b:Ljvs;

.field public final synthetic c:Ljwb;

.field public final synthetic d:Z

.field public final synthetic e:Ldol;


# direct methods
.method public synthetic constructor <init>(Ljvs;Ljvs;Ljwb;ZLdol;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgfc;->a:Ljvs;

    iput-object p2, p0, Lgfc;->b:Ljvs;

    iput-object p3, p0, Lgfc;->c:Ljwb;

    iput-boolean p4, p0, Lgfc;->d:Z

    iput-object p5, p0, Lgfc;->e:Ldol;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lgfc;->a:Ljvs;

    iget-object v1, p0, Lgfc;->b:Ljvs;

    iget-object v2, p0, Lgfc;->c:Ljwb;

    iget-boolean v3, p0, Lgfc;->d:Z

    iget-object v4, p0, Lgfc;->e:Ldol;

    check-cast p1, Lgeh;

    sget-object v5, Lgff;->a:Lnak;

    invoke-interface {p1}, Lgeh;->I()Ljuf;

    move-result-object v5

    new-instance v6, Lgdl;

    const/16 v7, 0x9

    invoke-direct {v6, p1, v7}, Lgdl;-><init>(Lgeh;I)V

    sget-object v7, Lnnv;->a:Lnnv;

    invoke-interface {v0, v6, v7}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljuf;->d(Lkad;)V

    new-instance v0, Lgey;

    const/4 v6, 0x1

    invoke-direct {v0, v2, v3, p1, v6}, Lgey;-><init>(Ljwb;ZLgeh;I)V

    sget-object v6, Lnnv;->a:Lnnv;

    invoke-interface {v1, v0, v6}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljuf;->d(Lkad;)V

    invoke-interface {v4}, Ldol;->a()Ljvs;

    move-result-object v0

    invoke-static {v0}, Ljvo;->c(Ljvs;)Ljvs;

    move-result-object v0

    new-instance v1, Lgey;

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, p1, v4}, Lgey;-><init>(Ljwb;ZLgeh;I)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
