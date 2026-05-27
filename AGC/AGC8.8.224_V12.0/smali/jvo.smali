.class public final Ljvo;
.super Ljava/lang/Object;

# interfaces
.implements Ljvs;


# instance fields
.field private final a:Ljvs;


# direct methods
.method private constructor <init>(Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvo;->a:Ljvs;

    return-void
.end method

.method public static c(Ljvs;)Ljvs;
    .locals 1

    instance-of v0, p0, Ljvo;

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    new-instance v0, Ljvo;

    invoke-direct {v0, p0}, Ljvo;-><init>(Ljvs;)V

    return-object v0
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 2

    iget-object v0, p0, Ljvo;->a:Ljvs;

    new-instance v1, Ljvn;

    invoke-direct {v1, p2, p1}, Ljvn;-><init>(Ljava/util/concurrent/Executor;Lkai;)V

    new-instance p1, Ljwc;

    invoke-direct {p1}, Ljwc;-><init>()V

    invoke-interface {v0, v1, p1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    return-object p1
.end method

.method public final bm()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Ljvo;->a:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    const-string v0, "FilteredObs"

    invoke-static {v0}, Lmoz;->z(Ljava/lang/String;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ljvo;->a:Ljvs;

    invoke-virtual {v0, v1}, Lmqo;->a(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
