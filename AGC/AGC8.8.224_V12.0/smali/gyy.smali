.class abstract Lgyy;
.super Ljava/lang/Object;

# interfaces
.implements Ljwb;


# instance fields
.field protected final a:Lgzi;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lgzi;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgyy;->a:Lgzi;

    iput-object p2, p0, Lgyy;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Lkai;Ljava/util/concurrent/Executor;)Lkad;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lgyx;

    invoke-direct {v0, p0, p1, p2}, Lgyx;-><init>(Lgyy;Lkai;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Lgyy;->a:Lgzi;

    invoke-virtual {p1, v0}, Lgzi;->f(Lgyo;)V

    iget-object p1, p0, Lgyy;->b:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lgyx;->a(Ljava/lang/String;)V

    return-object v0
.end method

.method public final bm()Ljava/lang/Object;
    .locals 3

    invoke-virtual {p0}, Lgyy;->c()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    iget-object v1, p0, Lgyy;->b:Ljava/lang/String;

    const-string v2, "Null value for setting: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract c()Ljava/lang/Object;
.end method
