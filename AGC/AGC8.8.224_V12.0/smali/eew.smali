.class public final Leew;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Lken;

.field public final b:Lkfj;

.field private final c:Ljvs;

.field private final d:Ljvs;

.field private final e:Ljuf;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lken;Ljava/util/Map;Ljvs;Ljvs;Ljuf;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leew;->a:Lken;

    sget-object p1, Lgml;->b:Lgml;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Leew;->b:Lkfj;

    iput-object p3, p0, Leew;->c:Ljvs;

    iput-object p4, p0, Leew;->d:Ljvs;

    iput-object p5, p0, Leew;->e:Ljuf;

    iput-object p6, p0, Leew;->f:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final a(Ljvs;ZLjava/lang/String;)V
    .locals 1

    iget-object p3, p0, Leew;->e:Ljuf;

    new-instance v0, Leev;

    invoke-direct {v0, p0, p2}, Leev;-><init>(Leew;Z)V

    iget-object p2, p0, Leew;->f:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljuf;->d(Lkad;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Leew;->c:Ljvs;

    const/4 v1, 0x1

    const-string v2, "standby"

    invoke-direct {p0, v0, v1, v2}, Leew;->a(Ljvs;ZLjava/lang/String;)V

    iget-object v0, p0, Leew;->d:Ljvs;

    const/4 v1, 0x0

    const-string v2, "delayed"

    invoke-direct {p0, v0, v1, v2}, Leew;->a(Ljvs;ZLjava/lang/String;)V

    return-void
.end method
