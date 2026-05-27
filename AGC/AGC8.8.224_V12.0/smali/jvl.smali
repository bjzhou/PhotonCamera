.class final Ljvl;
.super Ljava/lang/Object;

# interfaces
.implements Lkai;


# instance fields
.field private final a:Lkai;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Ljuf;

.field private d:Ljuf;


# direct methods
.method public constructor <init>(Lkai;Ljava/util/concurrent/Executor;Ljuf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljvl;->a:Lkai;

    iput-object p2, p0, Ljvl;->b:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Ljvl;->c:Ljuf;

    invoke-virtual {p3}, Ljuf;->c()Ljuf;

    move-result-object p1

    iput-object p1, p0, Ljvl;->d:Ljuf;

    return-void
.end method


# virtual methods
.method public final bridge synthetic bn(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljvs;

    iget-object v0, p0, Ljvl;->d:Ljuf;

    iget-object v1, p0, Ljvl;->c:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    iput-object v1, p0, Ljvl;->d:Ljuf;

    iget-object v2, p0, Ljvl;->a:Lkai;

    iget-object v3, p0, Ljvl;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v2, v3}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljuf;->d(Lkad;)V

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method
